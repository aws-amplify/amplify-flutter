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

interface CreateUserInput {
  input: {
    username: string;
    password?: string;
    autoConfirm?: boolean;
    enableMFA?: boolean;
    verifyAttributes?: boolean;
    email?: string;
    phoneNumber?: string;
    name?: string;
    givenName?: string;
  }
}

interface CreateUserResponse {
  success: boolean;
  error?: string;
}

const USER_POOL_ID = process.env.USER_POOL_ID;
const CLIENT = new cognito.CognitoIdentityProviderClient({
  region: process.env.REGION,
});

export const handler: lambda.AppSyncResolverHandler<
  CreateUserInput,
  CreateUserResponse
> = async (
  event: lambda.AppSyncResolverEvent<CreateUserInput>
): Promise<CreateUserResponse> => {
  console.log(`Got event: ${JSON.stringify(event, null, 2)}`);
  
  const { input } = event.arguments;
  const { username } = input;

  const baseParams = {
    UserPoolId: USER_POOL_ID,
    Username: username,
  }

  console.log(`Creating user ${username}...`);
  try {
    const createUserParams: cognito.AdminCreateUserCommandInput = {
      ...baseParams,
      TemporaryPassword: input.password,
      UserAttributes: [
        { Name: "email", Value: input.email },
        { Name: "phone_number", Value: input.phoneNumber },
        { Name: "name", Value: input.name },
        { Name: "given_name", Value: input.givenName },
      ],
    };
    await CLIENT.send(new cognito.AdminCreateUserCommand(createUserParams));
    console.log(`Successfully created user: ${username}`);
  } catch (err: any) {
    console.error(`Could not create user ${username}`, err);
    return {
      success: false,
      error: err.toString(),
    };
  }

  if (input.autoConfirm) {
    console.log(`Updating password for ${username}...`);
    try {
      const setPasswordParams: cognito.AdminSetUserPasswordCommandInput = {
        ...baseParams,
        Password: input.password,
        Permanent: true,
      };
      await CLIENT.send(
        new cognito.AdminSetUserPasswordCommand(setPasswordParams)
      );
      console.log(
        `Updated password for ${username} to ${input.password}`
      );
    } catch (err: any) {
      console.log(`Could not update password for ${username}`, err);
      return {
        success: false,
        error: err.toString(),
      };
    }
  }

  if (input.enableMFA) {
    console.log(`Enabling MFA for ${username}...`);
    try {
      const mfaParams: cognito.AdminSetUserMFAPreferenceCommandInput = {
        ...baseParams,
        SMSMfaSettings: {
          Enabled: true,
          PreferredMfa: true,
        },
      };
      await CLIENT.send(
        new cognito.AdminSetUserMFAPreferenceCommand(mfaParams)
      );
      console.log(`Successfully enabled MFA for ${username}`);
    } catch (err: any) {
      console.log(`Could not enable MFA for ${username}`, err);
      return {
        success: false,
        error: err.toString(),
      };
    }
  }

  if (input.verifyAttributes) {
    console.log(`Verifying attributes for ${username}...`);
    try {
      const userAttributesParams: cognito.AdminUpdateUserAttributesCommandInput =
        {
          ...baseParams,
          UserAttributes: [
            { Name: "phone_number_verified", Value: "true" },
            { Name: "email_verified", Value: "true" },
          ],
        };
      await CLIENT.send(
        new cognito.AdminUpdateUserAttributesCommand(userAttributesParams)
      );
      console.log(`Successfully verified attributes for ${username}`);
    } catch (err: any) {
      console.log(`Could not verify attributes for ${username}`, err);
      return {
        success: false,
        error: err.toString(),
      };
    }
  }

  return {
    success: true,
  };
};
