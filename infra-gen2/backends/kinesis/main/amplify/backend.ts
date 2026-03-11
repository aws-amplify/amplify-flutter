import { defineBackend } from '@aws-amplify/backend';
import { Duration } from 'aws-cdk-lib';
import { PolicyStatement } from 'aws-cdk-lib/aws-iam';
import * as kinesis from 'aws-cdk-lib/aws-kinesis';
import { auth } from './auth/resource';

const backend = defineBackend({
  auth,
});

const kinesisStack = backend.createStack('KinesisStack');

const stream = new kinesis.Stream(kinesisStack, 'TestStream', {
  streamName: 'amplify-kinesis-test-stream',
  shardCount: 1,
  retentionPeriod: Duration.hours(24),
});

// grantWrite adds kinesis:PutRecord, kinesis:PutRecords, and the required
// kms:GenerateDataKey permission for the stream's encryption key.
stream.grantWrite(backend.auth.resources.authenticatedUserIamRole);

// DescribeStream is not included in grantWrite, so add it explicitly.
backend.auth.resources.authenticatedUserIamRole.addToPrincipalPolicy(
  new PolicyStatement({
    actions: ['kinesis:DescribeStream'],
    resources: [stream.streamArn],
  })
);
