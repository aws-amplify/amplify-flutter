import {
  CreateFaceLivenessSessionCommand,
  GetFaceLivenessSessionResultsCommand,
  RekognitionClient,
} from "@aws-sdk/client-rekognition";
import type { AppSyncResolverEvent } from "aws-lambda";

const rekognition = new RekognitionClient();

type Arguments = { sessionId?: string };

// Backs the `createLivenessSession` and `getLivenessResult` queries.
export const handler = async (event: AppSyncResolverEvent<Arguments>) => {
  switch (event.info.fieldName) {
    case "createLivenessSession": {
      const { SessionId } = await rekognition.send(
        new CreateFaceLivenessSessionCommand({}),
      );
      return { sessionId: SessionId, region: process.env.AWS_REGION };
    }
    case "getLivenessResult": {
      const { Status, Confidence } = await rekognition.send(
        new GetFaceLivenessSessionResultsCommand({
          SessionId: event.arguments.sessionId,
        }),
      );
      // Reference and audit images are deliberately not returned.
      return { status: Status, confidence: Confidence };
    }
    default:
      throw new Error(`Unknown field ${event.info.fieldName}`);
  }
};
