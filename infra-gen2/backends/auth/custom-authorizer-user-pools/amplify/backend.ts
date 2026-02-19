// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { defineBackend } from "@aws-amplify/backend";
import { addAuthUserExtensions } from "infra-common";
import { Stack } from "aws-cdk-lib";
import {
  AuthorizationType,
  CognitoUserPoolsAuthorizer,
  Cors,
  LambdaIntegration,
  RestApi,
} from "aws-cdk-lib/aws-apigateway";
import { auth } from "./auth/resource";
import { restApiFunction } from "./functions/rest-api/resource";

const backend = defineBackend({
  auth,
  restApiFunction,
});

const resources = backend.auth.resources;
const { userPool, cfnResources } = resources;
const { stack } = userPool;
const { cfnUserPool } = cfnResources;

// Adds infra for creating/deleting users via App Sync and fetching confirmation
// and MFA codes from App Sync.
const customOutputs = addAuthUserExtensions({
  name: "custom-auth-up",
  stack,
  userPool,
  cfnUserPool,
});
backend.addOutput(customOutputs);

// Configure username-based login (override Amplify defaults)
cfnUserPool.schema = undefined;
cfnUserPool.usernameAttributes = [];
cfnUserPool.emailConfiguration = {
  emailSendingAccount: "DEVELOPER",
  from: "ktruon@amazon.com",
  sourceArn: `arn:aws:ses:${stack.region}:${stack.account}:identity/ktruon@amazon.com`,
};
cfnUserPool.adminCreateUserConfig = {
  allowAdminCreateUserOnly: true,
};
cfnUserPool.autoVerifiedAttributes = [];
cfnUserPool.userAttributeUpdateSettings = {
  attributesRequireVerificationBeforeUpdate: [],
};

// Create REST API with Cognito User Pool authorizer
const apiStack = backend.createStack("custom-auth-api-stack");

const cognitoAuthorizer = new CognitoUserPoolsAuthorizer(
  apiStack,
  "CognitoAuthorizer",
  {
    cognitoUserPools: [userPool],
  }
);

const restApi = new RestApi(apiStack, "CustomAuthRestApi", {
  restApiName: "customAuthUserPoolsRest",
  deploy: true,
  deployOptions: {
    stageName: "prod",
  },
  defaultCorsPreflightOptions: {
    allowOrigins: Cors.ALL_ORIGINS,
    allowMethods: Cors.ALL_METHODS,
    allowHeaders: Cors.DEFAULT_HEADERS,
  },
});

const lambdaIntegration = new LambdaIntegration(
  backend.restApiFunction.resources.lambda
);

// Add root resource with Cognito User Pool authorizer
restApi.root.addMethod("ANY", lambdaIntegration, {
  authorizationType: AuthorizationType.COGNITO,
  authorizer: cognitoAuthorizer,
});

// Add proxy resource for sub-paths
restApi.root.addProxy({
  anyMethod: true,
  defaultIntegration: lambdaIntegration,
  defaultMethodOptions: {
    authorizationType: AuthorizationType.COGNITO,
    authorizer: cognitoAuthorizer,
  },
});

// Output the REST API config
// The Gen1 config uses OPENID_CONNECT as the authorization type for Cognito
// User Pool authorizer, matching the original amplify-cli behavior.
backend.addOutput({
  custom: {
    API: {
      url: restApi.url.replace(/\/+$/, "/"),
      aws_region: Stack.of(restApi).region,
      authorization_type: "OPENID_CONNECT",
    },
  },
});
