import { defineBackend } from "@aws-amplify/backend";
import { Duration, Expiration, RemovalPolicy, Stack } from "aws-cdk-lib";
import * as appsync from "aws-cdk-lib/aws-appsync";
import * as dynamodb from "aws-cdk-lib/aws-dynamodb";
import * as iam from "aws-cdk-lib/aws-iam";
import * as kinesis from "aws-cdk-lib/aws-kinesis";
import * as lambda from "aws-cdk-lib/aws-lambda";
import * as lambda_events from "aws-cdk-lib/aws-lambda-event-sources";
import * as lambda_nodejs from "aws-cdk-lib/aws-lambda-nodejs";
import * as pinpoint from "aws-cdk-lib/aws-pinpoint";
import * as path from "path";
import { auth } from "./auth/resource";

const __dirname = path.resolve();

/**
 * @see https://docs.amplify.aws/react/build-a-backend/ to add storage, functions, and more
 */

const backend = defineBackend({
  auth,
});

// const analyticsStack = backend.createStack("analytics-main-stack");

// // create a Pinpoint app
// const pinpoint = new CfnApp(analyticsStack, "Pinpoint", {
//   name: "analytics-main",
// });

// // create an IAM policy to allow interacting with Pinpoint
// const pinpointPolicy = new Policy(analyticsStack, "PinpointPolicy", {
//   policyName: "PinpointPolicy",
//   statements: [
//     new PolicyStatement({
//       actions: ["mobiletargeting:UpdateEndpoint", "mobiletargeting:PutEvents"],
//       resources: [pinpoint.attrArn + "/*"],
//     }),
//   ],
// });

// // apply the policy to the authenticated and unauthenticated roles
// backend.auth.resources.authenticatedUserIamRole.attachInlinePolicy(
//   pinpointPolicy
// );
// backend.auth.resources.unauthenticatedUserIamRole.attachInlinePolicy(
//   pinpointPolicy
// );

const pinpointRole = backend.auth.resources.authenticatedUserIamRole;
const unauthPinpointRole = backend.auth.resources.unauthenticatedUserIamRole;

const resources = backend.auth.resources;
const { userPool, cfnResources } = resources;
const { stack } = userPool;

// const customOutputs = addAnalyticsExtensions({
//   name: "analytics-main",
//   stack: stack,
//   authenticatedRole: pinpointRole,
//   unauthenticatedRole: unauthPinpointRole,
// });

// patch the custom Pinpoint resource to the expected output configuration
// backend.addOutput(customOutputs);

/// *** OLD GEN 1 BACKEND *** ///
// Create a Kinesis Data Stream and configure Pinpoint to stream
// events to it.

const inOneYear = (): Expiration => {
  const now = new Date();
  const oneYearMillis = Duration.days(365).toMilliseconds();
  const oneYear = new Date(now.getTime() + oneYearMillis);
  oneYear.setHours(0, 0, 0, 0);
  return Expiration.atDate(oneYear);
};

const pinpointApp = new pinpoint.CfnApp(stack, "PinpointApp", {
  name: "pinpoint-app-analytics-main",
});

const kinesisStream = new kinesis.Stream(stack, "KinesisStream", {
  shardCount: 1,
});

// Necessary IAM permissions are described here:
// https://docs.aws.amazon.com/pinpoint/latest/developerguide/permissions-streams.html
const eventStreamRole = new iam.Role(stack, "EventStreamRole", {
  assumedBy: new iam.ServicePrincipal("pinpoint.amazonaws.com", {
    conditions: {
      StringEquals: {
        "aws:SourceAccount": Stack.of(stack).account,
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

new pinpoint.CfnEventStream(stack, "PinpointEventStream", {
  applicationId: pinpointApp.ref,
  destinationStreamArn: kinesisStream.streamArn,
  roleArn: eventStreamRole.roleArn,
});

// Create the Records table to store events received from the
// Kinesis stream.

const recordsTable = new dynamodb.Table(stack, "RecordsTable", {
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
const graphQLApi = new appsync.GraphqlApi(stack, "GraphQLApi", {
  name: "main-analytics-stack",
  definition: {
    schema: appsync.SchemaFile.fromAsset(
      path.resolve(__dirname, "schema.graphql")
    ),
  },
  authorizationConfig: {
    defaultAuthorization: {
      authorizationType,
      apiKeyConfig: {
        expires: inOneYear(),
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
    requestMappingTemplate: appsync.MappingTemplate.dynamoDbGetItem("id", "id"),
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
  stack,
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
