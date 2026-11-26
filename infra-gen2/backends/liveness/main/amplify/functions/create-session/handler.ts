import { PutItemCommand } from "@aws-sdk/client-dynamodb";
import { CreateFaceLivenessSessionCommand } from "@aws-sdk/client-rekognition";
import type { Schema } from "../../data/resource";
import {
  callerOf,
  dynamodb,
  recordTtlSeconds,
  rekognition,
  sessionsTable,
} from "../sessions";

// Backs `createLivenessSession`: creates a session and records its creator.
export const handler: Schema["createLivenessSession"]["functionHandler"] =
  async (event) => {
    const owner = callerOf(event.identity);
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
    return { sessionId: SessionId!, region: process.env.AWS_REGION! };
  };
