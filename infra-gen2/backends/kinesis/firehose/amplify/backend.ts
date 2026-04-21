import { defineBackend } from '@aws-amplify/backend';
import { Duration, RemovalPolicy } from 'aws-cdk-lib';
import * as iam from 'aws-cdk-lib/aws-iam';
import * as firehose from 'aws-cdk-lib/aws-kinesisfirehose';
import * as s3 from 'aws-cdk-lib/aws-s3';
import { auth } from './auth/resource';

const backend = defineBackend({
    auth,
});

const firehoseStack = backend.createStack('FirehoseStack');

// S3 bucket as the delivery destination
const deliveryBucket = new s3.Bucket(firehoseStack, 'DeliveryBucket', {
    removalPolicy: RemovalPolicy.DESTROY,
    autoDeleteObjects: true,
    lifecycleRules: [
        {
            expiration: Duration.days(1),
        },
    ],
});

// IAM role for Firehose to write to S3
const firehoseRole = new iam.Role(firehoseStack, 'FirehoseDeliveryRole', {
    assumedBy: new iam.ServicePrincipal('firehose.amazonaws.com'),
});

deliveryBucket.grantReadWrite(firehoseRole);

// Firehose delivery stream
const deliveryStream = new firehose.CfnDeliveryStream(
    firehoseStack,
    'TestDeliveryStream',
    {
        deliveryStreamName: 'amplify-firehose-test-stream',
        s3DestinationConfiguration: {
            bucketArn: deliveryBucket.bucketArn,
            roleArn: firehoseRole.roleArn,
            bufferingHints: {
                intervalInSeconds: 60,
                sizeInMBs: 1,
            },
        },
    }
);

// Grant authenticated users permission to put records
backend.auth.resources.authenticatedUserIamRole.addToPrincipalPolicy(
    new iam.PolicyStatement({
        actions: [
            'firehose:PutRecord',
            'firehose:PutRecordBatch',
            'firehose:DescribeDeliveryStream',
        ],
        resources: [deliveryStream.attrArn],
    })
);
