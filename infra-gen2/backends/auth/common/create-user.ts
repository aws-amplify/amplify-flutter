// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { Stack } from "aws-cdk-lib";
import { GraphqlApi, MappingTemplate } from "aws-cdk-lib/aws-appsync";
import { IUserPool } from "aws-cdk-lib/aws-cognito";
import { Runtime } from "aws-cdk-lib/aws-lambda";
import { NodejsFunction } from "aws-cdk-lib/aws-lambda-nodejs";
import path from "path";
import url from "url";

const __filename = url.fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

export function addCreateUserLambda(
  stack: Stack,
  { graphQL, userPool }: { graphQL: GraphqlApi; userPool: IUserPool }
) {
  const createUserLambda = new NodejsFunction(stack, "create-user", {
    entry: `${__dirname}/lambda-triggers/create-user.ts`,
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
    "GraphQLApiCreateUserLambda",
    createUserLambda
  );
  createUserSource.createResolver("MutationCreateUserResolver", {
    typeName: "Mutation",
    fieldName: "createUser",
    requestMappingTemplate: MappingTemplate.lambdaRequest(),
    responseMappingTemplate: MappingTemplate.lambdaResult(),
  });
}
