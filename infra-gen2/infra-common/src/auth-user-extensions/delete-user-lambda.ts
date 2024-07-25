// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { Stack } from "aws-cdk-lib";
import { GraphqlApi, MappingTemplate } from "aws-cdk-lib/aws-appsync";
import { IUserPool } from "aws-cdk-lib/aws-cognito";
import { Runtime } from "aws-cdk-lib/aws-lambda";
import { NodejsFunction } from "aws-cdk-lib/aws-lambda-nodejs";
import path from "path";

export function addDeleteUserLambda({
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
  const deleteUserLambda = new NodejsFunction(stack, `${name}-deleteUser`, {
    entry: path.resolve(__dirname, "..", "lambda-triggers", "delete-user.js"),
    runtime: Runtime.NODEJS_18_X,
    environment: {
      USER_POOL_ID: userPool.userPoolId,
    },
  });
  userPool.grant(deleteUserLambda, "cognito-idp:AdminDeleteUser");
  const deleteUserSource = graphQL.addLambdaDataSource(
    `${name}-GraphQLApiDeleteUserLambda`,
    deleteUserLambda
  );
  deleteUserSource.createResolver(`${name}-MutationDeleteUserResolver`, {
    typeName: "Mutation",
    fieldName: "deleteUser",
    requestMappingTemplate: MappingTemplate.lambdaRequest(),
    responseMappingTemplate: MappingTemplate.lambdaResult(),
  });
}
