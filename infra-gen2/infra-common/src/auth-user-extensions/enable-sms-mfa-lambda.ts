// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { Stack } from "aws-cdk-lib";
import { GraphqlApi, MappingTemplate } from "aws-cdk-lib/aws-appsync";
import { IUserPool } from "aws-cdk-lib/aws-cognito";
import { Runtime } from "aws-cdk-lib/aws-lambda";
import { NodejsFunction } from "aws-cdk-lib/aws-lambda-nodejs";
import path from "path";

export function addEnableSmsMfaLambda({
  name,
  stack,
  graphQL,
  userPool,
}: {
  name: string;
  stack: Stack;
  graphQL: GraphqlApi;
  userPool: IUserPool;
}) {
  const enableSmsMfaLambda = new NodejsFunction(stack, `${name}-enableSmsMfa`, {
    runtime: Runtime.NODEJS_18_X,
    entry: path.resolve(
      __dirname,
      "..",
      "lambda-triggers",
      "enable-sms-mfa.js"
    ),
    environment: {
      USER_POOL_ID: userPool.userPoolId,
    },
  });

  userPool.grant(enableSmsMfaLambda, "cognito-idp:AdminSetUserMFAPreference");

  // Mutation.enableSmsMfa
  const enableSmsMfaSource = graphQL.addLambdaDataSource(
    "GraphQLApiEnableSmsMfaLambda",
    enableSmsMfaLambda
  );

  enableSmsMfaSource.createResolver("MutationEnableSmsMfaResolver", {
    typeName: "Mutation",
    fieldName: "enableSmsMfa",
    requestMappingTemplate: MappingTemplate.lambdaRequest(),
    responseMappingTemplate: MappingTemplate.lambdaResult(),
  });
}
