// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as cognito from "@aws-sdk/client-cognito-identity-provider";
import type * as lambda from "aws-lambda";

interface DeleteDeviceInput {
  input: {
    username: string;
    deviceKey: string;
  };
}

interface DeleteDeviceResponse {
  success: boolean;
  error?: string;
}

const USER_POOL_ID = process.env.USER_POOL_ID;
const CLIENT = new cognito.CognitoIdentityProviderClient({
  region: process.env.REGION,
});

export const handler: lambda.AppSyncResolverHandler<
  DeleteDeviceInput,
  DeleteDeviceResponse
> = async (
  event: lambda.AppSyncResolverEvent<DeleteDeviceInput>
): Promise<DeleteDeviceResponse> => {
  console.log(`Got event: ${JSON.stringify(event, null, 2)}`);

  const { deviceKey, username } = event.arguments.input;

  console.log(`Deleting device ${deviceKey}...`);
  try {
    const forgetDeviceParams: cognito.AdminForgetDeviceCommandInput = {
      UserPoolId: USER_POOL_ID,
      Username: username,
      DeviceKey: deviceKey,
    };
    const resp = await CLIENT.send(
      new cognito.AdminForgetDeviceCommand(forgetDeviceParams)
    );
    console.log(`Successfully deleted device: ${deviceKey}`, resp);
  } catch (err: any) {
    console.error(`Could not delete device ${deviceKey}`, err);
    return {
      success: false,
      error: err.toString(),
    };
  }

  return { success: true };
};
