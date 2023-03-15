// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import type * as lambda from "aws-lambda";

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
  if (
    event.request.session.length === 1 &&
    event.request.session[0].challengeName === "SRP_A"
  ) {
    event.response.issueTokens = false;
    event.response.failAuthentication = false;
    event.response.challengeName = "PASSWORD_VERIFIER";
  } else if (
    event.request.session.length === 2 &&
    event.request.session[1].challengeName === "PASSWORD_VERIFIER" &&
    event.request.session[1].challengeResult === true
  ) {
    event.response.issueTokens = false;
    event.response.failAuthentication = false;
    event.response.challengeName = "CUSTOM_CHALLENGE";
  } else if (
    event.request.session.length === 3 &&
    event.request.session[2].challengeName === "CUSTOM_CHALLENGE" &&
    event.request.session[2].challengeResult === true
  ) {
    event.response.failAuthentication = false;
    event.response.issueTokens = true;
  } else {
    event.response.issueTokens = false;
    event.response.failAuthentication = true;
  }
  return event;
};
