// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { Duration, Stack } from "aws-cdk-lib";
import { IUserPool } from "aws-cdk-lib/aws-cognito";
import { Rule, Schedule } from "aws-cdk-lib/aws-events";
import { LambdaFunction } from "aws-cdk-lib/aws-events-targets";
import { Runtime } from "aws-cdk-lib/aws-lambda";
import { NodejsFunction } from "aws-cdk-lib/aws-lambda-nodejs";
import path from "path";

/**
 * Adds a scheduled Lambda function that runs every 3 hours and deletes
 * user accounts older than 2 hours from the given Cognito User Pool.
 */
export function addCleanupUsersSchedule({
  name,
  stack,
  userPool,
}: {
  name: string;
  stack: Stack;
  userPool: IUserPool;
}) {
  const cleanupLambda = new NodejsFunction(stack, `${name}-cleanupOldUsers`, {
    entry: path.resolve(
      __dirname,
      "..",
      "lambda-triggers",
      "cleanup-old-users.js"
    ),
    runtime: Runtime.NODEJS_18_X,
    timeout: Duration.minutes(15),
    environment: {
      USER_POOL_ID: userPool.userPoolId,
    },
  });

  // Grant the lambda permission to list and delete users
  userPool.grant(
    cleanupLambda,
    "cognito-idp:ListUsers",
    "cognito-idp:AdminDeleteUser"
  );

  // Schedule the lambda to run every 3 hours
  new Rule(stack, `${name}-cleanupOldUsersRule`, {
    schedule: Schedule.rate(Duration.hours(3)),
    targets: [new LambdaFunction(cleanupLambda)],
  });
}
