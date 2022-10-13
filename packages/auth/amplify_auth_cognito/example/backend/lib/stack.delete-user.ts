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
import * as cognito from "@aws-sdk/client-cognito-identity-provider";

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
