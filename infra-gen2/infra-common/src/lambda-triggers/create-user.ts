// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import {
  AdminCreateUserCommand,
  AdminCreateUserCommandInput,
  AdminSetUserMFAPreferenceCommand,
  AdminSetUserMFAPreferenceCommandInput,
  AdminSetUserPasswordCommand,
  AdminSetUserPasswordCommandInput,
  AdminUpdateUserAttributesCommand,
  AdminUpdateUserAttributesCommandInput,
  AttributeType,
  CognitoIdentityProviderClient,
  DeliveryMediumType,
} from "@aws-sdk/client-cognito-identity-provider";
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
const CLIENT = new CognitoIdentityProviderClient({
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
  const { username, password, autoConfirm, enableMFA, verifyAttributes } =
    input;

  const baseParams = {
    UserPoolId: USER_POOL_ID,
    Username: username,
  };

  console.log(`Creating user ${username}...`);
  let cognitoUsername: string;
  try {
    const UserAttributes: AttributeType[] = [];
    const deliveryMediums: Array<DeliveryMediumType> = [];
    if (input.email) {
      UserAttributes.push({ Name: "email", Value: input.email });
      deliveryMediums.push("EMAIL");
    }
    if (input.phoneNumber) {
      UserAttributes.push({ Name: "phone_number", Value: input.phoneNumber });
      deliveryMediums.push("SMS");
    }
    if (input.name) {
      UserAttributes.push({ Name: "name", Value: input.name });
    }
    if (input.givenName) {
      UserAttributes.push({ Name: "given_name", Value: input.givenName });
    }

    const createUserParams: AdminCreateUserCommandInput = {
      ...baseParams,
      TemporaryPassword: input.password,
      UserAttributes,
      DesiredDeliveryMediums: deliveryMediums,
    };
    const resp = await CLIENT.send(
      new AdminCreateUserCommand(createUserParams)
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
      const setPasswordParams: AdminSetUserPasswordCommandInput = {
        ...baseParams,
        Password: input.password,
        Permanent: true,
      };
      const resp = await CLIENT.send(
        new AdminSetUserPasswordCommand(setPasswordParams)
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
      const mfaParams: AdminSetUserMFAPreferenceCommandInput = {
        ...baseParams,
        SMSMfaSettings: {
          Enabled: true,
          PreferredMfa: true,
        },
      };
      const resp = await CLIENT.send(
        new AdminSetUserMFAPreferenceCommand(mfaParams)
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
      const userAttributes: AttributeType[] = [];
      if (input.email) {
        userAttributes.push({ Name: "email_verified", Value: "true" });
      }
      if (input.phoneNumber) {
        userAttributes.push({ Name: "phone_number_verified", Value: "true" });
      }
      const userAttributesParams: AdminUpdateUserAttributesCommandInput = {
        ...baseParams,
        UserAttributes: userAttributes,
      };
      const resp = await CLIENT.send(
        new AdminUpdateUserAttributesCommand(userAttributesParams)
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
