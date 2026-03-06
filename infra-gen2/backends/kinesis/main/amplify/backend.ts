// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { defineBackend } from "@aws-amplify/backend";
import { Duration, RemovalPolicy } from "aws-cdk-lib";
import * as iam from "aws-cdk-lib/aws-iam";
import * as kinesis from "aws-cdk-lib/aws-kinesis";
import * as firehose from "aws-cdk-lib/aws-kinesisfirehose";
import * as s3 from "aws-cdk-lib/aws-s3";
import { auth } from "./auth/resource";

const backend = defineBackend({
  auth,
});

const kinesisStack = backend.createStack("KinesisStack");

// --- Kinesis Data Stream ---
const stream = new kinesis.Stream(kinesisStack, "TestStream", {
  streamName: "amplify-kinesis-test-stream",
  shardCount: 1,
  retentionPeriod: Duration.hours(24),
});

// --- S3 bucket (Firehose destination) ---
const bucket = new s3.Bucket(kinesisStack, "FirehoseDestBucket", {
  removalPolicy: RemovalPolicy.DESTROY,
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
    deliveryStreamName: "amplify-kinesis-test-delivery-stream",
    s3DestinationConfiguration: {
      bucketArn: bucket.bucketArn,
      roleArn: firehoseRole.roleArn,
      prefix: "e2e-test/",
      bufferingHints: {
        intervalInSeconds: 60,
        sizeInMBs: 1,
      },
    },
  }
);

// Grant authenticated users permission to put records to Kinesis Data Streams
backend.auth.resources.authenticatedUserIamRole.addToPrincipalPolicy(
  new iam.PolicyStatement({
    actions: [
      "kinesis:PutRecord",
      "kinesis:PutRecords",
      "kinesis:DescribeStream",
    ],
    resources: [stream.streamArn],
  })
);

// Grant authenticated users permission to put records to Firehose
backend.auth.resources.authenticatedUserIamRole.addToPrincipalPolicy(
  new iam.PolicyStatement({
    actions: [
      "firehose:PutRecord",
      "firehose:PutRecordBatch",
      "firehose:DescribeDeliveryStream",
    ],
    resources: [deliveryStream.attrArn],
  })
);
