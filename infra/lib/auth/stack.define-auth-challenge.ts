// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as lambda from "aws-lambda";

export const handler: lambda.DefineAuthChallengeTriggerHandler = async (
  event: lambda.DefineAuthChallengeTriggerEvent
): Promise<lambda.DefineAuthChallengeTriggerEvent> => {
  // Scenario A: Step 1
  if (event.request.session.length == 0) {
    event.response.issueTokens = false;
    event.response.failAuthentication = false;
    event.response.challengeName = "CUSTOM_CHALLENGE";
    // Scenario B: Step 1
  } else if (
    event.request.session.length == 1 &&
    event.request.session[0].challengeName == "SRP_A"
  ) {
    event.response.issueTokens = false;
    event.response.failAuthentication = false;
    event.response.challengeName = "PASSWORD_VERIFIER";
    // Scenario A: Step 2
  } else if (
    event.request.session.length == 2 &&
    event.request.session[1].challengeName == "PASSWORD_VERIFIER" &&
    event.request.session[1].challengeResult == true
  ) {
    event.response.issueTokens = false;
    event.response.failAuthentication = false;
    event.response.challengeName = "CUSTOM_CHALLENGE";
    // Scenario A: Step 3 OR Scenario B Step 2
  } else if (
    (event.request.session.length == 1 &&
      event.request.session[0].challengeName == "CUSTOM_CHALLENGE" &&
      event.request.session[0].challengeResult == true) ||
    (event.request.session.length == 3 &&
      event.request.session[2].challengeName == "CUSTOM_CHALLENGE" &&
      event.request.session[2].challengeResult == true)
  ) {
    event.response.issueTokens = true;
    event.response.failAuthentication = false;
  } else {
    event.response.issueTokens = false;
    event.response.failAuthentication = true;
  }
  return event;
};
