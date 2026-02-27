// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { defineBackend } from "@aws-amplify/backend";
import * as cdk from "aws-cdk-lib";
import * as iam from "aws-cdk-lib/aws-iam";
import * as kinesis from "aws-cdk-lib/aws-kinesis";
import * as firehose from "aws-cdk-lib/aws-kinesisfirehose";
import * as s3 from "aws-cdk-lib/aws-s3";
import * as secretsmanager from "aws-cdk-lib/aws-secretsmanager";

/**
 * Kinesis E2E test backend.
 *
 * No Amplify categories (auth, storage, etc.) are needed — we only use the
 * Amplify backend as an entry-point into CDK to provision Kinesis Data
 * Streams and Amazon Data Firehose resources for E2E testing.
 */
const backend = defineBackend({});

const kinesisStack = backend.createStack("KinesisTestResources");

// --- Kinesis Data Stream ---
const stream = new kinesis.Stream(kinesisStack, "TestStream", {
  streamName: "kinesis-e2e-data-stream",
  shardCount: 1,
  retentionPeriod: cdk.Duration.hours(24),
  removalPolicy: cdk.RemovalPolicy.DESTROY,
});

// --- S3 bucket (Firehose destination) ---
const bucket = new s3.Bucket(kinesisStack, "FirehoseDestBucket", {
  removalPolicy: cdk.RemovalPolicy.DESTROY,
  autoDeleteObjects: true,
  enforceSSL: true,
});

// --- IAM role for Firehose → S3 ---
const firehoseRole = new iam.Role(kinesisStack, "FirehoseS3Role", {
  assumedBy: new iam.ServicePrincipal("firehose.amazonaws.com"),
});
bucket.grantReadWrite(firehoseRole);

// --- Firehose delivery stream ---
const deliveryStream = new firehose.CfnDeliveryStream(
  kinesisStack,
  "TestDeliveryStream",
  {
    deliveryStreamName: "kinesis-e2e-delivery-stream",
    s3DestinationConfiguration: {
      bucketArn: bucket.bucketArn,
      roleArn: firehoseRole.roleArn,
      prefix: "e2e-test/",
      bufferingHints: {
        intervalInSeconds: 60,
        sizeInMBs: 1,
      },
    },
  },
);

// --- IAM user for E2E tests ---
const testUser = new iam.User(kinesisStack, "TestUser", {
  userName: "kinesis-e2e-test-user",
});

testUser.addToPolicy(
  new iam.PolicyStatement({
    effect: iam.Effect.ALLOW,
    actions: [
      "kinesis:PutRecords",
      "kinesis:DescribeStream",
      "kinesis:ListShards",
    ],
    resources: [stream.streamArn],
  }),
);

testUser.addToPolicy(
  new iam.PolicyStatement({
    effect: iam.Effect.ALLOW,
    actions: [
      "firehose:PutRecordBatch",
      "firehose:DescribeDeliveryStream",
    ],
    resources: [deliveryStream.attrArn],
  }),
);

const accessKey = new iam.AccessKey(kinesisStack, "TestAccessKey", {
  user: testUser,
});

// Store all E2E config in a single Secrets Manager secret.
// Keys are prefixed with KINESIS_E2E_ after parse-json-secrets expansion in CI.
new secretsmanager.Secret(kinesisStack, "KinesisE2ESecret", {
  secretName: "kinesis-e2e",
  description: "Kinesis E2E test credentials and resource names",
  secretObjectValue: {
    ACCESS_KEY_ID: cdk.SecretValue.unsafePlainText(accessKey.accessKeyId),
    SECRET_ACCESS_KEY: accessKey.secretAccessKey,
    STREAM_NAME: cdk.SecretValue.unsafePlainText(stream.streamName),
    DELIVERY_STREAM_NAME: cdk.SecretValue.unsafePlainText(
      deliveryStream.deliveryStreamName!,
    ),
  },
});
