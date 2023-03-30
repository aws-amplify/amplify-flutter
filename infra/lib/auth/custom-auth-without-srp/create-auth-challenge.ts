// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import type * as lambda from "aws-lambda";
import type {
  ChallengeResult,
  CustomChallengeResult
} from "aws-lambda/trigger/cognito-user-pool-trigger/_common";
import { ChallengeMetadata } from "./common";

export const handler: lambda.CreateAuthChallengeTriggerHandler = async (
  event: lambda.CreateAuthChallengeTriggerEvent
): Promise<lambda.CreateAuthChallengeTriggerEvent> => {
  console.log(`Got request: ${JSON.stringify(event.request, null, 2)}`);

  const session = event.request.session;
  const currentSession: ChallengeResult | CustomChallengeResult | undefined =
    session.length > 0 ? session[session.length - 1] : undefined;

  if (event.request.challengeName === "CUSTOM_CHALLENGE") {
    // Allow up to 3 retries. A custom retry mechanism like this is the only way
    // to enable retrying in a custom challenge flow since there are no built-in
    // mechanisms besides pass/fail.
    // https://stackoverflow.com/questions/50692461/aws-cognito-custom-challenge-with-retry?rq=1
    const metadata: ChallengeMetadata = currentSession
      ? JSON.parse(currentSession.challengeMetadata!)
      : { attempts: 0 };
    const { attempts } = metadata;
    if (attempts <= 3) {
      const challengeParams: {
        "test-key": string;
        errorCode?: string;
      } = { "test-key": "test-value" };
      if (attempts > 0) {
        challengeParams.errorCode = "NotAuthorizedException";
      }
      event.response.publicChallengeParameters = challengeParams;
      event.response.privateChallengeParameters = { answer: "123" };
      event.response.challengeMetadata = JSON.stringify({
        attempts: attempts + 1,
      });
    }
  }

  console.log(`Responding with: ${JSON.stringify(event.response, null, 2)}`);
  return event;
};
