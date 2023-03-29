// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import type * as lambda from "aws-lambda";
import type {
  ChallengeResult,
  CustomChallengeResult
} from "aws-lambda/trigger/cognito-user-pool-trigger/_common";
import { ChallengeMetadata } from "./common";

export const handler: lambda.DefineAuthChallengeTriggerHandler = async (
  event: lambda.DefineAuthChallengeTriggerEvent
): Promise<lambda.DefineAuthChallengeTriggerEvent> => {
  console.log(`Got request: ${JSON.stringify(event.request, null, 2)}`);
  const shouldFail = event.request.clientMetadata?.["should-fail"] === "true";
  if (shouldFail) {
    event.response.failAuthentication = true;
    event.response.issueTokens = false;
    return event;
  }

  const session = event.request.session;
  const currentSession: ChallengeResult | CustomChallengeResult | undefined =
    session.length > 0 ? session[session.length - 1] : undefined;

  if (!currentSession) {
    event.response.failAuthentication = false;
    event.response.issueTokens = false;
    event.response.challengeName = "CUSTOM_CHALLENGE";
  } else if (currentSession.challengeName === "CUSTOM_CHALLENGE") {
    if (currentSession.challengeResult) {
      event.response.failAuthentication = false;
      event.response.issueTokens = true;
    } else {
      // Allow up to 3 retries. A custom retry mechanism like this is the only way
      // to enable retrying in a custom challenge flow since there are no built-in
      // mechanisms besides pass/fail.
      // https://stackoverflow.com/questions/50692461/aws-cognito-custom-challenge-with-retry?rq=1
      const metadata = JSON.parse(currentSession.challengeMetadata!) as ChallengeMetadata;
      if (metadata.attempts <= 3) {
        event.response.failAuthentication = false;
        event.response.issueTokens = false;
        event.response.challengeName = "CUSTOM_CHALLENGE";
      } else {
        event.response.issueTokens = false;
        event.response.failAuthentication = true;
      }
    }
  } else {
    event.response.issueTokens = false;
    event.response.failAuthentication = true;
  }

  console.log(`Responding with: ${JSON.stringify(event.response, null, 2)}`);
  return event;
};
