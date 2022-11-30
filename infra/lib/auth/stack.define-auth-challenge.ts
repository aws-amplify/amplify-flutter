/**
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

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
