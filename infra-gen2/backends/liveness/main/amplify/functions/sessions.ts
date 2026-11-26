import { DynamoDBClient } from "@aws-sdk/client-dynamodb";
import { RekognitionClient } from "@aws-sdk/client-rekognition";
import type { AppSyncIdentityCognito } from "aws-lambda";

export const rekognition = new RekognitionClient();
export const dynamodb = new DynamoDBClient();

// Records who created each session, so only they can read its result.
export const sessionsTable = process.env.SESSIONS_TABLE_NAME;

// Sessions expire after a few minutes; keep the owner record a bit longer.
export const recordTtlSeconds = 24 * 60 * 60;

/** The Cognito user calling the query. */
export function callerOf(identity: unknown): string {
  const sub = (identity as AppSyncIdentityCognito | null)?.sub;
  if (!sub) {
    throw new Error("Unauthorized");
  }
  return sub;
}
