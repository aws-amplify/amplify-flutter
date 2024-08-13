import * as appsync from "aws-cdk-lib/aws-appsync";
import * as dynamodb from "aws-cdk-lib/aws-dynamodb";
import { Stream } from "aws-cdk-lib/aws-kinesis";
import * as lambda from "aws-cdk-lib/aws-lambda";
import * as lambda_events from "aws-cdk-lib/aws-lambda-event-sources";
import { NodejsFunction } from "aws-cdk-lib/aws-lambda-nodejs";
import { RemovalPolicy, Stack } from "aws-cdk-lib/core";
import path from "path";
import { inOneYear } from "../expiration";

export function createAppSyncAPI(
  name: string,
  stack: Stack,
  kinesisStream: Stream
) {
  // Create the Records table to store events received from the
  // Kinesis stream.

  const recordsTable = new dynamodb.Table(stack, "RecordsTable" + name, {
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
  const graphQLApi = new appsync.GraphqlApi(stack, "GraphQLApi" + name, {
    name: stack.stackName,
    definition: {
      schema: appsync.SchemaFile.fromAsset(
        path.resolve(__dirname, "..", "schemas", "analytics-schema.graphql")
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

  const kinesisConsumer = new NodejsFunction(stack, "kinesis-consumer", {
    entry: path.resolve(
      __dirname,
      "..",
      "lambda-triggers",
      "kinesis-consumer.js"
    ),
    runtime: lambda.Runtime.NODEJS_20_X,
    environment: {
      GRAPHQL_API_ENDPOINT: graphQLApi.graphqlUrl,
      GRAPHQL_API_KEY: graphQLApi.apiKey!,
    },
  });

  const eventSource = new lambda_events.KinesisEventSource(kinesisStream, {
    startingPosition: lambda.StartingPosition.TRIM_HORIZON,
  });

  kinesisConsumer.addEventSource(eventSource);

  return graphQLApi;
}
