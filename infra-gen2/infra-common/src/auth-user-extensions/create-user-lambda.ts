// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { Stack } from "aws-cdk-lib";
import { GraphqlApi, MappingTemplate } from "aws-cdk-lib/aws-appsync";
import { IUserPool } from "aws-cdk-lib/aws-cognito";
import { Runtime } from "aws-cdk-lib/aws-lambda";
import { NodejsFunction } from "aws-cdk-lib/aws-lambda-nodejs";
import path from "path";

export function addCreateUserLambda({
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
  const createUserLambda = new NodejsFunction(stack, `${name}-createUser`, {
    entry: path.resolve(__dirname, "..", "lambda-triggers", "create-user.js"),
    runtime: Runtime.NODEJS_18_X,
    environment: {
      USER_POOL_ID: userPool.userPoolId,
    },
  });
  userPool.grant(
    createUserLambda,
    "cognito-idp:AdminCreateUser",
    "cognito-idp:AdminSetUserPassword",
    "cognito-idp:AdminSetUserMFAPreference",
    "cognito-idp:AdminUpdateUserAttributes"
  );
  const createUserSource = graphQL.addLambdaDataSource(
    `${name}-GraphQLApiCreateUserLambda`,
    createUserLambda
  );
  createUserSource.createResolver(`${name}-MutationCreateUserResolver`, {
    typeName: "Mutation",
    fieldName: "createUser",
    requestMappingTemplate: MappingTemplate.lambdaRequest(),
    responseMappingTemplate: MappingTemplate.lambdaResult(),
  });
}
