// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as cdk from "aws-cdk-lib";
import * as iam from "aws-cdk-lib/aws-iam";
import * as kinesis from "aws-cdk-lib/aws-kinesis";
import * as firehose from "aws-cdk-lib/aws-kinesisfirehose";
import * as s3 from "aws-cdk-lib/aws-s3";
import * as secretsmanager from "aws-cdk-lib/aws-secretsmanager";
import { Construct } from "constructs";

/**
 * Provisions Kinesis Data Streams and Amazon Data Firehose resources
 * for E2E testing, along with an IAM user with scoped permissions.
 *
 * Credentials and resource names are stored in a dedicated Secrets Manager
 * secret (`kinesis-e2e`) as a JSON object, consumed by CI via
 * `aws-secretsmanager-get-secrets` with `parse-json-secrets: true`.
 */
export class KinesisTestResources extends Construct {
  /** The Secrets Manager secret containing all kinesis E2E config. */
  readonly secret: secretsmanager.Secret;

  constructor(scope: Construct, id: string) {
    super(scope, id);

    // --- Kinesis Data Stream ---
    const stream = new kinesis.Stream(this, "TestStream", {
      streamName: "kinesis-e2e-data-stream",
      shardCount: 1,
      retentionPeriod: cdk.Duration.hours(24),
      removalPolicy: cdk.RemovalPolicy.DESTROY,
    });

    // --- S3 bucket (Firehose destination) ---
    const bucket = new s3.Bucket(this, "FirehoseDestBucket", {
      removalPolicy: cdk.RemovalPolicy.DESTROY,
      autoDeleteObjects: true,
      enforceSSL: true,
    });

    // --- IAM role for Firehose → S3 ---
    const firehoseRole = new iam.Role(this, "FirehoseS3Role", {
      assumedBy: new iam.ServicePrincipal("firehose.amazonaws.com"),
    });
    bucket.grantReadWrite(firehoseRole);

    // --- Firehose delivery stream ---
    const deliveryStream = new firehose.CfnDeliveryStream(
      this,
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
      }
    );

    // --- IAM user for E2E tests ---
    const testUser = new iam.User(this, "TestUser", {
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

    const accessKey = new iam.AccessKey(this, "TestAccessKey", {
      user: testUser,
    });

    // Store all E2E config in a single secret for CI consumption.
    // Keys are prefixed with KINESIS_E2E_ after parse-json-secrets expansion.
    this.secret = new secretsmanager.Secret(this, "KinesisE2ESecret", {
      secretName: "kinesis-e2e",
      description: "Kinesis E2E test credentials and resource names",
      secretObjectValue: {
        ACCESS_KEY_ID: cdk.SecretValue.unsafePlainText(accessKey.accessKeyId),
        SECRET_ACCESS_KEY: accessKey.secretAccessKey,
        STREAM_NAME: cdk.SecretValue.unsafePlainText(stream.streamName),
        DELIVERY_STREAM_NAME: cdk.SecretValue.unsafePlainText(
          deliveryStream.deliveryStreamName!
        ),
      },
    });
  }
}
