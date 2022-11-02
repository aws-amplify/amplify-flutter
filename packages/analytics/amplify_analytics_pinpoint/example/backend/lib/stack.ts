// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.

import * as cdk from "aws-cdk-lib";
import { Construct } from "constructs";
import * as cognito from "aws-cdk-lib/aws-cognito";
import * as pinpoint from "aws-cdk-lib/aws-pinpoint";
import * as kinesis from "aws-cdk-lib/aws-kinesis";
import * as iam from "aws-cdk-lib/aws-iam";
import * as lambda from "aws-cdk-lib/aws-lambda";
import * as lambda_nodejs from "aws-cdk-lib/aws-lambda-nodejs";
import * as lambda_events from "aws-cdk-lib/aws-lambda-event-sources";
import * as appsync from "@aws-cdk/aws-appsync-alpha";
import * as dynamodb from "aws-cdk-lib/aws-dynamodb";
import * as s3 from "aws-cdk-lib/aws-s3";
import * as path from "path";
import {
  CfnOutput,
  Duration,
  Expiration,
  Fn,
  RemovalPolicy,
} from "aws-cdk-lib";

export class AnalyticsIntegrationTestStack extends cdk.Stack {
  constructor(scope: Construct, id: string, props?: cdk.StackProps) {
    super(scope, id, props);

    const name = "analyticsIntegrationTest";

    const pinpointApp = new pinpoint.CfnApp(this, "PinpointApp", {
      name,
    });

    // Create the Cognito Identity Pool with permission to put events
    // to the `pinpointApp`.

    const identityPool = new cognito.CfnIdentityPool(this, "IdentityPool", {
      identityPoolName: name,
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
        pinpoint: new iam.PolicyDocument({
          statements: [
            new iam.PolicyStatement({
              effect: iam.Effect.ALLOW,
              actions: [
                "mobiletargeting:PutEvents",
                "mobiletargeting:UpdateEndpoint",
              ],
              resources: [
                // All subresources on the Pinpoint app. This is how Amplify
                // does it even though it can probably be tweaked for the
                // the two actions above:
                // https://docs.aws.amazon.com/pinpoint/latest/developerguide/permissions-actions.html
                `${pinpointApp.attrArn}*`,
              ],
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

    // Create a Kinesis Data Stream and configure Pinpoint to stream
    // events to it.

    const kinesisStream = new kinesis.Stream(this, "KinesisStream", {
      streamName: name,
      shardCount: 1,
    });

    // Necessary IAM permissions are described here:
    // https://docs.aws.amazon.com/pinpoint/latest/developerguide/permissions-streams.html
    const eventStreamRole = new iam.Role(this, "EventStreamRole", {
      assumedBy: new iam.ServicePrincipal("pinpoint.amazonaws.com", {
        conditions: {
          StringEquals: {
            "aws:SourceAccount":
              props?.env?.account ?? process.env.CDK_DEFAULT_ACCOUNT,
          },
          ArnLike: {
            "aws:SourceArn": pinpointApp.attrArn,
          },
        },
      }),
      inlinePolicies: {
        "pinpoint-export-to-kinesis": new iam.PolicyDocument({
          statements: [
            new iam.PolicyStatement({
              effect: iam.Effect.ALLOW,
              actions: ["kinesis:PutRecords", "kinesis:DescribeStream"],
              resources: [kinesisStream.streamArn],
            }),
          ],
        }),
      },
    });

    new pinpoint.CfnEventStream(this, "PinpointEventStream", {
      applicationId: pinpointApp.ref,
      destinationStreamArn: kinesisStream.streamArn,
      roleArn: eventStreamRole.roleArn,
    });

    // Create the Records table to store events received from the
    // Kinesis stream.

    const recordsTable = new dynamodb.Table(this, "RecordsTable", {
      removalPolicy: RemovalPolicy.DESTROY,
      billingMode: dynamodb.BillingMode.PAY_PER_REQUEST,
      partitionKey: {
        type: dynamodb.AttributeType.STRING,
        name: "id",
      },
    });

    // Create the GraphQL API to which we will publish Kinesis records
    // Adapted from: https://github.com/Focus-Otter/appsync-simple-auth-backend

    const graphQLApi = new appsync.GraphqlApi(this, "GraphQLApi", {
      name,
      schema: appsync.Schema.fromAsset(
        path.resolve(__dirname, "schema.graphql")
      ),
      authorizationConfig: {
        defaultAuthorization: {
          authorizationType: appsync.AuthorizationType.API_KEY,
          apiKeyConfig: {
            expires: Expiration.after(Duration.days(365)),
          },
        },
      },
      logConfig: {
        fieldLogLevel: appsync.FieldLogLevel.ALL,
        excludeVerboseContent: false,
      },
    });

    graphQLApi
      .addDynamoDbDataSource("GraphQLApiGetRecord", recordsTable)
      .createResolver({
        typeName: "Query",
        fieldName: "getRecord",
        requestMappingTemplate: appsync.MappingTemplate.dynamoDbGetItem(
          "id",
          "id"
        ),
        responseMappingTemplate: appsync.MappingTemplate.dynamoDbResultItem(),
      });

    graphQLApi
      .addDynamoDbDataSource("GraphQLApiListRecords", recordsTable)
      .createResolver({
        typeName: "Query",
        fieldName: "listRecords",
        requestMappingTemplate: appsync.MappingTemplate.dynamoDbScanTable(),
        responseMappingTemplate: appsync.MappingTemplate.dynamoDbResultList(),
      });

    graphQLApi
      .addDynamoDbDataSource("GraphQLApiCreateRecord", recordsTable)
      .createResolver({
        typeName: "Mutation",
        fieldName: "createRecord",
        requestMappingTemplate: appsync.MappingTemplate.dynamoDbPutItem(
          appsync.PrimaryKey.partition("id").is("input.id"),
          appsync.Values.projecting("input")
        ),
        responseMappingTemplate: appsync.MappingTemplate.dynamoDbResultItem(),
      });

    // Create the Kinesis consumer Lambda which will capture events from the
    // Kinesis Data Stream and forward them to AppSync.

    const kinesisConsumer = new lambda_nodejs.NodejsFunction(
      this,
      "kinesis-consumer",
      {
        runtime: lambda.Runtime.NODEJS_16_X,
        environment: {
          GRAPHQL_API_ENDPOINT: graphQLApi.graphqlUrl,
          GRAPHQL_API_KEY: graphQLApi.apiKey!,
        },
      }
    );

    const eventSource = new lambda_events.KinesisEventSource(kinesisStream, {
      startingPosition: lambda.StartingPosition.TRIM_HORIZON,
    });

    kinesisConsumer.addEventSource(eventSource);

    // S3 bucket to store generated config so that it can be pulled by
    // CI pipelines.

    const bucket = new s3.Bucket(this, "Bucket", {
      // Naming to match Amplify CLI, suffixed with a segment of the stack ID
      // https://github.com/aws-amplify/amplify-ci-support/blob/1abe7f7a1d75fa19675ad8ca17ab625a299b765e/src/integ_test_resources/flutter/amplify/cloudformation_template.yaml#L32
      bucketName: Fn.join("-", [
        `amplify-test-${name.toLowerCase()}`,
        // https://stackoverflow.com/questions/54897459/how-to-set-semi-random-name-for-s3-bucket-using-cloud-formation
        Fn.select(0, Fn.split("-", Fn.select(2, Fn.split("/", this.stackId)))),
      ]),
      removalPolicy: RemovalPolicy.DESTROY,
      autoDeleteObjects: true,
      enforceSSL: true,
    });

    // Output the values needed to build our Amplify configuration.

    new CfnOutput(this, "Region", {
      value: (props?.env?.region ?? process.env.CDK_DEFAULT_REGION)!,
    });

    new CfnOutput(this, "IdentityPoolId", {
      value: identityPool.ref,
    });

    new CfnOutput(this, "PinpointAppId", {
      value: pinpointApp.ref,
    });

    new CfnOutput(this, "GraphQLApiEndpoint", {
      value: graphQLApi.graphqlUrl,
    });

    new CfnOutput(this, "GraphQLApiKey", {
      value: graphQLApi.apiKey!,
    });

    new CfnOutput(this, "BucketName", {
      value: bucket.bucketName,
    });
  }
}
