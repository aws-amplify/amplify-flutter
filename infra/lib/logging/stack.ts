// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as cognito_identity from "@aws-cdk/aws-cognito-identitypool-alpha";
import * as cdk from "aws-cdk-lib";
import * as iam from "aws-cdk-lib/aws-iam";
import * as logs from "aws-cdk-lib/aws-logs";
import { BucketDeployment, Source } from "aws-cdk-lib/aws-s3-deployment";
import * as constructs from "constructs";
import * as path from "path";
import {
  IntegrationTestStackEnvironment,
  IntegrationTestStackEnvironmentProps,
  randomBucketName,
} from "../common";

import * as api_gateway from "aws-cdk-lib/aws-apigateway";
import * as lambda from "aws-cdk-lib/aws-lambda";
import * as lambda_node from "aws-cdk-lib/aws-lambda-nodejs";
import * as s3 from "aws-cdk-lib/aws-s3";

export class LoggingIntegrationTestStack extends cdk.Stack {
  constructor(
    scope: constructs.Construct,
    id: string,
    environments: LoggingIntegrationTestStackEnvironmentProps[],
    props?: cdk.NestedStackProps
  ) {
    super(scope, id, props);

    this.buildEnvironments(environments);
  }

  protected buildEnvironments(
    environments: LoggingIntegrationTestStackEnvironmentProps[]
  ): void {
    environments.forEach((envProps) => {
      new LoggingIntegrationTestStackEnvironment(
        this,
        `${this.stackName}-Env-${envProps.environmentName}`,
        envProps
      );
    });
  }
}

export class LoggingIntegrationTestStackEnvironment extends IntegrationTestStackEnvironment<LoggingIntegrationTestStackEnvironmentProps> {
  constructor(
    scope: constructs.Construct,
    baseName: string,
    props: LoggingIntegrationTestStackEnvironmentProps
  ) {
    super(scope, baseName, props);

    const region = cdk.Stack.of(this).region;
    const account = cdk.Stack.of(this).account;
    const bucketName = randomBucketName({
      prefix: "amplify-logging-test-bucket",
      stack: this,
    });

    const logGroup = new logs.LogGroup(this, "Log Group", {
      retention: logs.RetentionDays.INFINITE,
    });

    const identityPool = new cognito_identity.IdentityPool(
      this,
      "IdentityPool",
      {
        allowUnauthenticatedIdentities: true,
      }
    );

    const authRole = identityPool.authenticatedRole;
    const unAuthRole = identityPool.unauthenticatedRole;

    const logResource = `arn:aws:logs:${region}:${account}:log-group:${logGroup.logGroupName}:log-stream:*`;
    const logIAMPolicy = new iam.PolicyStatement({
      effect: iam.Effect.ALLOW,
      resources: [logResource],
      actions: [
        "logs:PutLogEvents",
        "logs:DescribeLogStreams",
        "logs:CreateLogStream",
      ],
    });

    authRole.addToPrincipalPolicy(logIAMPolicy);
    unAuthRole.addToPrincipalPolicy(logIAMPolicy);

    // remote config
    if (props.remoteConfig) {
      const loggingConfigLocation =
        "lib/logging/resources/config/remoteloggingconstraints.json";
      const lambdaConfig = "lib/logging/resources/lambda/remoteconfig.ts";
      const configFileName = "remoteloggingconstraints.json";

      // Create a bucket for the remote config
      const remoteConfigBucket = new s3.Bucket(
        this,
        "AmplifyRemoteLogging-Bucket",
        {
          publicReadAccess: false,
          versioned: true,
          removalPolicy: cdk.RemovalPolicy.DESTROY,
          autoDeleteObjects: true,
          enforceSSL: true,
          blockPublicAccess: s3.BlockPublicAccess.BLOCK_ALL,
        }
      );

      // Deploy the remote config to the bucket
      new BucketDeployment(this, "AmplifyRemoteLogging-BucketDeployment", {
        sources: [Source.asset(path.dirname(loggingConfigLocation))],
        destinationBucket: remoteConfigBucket,
        destinationKeyPrefix: "config",
      });

      // Create a lambda function to handle the remote config
      const handler = new lambda_node.NodejsFunction(
        this,
        "AmplifyRemoteLogging-Handler",
        {
          runtime: lambda.Runtime.NODEJS_18_X,
          entry: lambdaConfig,
          handler: "remotelogging.main",
          environment: {
            BUCKET: bucketName,
            KEY: configFileName,
          },
        }
      );

      // Grant the lambda function read access to the remote config bucket
      remoteConfigBucket.grantRead(handler);

      // Create an API Gateway endpoint for the remote config
      const api = new api_gateway.RestApi(this, "AmplifyRemoteLogging-Api", {
        restApiName: "AmplifyRemoteLogging-Api",
        description: "This is an API Gateway endpoint for remote logging",
      });

      // Create a GET method for the API Gateway endpoint
      const getRemoteLoggingIntegration = new api_gateway.LambdaIntegration(
        handler
      );

      // Create a resource for the GET method
      const loggingConstraints = api.root.addResource("loggingconstraints");

      // Add the GET method to the resource
      const getLoggingConstraints = loggingConstraints.addMethod(
        "GET",
        getRemoteLoggingIntegration,
        {
          authorizationType: api_gateway.AuthorizationType.IAM,
        }
      );

      // Add a policy to allow the API Gateway endpoint to be invoked
      const apiInvokePolicy = new iam.PolicyStatement({
        effect: iam.Effect.ALLOW,
        resources: [getLoggingConstraints.methodArn],
        actions: ["execute-api:Invoke"],
      });

      authRole.addToPrincipalPolicy(apiInvokePolicy);
      unAuthRole.addToPrincipalPolicy(apiInvokePolicy);

      new cdk.CfnOutput(this, "APIEndpoint", {
        value: `https://${api.restApiId}.execute-api.${region}.amazonaws.com/prod/loggingconstraints`,
      });

      new cdk.CfnOutput(this, "CloudWatchLogGroupName", {
        value: logGroup.logGroupName,
      });
      new cdk.CfnOutput(this, "CloudWatchRegion", { value: region });
    }
  }
}

interface LoggingIntegrationTestStackEnvironmentProps
  extends IntegrationTestStackEnvironmentProps {
  /**
   * Allow remote config
   */
  remoteConfig?: boolean;
}
