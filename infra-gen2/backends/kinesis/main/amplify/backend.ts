import { defineBackend } from '@aws-amplify/backend';
import { auth } from './auth/resource';
import * as kinesis from 'aws-cdk-lib/aws-kinesis';
import { Duration } from 'aws-cdk-lib';
import { PolicyStatement } from 'aws-cdk-lib/aws-iam';

const backend = defineBackend({
    auth,
});

const kinesisStack = backend.createStack('KinesisStack');

const stream = new kinesis.Stream(kinesisStack, 'TestStream', {
    streamName: 'amplify-kinesis-test-stream',
    shardCount: 1,
    retentionPeriod: Duration.hours(24),
});

// Grant authenticated users permission to put records
backend.auth.resources.authenticatedUserIamRole.addToPrincipalPolicy(
    new PolicyStatement({
        actions: [
            'kinesis:PutRecord',
            'kinesis:PutRecords',
            'kinesis:DescribeStream',
        ],
        resources: [stream.streamArn],
    })
);
