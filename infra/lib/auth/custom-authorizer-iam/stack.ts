// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as apigw from "aws-cdk-lib/aws-apigateway";
import * as acm from "aws-cdk-lib/aws-certificatemanager";
import * as cognito_identity from "@aws-cdk/aws-cognito-identitypool-alpha";
import * as iam from "aws-cdk-lib/aws-iam";
import * as lambda from "aws-cdk-lib/aws-lambda";
import * as lambda_nodejs from "aws-cdk-lib/aws-lambda-nodejs";
import * as route53 from "aws-cdk-lib/aws-route53";
import * as targets from "aws-cdk-lib/aws-route53-targets";
import { Construct } from "constructs";
import { IntegrationTestStackEnvironment } from "../../common";
import { CUSTOM_HEADERS } from "../common";
import {
  AuthBaseEnvironmentProps,
  AuthCustomAuthorizerEnvironmentProps
} from "../stack";

interface DomainProperties {
  domainName: string;
  hostedZone: route53.IHostedZone;
  domainOptions: apigw.DomainNameOptions;
}

/**
 * Creates a sanitized domain name.
 * @param prefix The desired prefix.
 * @param domain The base domain name.
 * @returns The full, sanitized domain name.
 */
const sanitizedDomainName = (prefix: string, domain: string): string => {
  // Domain names must be <= 64 characters.
  prefix = prefix
    .replace(/[^\w\d]/, ".")
    .substring(0, 63 - domain.length)
    .toLowerCase();
  return `${prefix}.${domain}`;
};

export class CustomAuthorizerIamStackEnvironment extends IntegrationTestStackEnvironment<
  AuthBaseEnvironmentProps & AuthCustomAuthorizerEnvironmentProps
> {
  constructor(
    scope: Construct,
    baseName: string,
    props: AuthBaseEnvironmentProps & AuthCustomAuthorizerEnvironmentProps
  ) {
    super(scope, baseName, props);

    const { customDomain } = props;
    let domainProperties: DomainProperties | undefined;
    if (customDomain) {
      // Domain names must be <= 64 characters.
      const domainName = sanitizedDomainName(this.name, customDomain);
      const hostedZone = route53.HostedZone.fromLookup(this, "HostedZone", {
        domainName: customDomain,
      });
      const certificate = new acm.Certificate(
        this,
        "SslCertificate",
        {
          domainName,
          validation: acm.CertificateValidation.fromDns(hostedZone),
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
      runtime: lambda.Runtime.NODEJS_18_X,
    });

    const apiGateway = new apigw.LambdaRestApi(this, "API", {
      handler: apiHandler,
      defaultCorsPreflightOptions: {
        allowOrigins: apigw.Cors.ALL_ORIGINS,
        allowHeaders: [
          ...apigw.Cors.DEFAULT_HEADERS,
          ...CUSTOM_HEADERS
        ],
        exposeHeaders: CUSTOM_HEADERS,
        allowCredentials: true,
        disableCache: true,
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
      new route53.AaaaRecord(this, "CustomDomainAaaaRecord", {
        zone: domainProperties.hostedZone,
        recordName: domainProperties.domainName,
        target: route53.RecordTarget.fromAlias(
          new targets.ApiGateway(apiGateway)
        ),
      })
    }

    // Create the Cognito Identity Pool with permissions to invoke the API.

    const identityPool = new cognito_identity.IdentityPool(this, "IdentityPool", {
      identityPoolName: this.name,
      allowUnauthenticatedIdentities: true,
    });

    const apiGwStatement = new iam.PolicyStatement({
      effect: iam.Effect.ALLOW,
      actions: ["execute-api:Invoke"],
      resources: [apiGateway.arnForExecuteApi()],
    });
    identityPool.unauthenticatedRole.addToPrincipalPolicy(apiGwStatement);

    let domainName = apiGateway.url;
    if (apiGateway.domainName?.domainName) {
      domainName = `https://${apiGateway.domainName?.domainName}/prod/`;
    }

    this.config = {
      apiConfig: {
        apis: {
          [apiGateway.restApiName]: {
            endpointType: "REST",
            endpoint: domainName,
            authorizationType: "AWS_IAM",
          },
        },
      },
      authConfig: {
        identityPoolConfig: {
          identityPoolId: identityPool.identityPoolId,
        },
      },
    };
  }
}
