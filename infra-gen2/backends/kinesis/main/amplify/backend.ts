// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import { defineBackend } from "@aws-amplify/backend";
import * as cdk from "aws-cdk-lib";
import * as iam from "aws-cdk-lib/aws-iam";
import * as kinesis from "aws-cdk-lib/aws-kinesis";
import * as firehose from "aws-cdk-lib/aws-kinesisfirehose";
import * as s3 from "aws-cdk-lib/aws-s3";

/**
 * Kinesis E2E test backend.
 *
 * Provisions Kinesis Data Streams and Amazon Data Firehose resources
 * for E2E testing. No Amplify categories are needed — the Amplify
 * backend is used only as a CDK entry-point.
 *
 * Test credentials and resource names are stored in a dedicated
 * Secrets Manager secret managed outside this stack.
 */
const backend = defineBackend({});

const kinesisStack = backend.createStack("KinesisTestResources");

// --- Kinesis Data Stream ---
new kinesis.Stream(kinesisStack, "TestStream", {
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
new firehose.CfnDeliveryStream(
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
