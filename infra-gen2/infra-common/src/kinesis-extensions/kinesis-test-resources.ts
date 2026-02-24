// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as cdk from "aws-cdk-lib";
import { Stack } from "aws-cdk-lib";
import * as iam from "aws-cdk-lib/aws-iam";
import * as kinesis from "aws-cdk-lib/aws-kinesis";
import * as firehose from "aws-cdk-lib/aws-kinesisfirehose";
import * as s3 from "aws-cdk-lib/aws-s3";

/**
 * Creates AWS resources for Kinesis Data Streams and Amazon Data Firehose
 * E2E tests:
 *
 * - A Kinesis Data Stream (1 shard, 24h retention)
 * - An S3 bucket (Firehose destination)
 * - A Firehose delivery stream → S3
 * - An IAM user with PutRecords / PutRecordBatch permissions
 * - Access key with secret stored in Secrets Manager
 *
 * CloudFormation outputs are created for each value so the deploy
 * tooling can extract them for test configuration.
 */
export function addKinesisTestResources({
  name,
  stack,
}: {
  name: string;
  stack: Stack;
}) {
  // --- Kinesis Data Stream ---
  const stream = new kinesis.Stream(stack, "KinesisTestStream", {
    streamName: `${name}-data-stream`,
    shardCount: 1,
    retentionPeriod: cdk.Duration.hours(24),
    removalPolicy: cdk.RemovalPolicy.DESTROY,
  });

  // --- S3 bucket for Firehose destination ---
  const bucket = new s3.Bucket(stack, "FirehoseDestBucket", {
    removalPolicy: cdk.RemovalPolicy.DESTROY,
    autoDeleteObjects: true,
    enforceSSL: true,
  });

  // --- IAM role for Firehose → S3 ---
  const firehoseRole = new iam.Role(stack, "FirehoseS3Role", {
    assumedBy: new iam.ServicePrincipal("firehose.amazonaws.com"),
  });
  bucket.grantReadWrite(firehoseRole);

  // --- Firehose delivery stream ---
  const deliveryStream = new firehose.CfnDeliveryStream(
    stack,
    "FirehoseTestDeliveryStream",
    {
      deliveryStreamName: `${name}-delivery-stream`,
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

  // --- IAM user for E2E tests ---
  const testUser = new iam.User(stack, "KinesisTestUser", {
    userName: `${name}-e2e-user`,
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
    })
  );

  testUser.addToPolicy(
    new iam.PolicyStatement({
      effect: iam.Effect.ALLOW,
      actions: [
        "firehose:PutRecordBatch",
        "firehose:DescribeDeliveryStream",
      ],
      resources: [deliveryStream.attrArn],
    })
  );

  const accessKey = new iam.AccessKey(stack, "KinesisTestAccessKey", {
    user: testUser,
  });

  // Store secret in Secrets Manager
  const secret = new cdk.aws_secretsmanager.Secret(
    stack,
    "KinesisTestSecret",
    {
      secretStringValue: accessKey.secretAccessKey,
      description: `Secret access key for ${name} E2E test user`,
    }
  );

  // --- CloudFormation Outputs ---
  new cdk.CfnOutput(stack, "KinesisStreamName", {
    value: stream.streamName,
    description: "Kinesis Data Stream name for E2E tests",
  });

  new cdk.CfnOutput(stack, "FirehoseDeliveryStreamName", {
    value: deliveryStream.deliveryStreamName!,
    description: "Firehose delivery stream name for E2E tests",
  });

  new cdk.CfnOutput(stack, "TestAccessKeyId", {
    value: accessKey.accessKeyId,
    description: "Access key ID for E2E test user",
  });

  new cdk.CfnOutput(stack, "TestSecretAccessKeyArn", {
    value: secret.secretArn,
    description: "Secrets Manager ARN for E2E test user secret key",
  });

  new cdk.CfnOutput(stack, "TestRegion", {
    value: Stack.of(stack).region,
    description: "AWS region for E2E test resources",
  });
}
