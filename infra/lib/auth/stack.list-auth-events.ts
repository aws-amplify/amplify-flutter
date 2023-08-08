// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as cognito from "@aws-sdk/client-cognito-identity-provider";
import type * as lambda from "aws-lambda";

const USER_POOL_ID = process.env.USER_POOL_ID;
const CLIENT = new cognito.CognitoIdentityProviderClient({
  region: process.env.REGION,
});

type ListAuthEventsInput = {
  username: string;
};

export const handler: lambda.AppSyncResolverHandler<
  ListAuthEventsInput,
  cognito.AuthEventType[]
> = async (
  event: lambda.AppSyncResolverEvent<ListAuthEventsInput>
): Promise<cognito.AuthEventType[]> => {
  const { username } = event.arguments;
  const authEvents: cognito.AuthEventType[] = [];
  let nextToken: string | undefined;
  do {
    const resp = await CLIENT.send(
      new cognito.AdminListUserAuthEventsCommand({
        Username: username,
        UserPoolId: USER_POOL_ID,
        NextToken: nextToken,
      })
    );

    for (const event of resp.AuthEvents ?? []) {
      authEvents.push(event);
    }
    nextToken = resp.NextToken;
  } while (nextToken);

  return authEvents;
};
