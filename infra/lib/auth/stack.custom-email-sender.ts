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

import {
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
