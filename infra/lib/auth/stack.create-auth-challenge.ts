// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import type * as lambda from "aws-lambda";

export const handler: lambda.CreateAuthChallengeTriggerHandler = async (
  event: lambda.CreateAuthChallengeTriggerEvent
): Promise<lambda.CreateAuthChallengeTriggerEvent> => {
  if (event.request.challengeName === "CUSTOM_CHALLENGE") {
    event.response.publicChallengeParameters = { "test-key": "test-value" };
    event.response.privateChallengeParameters = { answer: "123" };
  }

  return event;
};
