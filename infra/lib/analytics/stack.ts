// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as cognito_identity from "@aws-cdk/aws-cognito-identitypool-alpha";
import * as cdk from "aws-cdk-lib";
import { Duration, Expiration, RemovalPolicy, Stack } from "aws-cdk-lib";
import * as appsync from "aws-cdk-lib/aws-appsync";
import * as dynamodb from "aws-cdk-lib/aws-dynamodb";
import * as iam from "aws-cdk-lib/aws-iam";
import * as kinesis from "aws-cdk-lib/aws-kinesis";
import * as lambda from "aws-cdk-lib/aws-lambda";
import * as lambda_events from "aws-cdk-lib/aws-lambda-event-sources";
import * as lambda_nodejs from "aws-cdk-lib/aws-lambda-nodejs";
import * as pinpoint from "aws-cdk-lib/aws-pinpoint";
import { Construct } from "constructs";
import * as path from "path";
import {
  AmplifyCategory,
  IntegrationTestStack,
  IntegrationTestStackEnvironment,
  IntegrationTestStackEnvironmentProps
} from "../common";

export interface AnalyticsIntegrationTestStackEnvironmentProps extends IntegrationTestStackEnvironmentProps {
  /**
   * Whether unauthenticated users are allowed to access Pinpoint resources.
   * 
   * @default true
   */
  allowUnauthAccess?: boolean;

  /**
   * Whether the identity pool supports unauthenticated identities.
   * 
   * @default true
   */
  allowUnauthIdentites?: boolean;
}

export class AnalyticsIntegrationTestStack extends IntegrationTestStack<
  AnalyticsIntegrationTestStackEnvironmentProps,
  AnalyticsIntegrationTestStackEnvironment
> {
  constructor(
    scope: Construct,
    environments: AnalyticsIntegrationTestStackEnvironmentProps[],
    props?: cdk.NestedStackProps
  ) {
    super({
      scope,
      category: AmplifyCategory.Analytics,
      environments,
      props,
    });
  }

  protected buildEnvironments(
    props: AnalyticsIntegrationTestStackEnvironmentProps[]
  ): AnalyticsIntegrationTestStackEnvironment[] {
    return props.map(
      (environment) =>
        new AnalyticsIntegrationTestStackEnvironment(
          this,
          this.baseName,
          environment
        )
    );
  }
}

class AnalyticsIntegrationTestStackEnvironment extends IntegrationTestStackEnvironment<AnalyticsIntegrationTestStackEnvironmentProps> {
  constructor(
    scope: Construct,
    baseName: string,
    props: AnalyticsIntegrationTestStackEnvironmentProps
  ) {
    super(scope, baseName, props);

    const { allowUnauthAccess = true, allowUnauthIdentites = true } = props;

    const pinpointApp = new pinpoint.CfnApp(this, "PinpointApp", {
      name: this.name,
    });

    // Create the Cognito Identity Pool with permission to put events
    // to the `pinpointApp`.

    const identityPool = new cognito_identity.IdentityPool(this, "IdentityPool", {
      allowUnauthenticatedIdentities: allowUnauthIdentites,
    });

    const pinpointStatement = new iam.PolicyStatement({
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
    });
    if (allowUnauthAccess) {
      identityPool.unauthenticatedRole.addToPrincipalPolicy(pinpointStatement);
    }

    // Create a Kinesis Data Stream and configure Pinpoint to stream
    // events to it.

    const kinesisStream = new kinesis.Stream(this, "KinesisStream", {
      shardCount: 1,
    });

    // Necessary IAM permissions are described here:
    // https://docs.aws.amazon.com/pinpoint/latest/developerguide/permissions-streams.html
    const eventStreamRole = new iam.Role(this, "EventStreamRole", {
      assumedBy: new iam.ServicePrincipal("pinpoint.amazonaws.com", {
        conditions: {
          StringEquals: {
            "aws:SourceAccount": Stack.of(this).account,
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

    const authorizationType = appsync.AuthorizationType.API_KEY;
    const graphQLApi = new appsync.GraphqlApi(this, "GraphQLApi", {
      name: this.name,
      schema: appsync.SchemaFile.fromAsset(
        path.resolve(__dirname, "schema.graphql")
      ),
      authorizationConfig: {
        defaultAuthorization: {
          authorizationType,
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
      .createResolver("QueryGetRecordResolver", {
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
      .createResolver("QueryListRecordsResolver", {
        typeName: "Query",
        fieldName: "listRecords",
        requestMappingTemplate: appsync.MappingTemplate.dynamoDbScanTable(),
        responseMappingTemplate: appsync.MappingTemplate.dynamoDbResultList(),
      });

    graphQLApi
      .addDynamoDbDataSource("GraphQLApiCreateRecord", recordsTable)
      .createResolver("MutationCreateRecordResolver", {
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
        runtime: lambda.Runtime.NODEJS_18_X,
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

    // Output the values needed to build our Amplify configuration.

    this.config = {
      analyticsConfig: {
        appId: pinpointApp.ref,
      },
      apiConfig: {
        apis: {
          [graphQLApi.name]: {
            endpointType: "GraphQL",
            endpoint: graphQLApi.graphqlUrl,
            authorizationType,
            apiKey: graphQLApi.apiKey,
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
