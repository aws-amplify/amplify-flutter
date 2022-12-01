/**
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import * as cdk from "aws-cdk-lib";
import * as apigw from "aws-cdk-lib/aws-apigateway";
import * as cognito from "aws-cdk-lib/aws-cognito";
import * as lambda from "aws-cdk-lib/aws-lambda";
import * as lambda_nodejs from "aws-cdk-lib/aws-lambda-nodejs";
import { Construct } from "constructs";
import { IntegrationTestStackEnvironment } from "../../common";
import {
  AuthBaseEnvironmentProps,
  AuthCustomAuthorizerEnvironmentProps
} from "../stack";

export class CustomAuthorizerUserPoolsStackEnvironment extends IntegrationTestStackEnvironment<
  AuthBaseEnvironmentProps & AuthCustomAuthorizerEnvironmentProps
> {
  constructor(
    scope: Construct,
    baseName: string,
    props: AuthBaseEnvironmentProps & AuthCustomAuthorizerEnvironmentProps
  ) {
    super(scope, baseName, props);

    // Create the Cognito User Pool

    // Pre sign-up trigger to auto-confirm users.
    const autoConfirmTrigger = new lambda_nodejs.NodejsFunction(
      this,
      "auto-confirm",
      {
        runtime: lambda.Runtime.NODEJS_16_X,
      }
    );

    const userPool = new cognito.UserPool(this, "UserPool", {
      userPoolName: this.name,
      removalPolicy: cdk.RemovalPolicy.DESTROY,
      selfSignUpEnabled: true,
      accountRecovery: cognito.AccountRecovery.NONE,
      mfa: cognito.Mfa.OFF,
      lambdaTriggers: {
        preSignUp: autoConfirmTrigger,
      },
    });

    const userPoolClient = userPool.addClient("UserPoolClient", {
      authFlows: {
        userSrp: true,
      },
      disableOAuth: true,
    });

    // Create the User Pools authorizer

    const authorizer = new apigw.CognitoUserPoolsAuthorizer(
      this,
      "Authorizer",
      {
        cognitoUserPools: [userPool],
      }
    );

    // Create the API Gateway and proxy handler

    const apiHandler = new lambda_nodejs.NodejsFunction(this, "api-handler", {
      runtime: lambda.Runtime.NODEJS_16_X,
    });

    const apiGateway = new apigw.LambdaRestApi(this, "API", {
      handler: apiHandler,
      defaultCorsPreflightOptions: {
        allowOrigins: apigw.Cors.ALL_ORIGINS,
      },
      defaultMethodOptions: {
        authorizer,
      },
    });

    this.config = {
      apiConfig: {
        apis: {
          [apiGateway.restApiName]: {
            endpointType: "REST",
            endpoint: apiGateway.url,
            authorizationType: "AMAZON_COGNITO_USER_POOLS",
          },
        },
      },
      authConfig: {
        userPoolConfig: {
          userPoolId: userPool.userPoolId,
          userPoolClientId: userPoolClient.userPoolClientId,
        },
      },
    };
  }
}
