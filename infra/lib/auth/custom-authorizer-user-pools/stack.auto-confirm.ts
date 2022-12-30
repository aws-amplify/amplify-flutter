// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as lambda from "aws-lambda";

export const handler: lambda.PreSignUpTriggerHandler = async (
  event: lambda.PreSignUpTriggerEvent
): Promise<lambda.PreSignUpTriggerEvent> => {
  event.response.autoConfirmUser = true;
  return event;
};
