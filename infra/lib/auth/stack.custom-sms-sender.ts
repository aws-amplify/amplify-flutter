// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { CustomSMSSenderTriggerEvent, CustomSMSSenderTriggerHandler } from "aws-lambda";
import { decryptAndBroadcastCode } from "./custom-sender";

export const handler: CustomSMSSenderTriggerHandler = async (
  event: CustomSMSSenderTriggerEvent
): Promise<CustomSMSSenderTriggerEvent> => {
  console.log(`Got event: ${JSON.stringify(event, null, 2)}`);

  if (event.triggerSource === "CustomSMSSender_AdminCreateUser") {
    console.warn(`Not handling trigger source: ${event.triggerSource}`);
    return event;
  }

  const { userName } = event;
  const { code } = event.request;

  await decryptAndBroadcastCode(userName, code!);

  return event;
};
