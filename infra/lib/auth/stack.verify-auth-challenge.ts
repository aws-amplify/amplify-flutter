// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import type * as lambda from "aws-lambda";

export const handler: lambda.VerifyAuthChallengeResponseTriggerHandler = async (
  event: lambda.VerifyAuthChallengeResponseTriggerEvent
): Promise<lambda.VerifyAuthChallengeResponseTriggerEvent> => {
  if (
    event.request.privateChallengeParameters.answer ===
    event.request.challengeAnswer
  ) {
    event.response.answerCorrect = true;
  } else {
    event.response.answerCorrect = false;
  }
  return event;
};
