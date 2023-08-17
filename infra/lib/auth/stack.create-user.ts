// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as cognito from "@aws-sdk/client-cognito-identity-provider";
import type * as lambda from "aws-lambda";

interface CreateUserInput {
  input: {
    username: string;
    password: string;
    autoConfirm?: boolean;
    enableMFA?: boolean;
    verifyAttributes?: boolean;
    email?: string;
    phoneNumber?: string;
    name?: string;
    givenName?: string;
  };
}

interface CreateUserResponse {
  success: boolean;
  cognitoUsername?: string;
  error?: string;
}

const { USER_POOL_ID } = process.env;
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
    const { username, password, autoConfirm, enableMFA, verifyAttributes } = input;

    const baseParams = {
      UserPoolId: USER_POOL_ID,
      Username: username,
    };

    console.log(`Creating user ${username}...`);
    let cognitoUsername: string;
    try {
      const UserAttributes: cognito.AttributeType[] = [];
      if (input.email) {
        UserAttributes.push({ Name: "email", Value: input.email });
      }
      if (input.phoneNumber) {
        UserAttributes.push({ Name: "phone_number", Value: input.phoneNumber });
      }
      if (input.name) {
        UserAttributes.push({ Name: "name", Value: input.name });
      }
      if (input.givenName) {
        UserAttributes.push({ Name: "given_name", Value: input.givenName });
      }
      const createUserParams: cognito.AdminCreateUserCommandInput = {
        ...baseParams,
        TemporaryPassword: input.password,
        UserAttributes,
      };
      const resp = await CLIENT.send(
        new cognito.AdminCreateUserCommand(createUserParams)
      );
      console.log(`Successfully created user: ${username}`, resp);
      cognitoUsername = resp.User!.Username!;
    } catch (err: any) {
      console.error(`Could not create user ${username}`, err);
      return {
        success: false,
        error: err.toString(),
      };
    }

    if (autoConfirm) {
      console.log(`Updating password for ${username}...`);
      try {
        const setPasswordParams: cognito.AdminSetUserPasswordCommandInput = {
          ...baseParams,
          Password: input.password,
          Permanent: true,
        };
        const resp = await CLIENT.send(
          new cognito.AdminSetUserPasswordCommand(setPasswordParams)
        );
        console.log(
          `Updated password for ${username} to ${input.password}`,
          resp
        );
      } catch (err: any) {
        console.log(`Could not update password for ${username}`, err);
        return {
          success: false,
          error: err.toString(),
        };
      }
    }

    if (enableMFA) {
      console.log(`Enabling SMS MFA for ${username}...`);
      try {
        const mfaParams: cognito.AdminSetUserMFAPreferenceCommandInput = {
          ...baseParams,
          SMSMfaSettings: {
            Enabled: true,
            PreferredMfa: true,
          },
        };
        const resp = await CLIENT.send(
          new cognito.AdminSetUserMFAPreferenceCommand(mfaParams),
        );
        console.log(`Successfully enabled MFA for ${username}`, resp);
      } catch (err: any) {
        console.log(`Could not enable MFA for ${username}`, err);
        return {
          success: false,
          error: err.toString(),
        };
      }
    }

    if (verifyAttributes) {
      console.log(`Verifying attributes for ${username}...`);
      try {
        const userAttributes: cognito.AttributeType[] = [];
        if (input.email) {
          userAttributes.push({ Name: "email_verified", Value: "true" });
        }
        if (input.phoneNumber) {
          userAttributes.push({ Name: "phone_number_verified", Value: "true" });
        }
        const userAttributesParams: cognito.AdminUpdateUserAttributesCommandInput =
        {
          ...baseParams,
          UserAttributes: userAttributes,
        };
        const resp = await CLIENT.send(
          new cognito.AdminUpdateUserAttributesCommand(userAttributesParams)
        );
        console.log(`Successfully verified attributes for ${username}`, resp);
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
      cognitoUsername,
    };
  };
