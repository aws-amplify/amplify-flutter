// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { RemovalPolicy, Stack } from "aws-cdk-lib";
import { GraphqlApi } from "aws-cdk-lib/aws-appsync";
import { UserPoolTriggers } from "aws-cdk-lib/aws-cognito";
import { Key } from "aws-cdk-lib/aws-kms";
import { Runtime } from "aws-cdk-lib/aws-lambda";
import { NodejsFunction } from "aws-cdk-lib/aws-lambda-nodejs";
import path from "path";
import url from "url";
import { Mutable } from "../../common/types";

const __filename = url.fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

export function addCustomEmailSenderLambda(
  stack: Stack,
  { graphQL }: { graphQL: GraphqlApi }
) {
  const customSenderKmsKey = new Key(stack, "CustomSenderKey", {
    description: `Key for encrypting/decrypting SMS messages sent from ${stack.stackId}`,
    removalPolicy: RemovalPolicy.DESTROY,
    alias: "emailSender",
  });

  const lambdaTriggers: Mutable<UserPoolTriggers> = {};

  const customEmailSender = new NodejsFunction(stack, "custom-email-sender", {
    entry: `${__dirname}/lambda-triggers/custom-email-sender.ts`,
    runtime: Runtime.NODEJS_18_X,
    bundling: {
      nodeModules: ["@aws-crypto/client-node"],
    },
    environment: {
      GRAPHQL_API_ENDPOINT: graphQL.graphqlUrl,
      GRAPHQL_API_KEY: graphQL.apiKey!,
      KMS_KEY_ARN: customSenderKmsKey.keyArn,
    },
  });
  lambdaTriggers.customEmailSender = customEmailSender;
  graphQL.grantMutation(customEmailSender);
  customSenderKmsKey.grantDecrypt(customEmailSender);
}
