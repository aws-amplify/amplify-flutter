// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { CognitoIdentityProvider, UserType } from '@aws-sdk/client-cognito-identity-provider';
import type * as lambda from 'aws-lambda';

const CLIENT = new CognitoIdentityProvider({});
const { USER_POOL_ID } = process.env;

export const handler: lambda.Handler = async (event) => {
    console.log(`Got event: ${JSON.stringify(event, null, 2)}`);

    const users: UserType[] = [];
    try {
        console.log('Listing users...');

        let nextToken: string | undefined;
        do {
            const usersResp = await CLIENT.listUsers({
                UserPoolId: USER_POOL_ID!,
                PaginationToken: nextToken,
            });
            for (const user of usersResp.Users ?? []) {
                users.push(user);
            }
            nextToken = usersResp.PaginationToken;
        } while (nextToken);
    } catch (e) {
        console.error(`Error listing users: ${e}`);
        return;
    }

    console.log(`Got users: ${JSON.stringify(users, null, 2)}`);

    for (const user of users) {
        console.log(`Deleting user: ${user.Username}`);
        await CLIENT.adminDeleteUser({
            UserPoolId: USER_POOL_ID!,
            Username: user.Username!,
        });
    }
};
