// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import type {
  PreSignUpTriggerEvent,
  PreSignUpTriggerHandler,
} from "aws-lambda";

export const handler: PreSignUpTriggerHandler = async (
  event: PreSignUpTriggerEvent
): Promise<PreSignUpTriggerEvent> => {
  console.log(`Got event: ${JSON.stringify(event, null, 2)}`);

  if (event.triggerSource !== "PreSignUp_SignUp") {
    console.warn(`Not handling request of type: ${event.triggerSource}`);
    return event;
  }

  event.response.autoConfirmUser = true;

  // Set the email as verified if it is in the request
  if (event.request.userAttributes.hasOwnProperty("email")) {
    event.response.autoVerifyEmail = true;
  }

  // Set the phone number as verified if it is in the request
  if (event.request.userAttributes.hasOwnProperty("phone_number")) {
    event.response.autoVerifyPhone = true;
  }

  return event;
};
