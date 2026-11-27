import { GetItemCommand } from "@aws-sdk/client-dynamodb";
import { GetFaceLivenessSessionResultsCommand } from "@aws-sdk/client-rekognition";
import type { Schema } from "../../data/resource";
import { callerOf, dynamodb, rekognition, sessionsTable } from "../sessions";

// Backs `getLivenessResult`: returns the verdict only to the session creator.
export const handler: Schema["getLivenessResult"]["functionHandler"] = async (
  event,
) => {
  const owner = callerOf(event.identity);
  const { sessionId } = event.arguments;
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
  return { status: Status!, confidence: Confidence ?? null };
};
