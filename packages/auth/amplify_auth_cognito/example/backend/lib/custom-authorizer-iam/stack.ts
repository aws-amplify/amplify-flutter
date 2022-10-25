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
import * as lambda from "aws-cdk-lib/aws-lambda";
import * as lambda_nodejs from "aws-cdk-lib/aws-lambda-nodejs";
import * as iam from "aws-cdk-lib/aws-iam";
import * as acm from "aws-cdk-lib/aws-certificatemanager";
import * as route53 from "aws-cdk-lib/aws-route53";
import * as targets from "aws-cdk-lib/aws-route53-targets";
import { CustomAuthorizerStackProps } from "../custom-authorizer-user-pools/stack";

interface DomainProperties {
  domainName: string;
  hostedZone: route53.IHostedZone;
  domainOptions: apigw.DomainNameOptions;
}

export class CustomAuthorizerIamStack extends cdk.Stack {
  constructor(scope: Construct, props: CustomAuthorizerStackProps) {
    super(scope, `AuthIntegrationTestStack-${props.environmentName}`, props);

    const { customDomain } = props;
    let domainProperties: DomainProperties | undefined;
    if (customDomain) {
      const domainName = `${props.environmentName}.${customDomain}`;
      const hostedZone = route53.HostedZone.fromLookup(this, "HostedZone", {
        domainName: customDomain,
      });
      const certificate = new acm.DnsValidatedCertificate(
        this,
        "SslCertificate",
        {
          hostedZone,
          domainName,
        }
      );
      domainProperties = {
        domainName,
        hostedZone,
        domainOptions: {
          domainName,
          certificate,
        },
      };
    }

    // Create the API Gateway and proxy handler

    const apiHandler = new lambda_nodejs.NodejsFunction(this, "api-handler", {
      runtime: lambda.Runtime.NODEJS_16_X,
    });

    const apiGateway = new apigw.LambdaRestApi(this, "API", {
      handler: apiHandler,
      defaultCorsPreflightOptions: {
        allowOrigins: apigw.Cors.ALL_ORIGINS,
        allowHeaders: [...apigw.Cors.DEFAULT_HEADERS, "x-amz-content-sha256"],
      },
      defaultMethodOptions: {
        authorizationType: apigw.AuthorizationType.IAM,
      },
      domainName: domainProperties?.domainOptions,
    });

    if (domainProperties) {
      new route53.ARecord(this, "CustomDomainAliasRecord", {
        zone: domainProperties.hostedZone,
        recordName: domainProperties.domainName,
        target: route53.RecordTarget.fromAlias(
          new targets.ApiGateway(apiGateway)
        ),
      });
    }

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
              actions: ["execute-api:Invoke"],
              resources: [apiGateway.arnForExecuteApi()],
            }),
          ],
        }),
      },
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

    new cdk.CfnOutput(this, "EnvironmentName", {
      value: props.environmentName,
    });

    new cdk.CfnOutput(this, "Region", {
      value: this.region,
    });

    new cdk.CfnOutput(this, "IdentityPoolId", {
      value: identityPool.ref,
    });

    let domainName = apiGateway.url;
    if (apiGateway.domainName?.domainName) {
      domainName = `https://${apiGateway.domainName?.domainName}`;
    }
    new cdk.CfnOutput(this, "RestApiUrl", {
      value: domainName,
    });
  }
}
