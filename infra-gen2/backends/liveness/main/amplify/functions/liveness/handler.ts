import {
  DynamoDBClient,
  GetItemCommand,
  PutItemCommand,
} from "@aws-sdk/client-dynamodb";
import {
  CreateFaceLivenessSessionCommand,
  GetFaceLivenessSessionResultsCommand,
  RekognitionClient,
} from "@aws-sdk/client-rekognition";
import type {
  AppSyncIdentityCognito,
  AppSyncResolverEvent,
} from "aws-lambda";

const rekognition = new RekognitionClient();
const dynamodb = new DynamoDBClient();
const sessionsTable = process.env.SESSIONS_TABLE_NAME;

// Sessions expire after a few minutes; keep the owner record a bit longer.
const recordTtlSeconds = 24 * 60 * 60;

type Arguments = { sessionId?: string };

// Backs the `createLivenessSession` and `getLivenessResult` queries. Each
// session is recorded with the user who created it, and only that user can
// read its result.
export const handler = async (event: AppSyncResolverEvent<Arguments>) => {
  const owner = (event.identity as AppSyncIdentityCognito | null)?.sub;
  if (!owner) {
    throw new Error("Unauthorized");
  }
  switch (event.info.fieldName) {
    case "createLivenessSession": {
      const { SessionId } = await rekognition.send(
        new CreateFaceLivenessSessionCommand({}),
      );
      await dynamodb.send(
        new PutItemCommand({
          TableName: sessionsTable,
          Item: {
            sessionId: { S: SessionId! },
            owner: { S: owner },
            expiresAt: {
              N: String(Math.floor(Date.now() / 1000) + recordTtlSeconds),
            },
          },
        }),
      );
      return { sessionId: SessionId, region: process.env.AWS_REGION };
    }
    case "getLivenessResult": {
      const sessionId = event.arguments.sessionId!;
      const { Item } = await dynamodb.send(
        new GetItemCommand({
          TableName: sessionsTable,
          Key: { sessionId: { S: sessionId } },
          ConsistentRead: true,
        }),
      );
      if (Item?.owner?.S !== owner) {
        // Same error for unknown and foreign sessions.
        throw new Error("Session not found");
      }
      const { Status, Confidence } = await rekognition.send(
        new GetFaceLivenessSessionResultsCommand({ SessionId: sessionId }),
      );
      // Reference and audit images are deliberately not returned.
      return { status: Status, confidence: Confidence };
    }
    default:
      throw new Error(`Unknown field ${event.info.fieldName}`);
  }
};
