// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as cognito from "@aws-sdk/client-cognito-identity-provider";
import * as lambda from "aws-lambda";

interface DeleteUserRequest {
  username: string;
}

interface DeleteUserResponse {
  success: boolean;
  error?: string;
}

const USER_POOL_ID = process.env.USER_POOL_ID;
const CLIENT = new cognito.CognitoIdentityProviderClient({
  region: process.env.REGION,
});

export const handler: lambda.AppSyncResolverHandler<
  DeleteUserRequest,
  DeleteUserResponse
> = async (
  event: lambda.AppSyncResolverEvent<DeleteUserRequest>
): Promise<DeleteUserResponse> => {
  console.log(`Got event: ${JSON.stringify(event, null, 2)}`);

  const { username } = event.arguments;
  console.log(`Deleting user ${username}...`);
  try {
    await CLIENT.send(
      new cognito.AdminDeleteUserCommand({
        UserPoolId: USER_POOL_ID,
        Username: username,
      })
    );
    console.log(`Successfully deleted user ${username}`);
  } catch (err: any) {
    console.log(`Could not delete user ${username}`, err);
    return {
      success: false,
      error: err.toString(),
    };
  }

  return {
    success: true,
  };
};
