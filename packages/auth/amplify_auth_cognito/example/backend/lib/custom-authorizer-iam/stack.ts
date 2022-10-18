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
import { Construct } from "constructs";
import * as cognito from "aws-cdk-lib/aws-cognito";
import * as apigw from "aws-cdk-lib/aws-apigateway";
import * as lambda_nodejs from "aws-cdk-lib/aws-lambda-nodejs";
import * as iam from "aws-cdk-lib/aws-iam";
import { CfnOutput } from "aws-cdk-lib";
import { Runtime } from "aws-cdk-lib/aws-lambda";
import { CustomAuthorizerStackProps } from "../custom-authorizer-user-pools/stack";

export class CustomAuthorizerIamStack extends cdk.Stack {
  constructor(scope: Construct, props: CustomAuthorizerStackProps) {
    super(scope, `AuthIntegrationTestStack-${props.environmentName}`, props);

    // Create the API Gateway and proxy handler

    const apiHandler = new lambda_nodejs.NodejsFunction(this, "api-handler", {
      runtime: Runtime.NODEJS_16_X,
    });

    const apiGateway = new apigw.LambdaRestApi(this, "API", {
      handler: apiHandler,
      defaultCorsPreflightOptions: {
        allowOrigins: apigw.Cors.ALL_ORIGINS,
      },
      defaultMethodOptions: {
        authorizationType: apigw.AuthorizationType.IAM,
      }
    });

    // Create the Cognito Identity Pool with permissions to invoke the API.

    const identityPool = new cognito.CfnIdentityPool(this, "IdentityPool", {
      identityPoolName: props.environmentName,
      allowUnauthenticatedIdentities: true,
    });

    const unauthenticatedRole = new iam.Role(this, "UnauthenticatedRole", {
      description: "Default role for anonymous users",
      assumedBy: new iam.FederatedPrincipal(
        "cognito-identity.amazonaws.com",
        {
          StringEquals: {
            "cognito-identity.amazonaws.com:aud": identityPool.ref,
          },
          "ForAnyValue:StringLike": {
            "cognito-identity.amazonaws.com:amr": "unauthenticated",
          },
        },
        "sts:AssumeRoleWithWebIdentity"
      ),
      inlinePolicies: {
        "api-gateway-invoke": new iam.PolicyDocument({
          statements: [
            new iam.PolicyStatement({
              effect: iam.Effect.ALLOW,
              actions: [
                "execute-api:Invoke"
              ],
              resources: [
                apiGateway.arnForExecuteApi(),
              ]
            })
          ]
        })
      }
    });

    new cognito.CfnIdentityPoolRoleAttachment(
      this,
      "IdentityPoolRoleAttachment",
      {
        identityPoolId: identityPool.ref,
        roles: {
          unauthenticated: unauthenticatedRole.roleArn,
        },
      }
    );

    new CfnOutput(this, "EnvironmentName", {
      value: props.environmentName,
    });

    new CfnOutput(this, "Region", {
      value: this.region,
    });

    new CfnOutput(this, "IdentityPoolId", {
      value: identityPool.ref,
    });

    new CfnOutput(this, "RestApiUrl", {
      value: apiGateway.url,
    });
  }
}
