// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { RemovalPolicy, Stack } from "aws-cdk-lib";
import {
  Assign,
  GraphqlApi,
  MappingTemplate,
  PrimaryKey,
  Values,
} from "aws-cdk-lib/aws-appsync";
import { CfnUserPool } from "aws-cdk-lib/aws-cognito";
import { AttributeType, BillingMode, Table } from "aws-cdk-lib/aws-dynamodb";
import { ServicePrincipal } from "aws-cdk-lib/aws-iam";
import { Key } from "aws-cdk-lib/aws-kms";
import { Runtime } from "aws-cdk-lib/aws-lambda";
import { NodejsFunction } from "aws-cdk-lib/aws-lambda-nodejs";
import path from "path";

export function addCustomSenderLambda({
  name,
  stack,
  graphQL,
  cfnUserPool,
}: {
  name: string;
  stack: Stack;
  graphQL: GraphqlApi;
  cfnUserPool: CfnUserPool;
}): NodejsFunction {
  const customSenderKmsKey = new Key(stack, `${name}-CustomSenderKey`, {
    description: `Key for encrypting/decrypting SMS messages sent from ${stack.stackId}`,
    removalPolicy: RemovalPolicy.DESTROY,
  });

  const customEmailSender = new NodejsFunction(
    stack,
    `${name}-customEmailSender`,
    {
      entry: path.resolve(
        __dirname,
        "..",
        "lambda-triggers",
        "custom-email-sender.js"
      ),
      runtime: Runtime.NODEJS_18_X,
      environment: {
        GRAPHQL_API_ENDPOINT: graphQL.graphqlUrl,
        GRAPHQL_API_KEY: graphQL.apiKey!,
        KMS_KEY_ARN: customSenderKmsKey.keyArn,
      },
    }
  );

  customEmailSender.addPermission("PermitCognitoInvoke", {
    principal: new ServicePrincipal("cognito-idp.amazonaws.com"),
    sourceArn: cfnUserPool.attrArn,
  });

  const customSmsSender = new NodejsFunction(stack, `${name}-customSmsSender`, {
    entry: path.resolve(
      __dirname,
      "..",
      "lambda-triggers",
      "custom-sms-sender.js"
    ),
    runtime: Runtime.NODEJS_18_X,
    environment: {
      GRAPHQL_API_ENDPOINT: graphQL.graphqlUrl,
      GRAPHQL_API_KEY: graphQL.apiKey!,
      KMS_KEY_ARN: customSenderKmsKey.keyArn,
    },
  });

  customSmsSender.addPermission("PermitCognitoInvoke", {
    principal: new ServicePrincipal("cognito-idp.amazonaws.com"),
    sourceArn: cfnUserPool.attrArn,
  });

  cfnUserPool.lambdaConfig = {
    customEmailSender: {
      lambdaArn: customEmailSender.functionArn,
      lambdaVersion: "V1_0",
    },
    customSmsSender: {
      lambdaArn: customSmsSender.functionArn,
      lambdaVersion: "V1_0",
    },
    kmsKeyId: customSenderKmsKey.keyArn,
  };

  graphQL.grantMutation(customEmailSender);
  customSenderKmsKey.grantDecrypt(customEmailSender);

  graphQL.grantMutation(customSmsSender);
  customSenderKmsKey.grantDecrypt(customSmsSender);

  const mfaCodesTable = new Table(stack, `${name}-MFACodesTable`, {
    removalPolicy: RemovalPolicy.DESTROY,
    billingMode: BillingMode.PAY_PER_REQUEST,
    partitionKey: {
      type: AttributeType.STRING,
      name: "username",
    },
    sortKey: {
      type: AttributeType.STRING,
      name: "code",
    },
  });

  const mfaCodesSource = graphQL.addDynamoDbDataSource(
    "GraphQLApiMFACodes",
    mfaCodesTable
  );

  // Mutation.createMFACode
  mfaCodesSource.createResolver(`${name}-MutationCreateMFACodeResolver`, {
    typeName: "Mutation",
    fieldName: "createMFACode",
    requestMappingTemplate: MappingTemplate.dynamoDbPutItem(
      new PrimaryKey(
        new Assign("username", "$input.username"),
        new Assign("code", "$input.code")
      ),
      Values.projecting("input")
    ),
    responseMappingTemplate: MappingTemplate.dynamoDbResultItem(),
  });

  // Query.listMFACodes
  mfaCodesSource.createResolver(`${name}-QueryListMFACodesResolver`, {
    typeName: "Query",
    fieldName: "listMFACodes",
    requestMappingTemplate: MappingTemplate.dynamoDbScanTable(),
    responseMappingTemplate: MappingTemplate.dynamoDbResultItem(),
  });

  return customEmailSender;
}
