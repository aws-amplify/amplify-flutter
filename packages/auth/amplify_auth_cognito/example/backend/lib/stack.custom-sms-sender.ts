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
import {
  BaseTriggerEvent,
  StringMap,
} from "aws-lambda/trigger/cognito-user-pool-trigger/_common";
import fetch from "node-fetch";
import * as encryptionSdk from "@aws-crypto/client-node";
import * as b64 from "base64-js";

// Code adapted from:
// - https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-custom-sms-sender.html#code-examples
// - https://github.com/aws-samples/amazon-cognito-user-pool-development-and-testing-with-sms-redirected-to-email

interface BaseCustomSMSSenderTriggerEvent<T extends string>
  extends BaseTriggerEvent<T> {
  request: {
    code: string;
    userAttributes: StringMap;
    clientMetadata?: StringMap | undefined;
  };
  response: {};
}

type CustomSMSSenderSignUpTriggerEvent =
  BaseCustomSMSSenderTriggerEvent<"CustomSMSSender_SignUp">;
type CustomSMSSenderResendCodeTriggerEvent =
  BaseCustomSMSSenderTriggerEvent<"CustomSMSSender_ResendCode">;
type CustomSMSSenderForgotPasswordTriggerEvent =
  BaseCustomSMSSenderTriggerEvent<"CustomSMSSender_ForgotPassword">;
type CustomSMSSenderUpdateUserAttributeTriggerEvent =
  BaseCustomSMSSenderTriggerEvent<"CustomSMSSender_UpdateUserAttribute">;
type CustomSMSSenderVerifyUserAttributeTriggerEvent =
  BaseCustomSMSSenderTriggerEvent<"CustomSMSSender_VerifyUserAttribute">;
type CustomSMSSenderAdminCreateUserTriggerEvent =
  BaseCustomSMSSenderTriggerEvent<"CustomSMSSender_AdminCreateUser">;

type CustomSMSSenderTriggerEvent =
  | CustomSMSSenderSignUpTriggerEvent
  | CustomSMSSenderResendCodeTriggerEvent
  | CustomSMSSenderForgotPasswordTriggerEvent
  | CustomSMSSenderUpdateUserAttributeTriggerEvent
  | CustomSMSSenderVerifyUserAttributeTriggerEvent
  | CustomSMSSenderAdminCreateUserTriggerEvent;

type CustomSMSSenderTriggerHandler =
  lambda.Handler<CustomSMSSenderTriggerEvent>;

const { GRAPHQL_API_ENDPOINT, GRAPHQL_API_KEY, KMS_KEY_ARN } = process.env;
const { decrypt } = encryptionSdk.buildClient(
  encryptionSdk.CommitmentPolicy.FORBID_ENCRYPT_ALLOW_DECRYPT
);
const keyring = new encryptionSdk.KmsKeyringNode({
  keyIds: [KMS_KEY_ARN!],
});

export const handler: CustomSMSSenderTriggerHandler = async (
  event: CustomSMSSenderTriggerEvent
): Promise<CustomSMSSenderTriggerEvent> => {
  console.log(`Got event: ${JSON.stringify(event, null, 2)}`);

  const { userName } = event;
  const { code } = event.request;
  const { plaintext } = await decrypt(
    keyring,
    b64.toByteArray(code)
  );
  const plaintextCode = plaintext.toString('ascii')

  console.log(`Got MFA code for username ${userName}: ${plaintextCode}`);

  try {
    const resp = await fetch(GRAPHQL_API_ENDPOINT!, {
      method: "POST",
      headers: {
        "x-api-key": GRAPHQL_API_KEY!,
      },
      body: JSON.stringify({
        query: `
            mutation CreateMFACode($username: String!, $code: String!) {
                createMFACode(input: {
                    username: $username
                    code: $code
                }) {
                    username
                    code
                }
            }
        `,
        variables: {
          username: userName,
          code: plaintextCode,
        },
      }),
    });
    const json = await resp.json();
    console.log(`Got GraphQL response: ${JSON.stringify(json, null, 2)}`);
  } catch (error) {
    console.error("Could not POST to GraphQL endpoint: ", error);
  }

  return event;
};
