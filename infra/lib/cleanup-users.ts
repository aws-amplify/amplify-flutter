// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { CognitoIdentityProvider, UserType } from '@aws-sdk/client-cognito-identity-provider';
import type * as lambda from 'aws-lambda';

const CLIENT = new CognitoIdentityProvider({});
const { USER_POOL_ID } = process.env;

export const handler: lambda.Handler = async (event) => {
    console.log(`Got event: ${JSON.stringify(event, null, 2)}`);

    try {
        console.log('Listing users...');

        while (true) {
            const usersResp = await CLIENT.listUsers({
                UserPoolId: USER_POOL_ID!,
            });
            const users: UserType[] = usersResp.Users ?? [];
            if (users.length === 0) {
                break;
            }

            console.log(`Got users: ${JSON.stringify(users, null, 2)}`);
            await Promise.all(
                users.map(async (user) => {
                    console.log(`Deleting user: ${user.Username}`);
                    await CLIENT.adminDeleteUser({
                        UserPoolId: USER_POOL_ID!,
                        Username: user.Username!,
                    });
                }),
            );

            // Prevents `TooManyRequestsException`
            console.log('Waiting 5 seconds...');
            await new Promise((resolve) => setTimeout(resolve, 5000));
        }
    } catch (e) {
        console.error(`Error deleting users: ${e}`);
        return;
    }
};
