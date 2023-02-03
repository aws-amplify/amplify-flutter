// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as encryptionSdk from "@aws-crypto/client-node";
import fetch from "node-fetch";

// Code adapted from:
// - https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-custom-sms-sender.html#code-examples
// - https://github.com/aws-samples/amazon-cognito-user-pool-development-and-testing-with-sms-redirected-to-email

const { GRAPHQL_API_ENDPOINT, GRAPHQL_API_KEY, KMS_KEY_ARN } = process.env;
const { decrypt } = encryptionSdk.buildClient(
  encryptionSdk.CommitmentPolicy.FORBID_ENCRYPT_ALLOW_DECRYPT
);
const keyring = new encryptionSdk.KmsKeyringNode({
  keyIds: [KMS_KEY_ARN!],
});

/**
 * Decrypts `code` using the KMS keyring provided by the environment.
 * @param code The encrypted code sent from Cognito.
 * @returns The plaintext (decrypted) code.
 */
const decryptCode = async (code: string): Promise<string> => {
  const { plaintext } = await decrypt(keyring, Buffer.from(code, "base64"));
  return plaintext.toString("ascii");
};

/**
 * Decrypts and broadcasts `code` to the AppSync endpoint provided by the environment.
 * @param code The encrypted code sent from Cognito.
 */
export const decryptAndBroadcastCode = async (
  username: string,
  code: string
): Promise<void> => {
  const plaintextCode = await decryptCode(code!);
  console.log(`Got MFA code for username ${username}: ${plaintextCode}`);

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
          username,
          code: plaintextCode,
        },
      }),
    });
    const json = await resp.json();
    console.log(`Got GraphQL response: ${JSON.stringify(json, null, 2)}`);
  } catch (error) {
    console.error("Could not POST to GraphQL endpoint: ", error);
  }
};
