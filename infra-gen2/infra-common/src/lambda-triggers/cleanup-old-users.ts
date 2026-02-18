// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import {
    AdminDeleteUserCommand,
    CognitoIdentityProviderClient,
    ListUsersCommand,
    UserType,
} from "@aws-sdk/client-cognito-identity-provider";
import type * as lambda from "aws-lambda";

const USER_POOL_ID = process.env.USER_POOL_ID!;
const MAX_AGE_MS = 2 * 60 * 60 * 1000; // 2 hours in milliseconds

const client = new CognitoIdentityProviderClient({});

export const handler: lambda.Handler = async (event) => {
  console.log(`Got event: ${JSON.stringify(event, null, 2)}`);
  console.log(`User Pool ID: ${USER_POOL_ID}`);

  const nowMs = Date.now(); // UTC epoch milliseconds
  console.log(`Current UTC time: ${new Date(nowMs).toISOString()}`);

  let deletedCount = 0;
  let skippedCount = 0;
  let paginationToken: string | undefined;

  try {
    do {
      const response = await client.send(
        new ListUsersCommand({
          UserPoolId: USER_POOL_ID,
          PaginationToken: paginationToken,
        })
      );

      const users: UserType[] = response.Users ?? [];
      if (users.length === 0 && !paginationToken) {
        console.log("No users found in user pool.");
        break;
      }

      console.log(`Processing batch of ${users.length} users...`);

      for (const user of users) {
        // UserCreateDate is always in UTC from Cognito
        const createdAt = user.UserCreateDate;
        if (!createdAt) {
          console.log(
            `User ${user.Username} has no creation date, skipping.`
          );
          skippedCount++;
          continue;
        }

        const ageMs = nowMs - createdAt.getTime();
        if (ageMs > MAX_AGE_MS) {
          console.log(
            `Deleting user ${user.Username} (created ${createdAt.toISOString()}, age: ${Math.round(ageMs / 1000 / 60)} minutes)`
          );
          try {
            await client.send(
              new AdminDeleteUserCommand({
                UserPoolId: USER_POOL_ID,
                Username: user.Username!,
              })
            );
            deletedCount++;
          } catch (deleteErr: any) {
            console.error(
              `Failed to delete user ${user.Username}: ${deleteErr}`
            );
          }
        } else {
          console.log(
            `Skipping user ${user.Username} (created ${createdAt.toISOString()}, age: ${Math.round(ageMs / 1000 / 60)} minutes)`
          );
          skippedCount++;
        }
      }

      paginationToken = response.PaginationToken;

      // Prevent TooManyRequestsException
      if (paginationToken) {
        console.log("Waiting 5 seconds before next batch...");
        await new Promise((resolve) => setTimeout(resolve, 5000));
      }
    } while (paginationToken);
  } catch (e) {
    console.error(`Error during cleanup: ${e}`);
    throw e;
  }

  console.log(
    `Cleanup complete. Deleted: ${deletedCount}, Skipped: ${skippedCount}`
  );
};
