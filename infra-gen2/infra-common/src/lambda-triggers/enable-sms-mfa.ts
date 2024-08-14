// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as cognito from "@aws-sdk/client-cognito-identity-provider";
import type * as lambda from "aws-lambda";

interface EnableSmsMfaRequest {
  username: string;
}

interface EnableSmsMfaResponse {
  success: boolean;
  error?: string;
}

const USER_POOL_ID = process.env.USER_POOL_ID;
const CLIENT = new cognito.CognitoIdentityProviderClient({
  region: process.env.REGION,
});

export const handler: lambda.AppSyncResolverHandler<
  EnableSmsMfaRequest,
  EnableSmsMfaResponse
> = async (
  event: lambda.AppSyncResolverEvent<EnableSmsMfaRequest>
): Promise<EnableSmsMfaResponse> => {
    console.log(`Got event: ${JSON.stringify(event, null, 2)}`);

    const { username } = event.arguments;
    console.log(`Enabling SMS MFA for user ${username}...`);
    try {
      const mfaParams: cognito.AdminSetUserMFAPreferenceCommandInput = {
        UserPoolId: USER_POOL_ID,
        Username: username,
        SMSMfaSettings: {
          Enabled: true,
          PreferredMfa: true,
        },
      };
      const resp = await CLIENT.send(
        new cognito.AdminSetUserMFAPreferenceCommand(mfaParams),
      );
      console.log(`Successfully enabled MFA for ${username}`, resp);
      return {
        success: true,
      };
    } catch (err: any) {
      console.log(`Could not enable MFA for ${username}`, err);
      return {
        success: false,
        error: err.toString(),
      };
    }
  };
