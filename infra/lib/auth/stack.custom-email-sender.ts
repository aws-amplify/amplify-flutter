// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import type {
  CustomEmailSenderTriggerEvent,
  CustomEmailSenderTriggerHandler
} from "aws-lambda";
import { decryptAndBroadcastCode } from "./custom-sender";

export const handler: CustomEmailSenderTriggerHandler = async (
  event: CustomEmailSenderTriggerEvent
): Promise<CustomEmailSenderTriggerEvent> => {
  console.log(`Got event: ${JSON.stringify(event, null, 2)}`);

  if (
    event.triggerSource === "CustomEmailSender_AdminCreateUser" ||
    event.triggerSource == "CustomEmailSender_AccountTakeOverNotification"
  ) {
    console.warn(`Not handling trigger source: ${event.triggerSource}`);
    return event;
  }

  const { userName } = event;
  const { code } = event.request;

  await decryptAndBroadcastCode(userName, code!);

  return event;
};
