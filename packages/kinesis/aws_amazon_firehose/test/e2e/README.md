# E2E Tests for Amazon Data Firehose

These tests verify the library works correctly against real AWS resources.

## Prerequisites

1. An AWS account with access to Amazon Data Firehose
2. A Firehose delivery stream created in your account
3. AWS credentials with permissions to write to the delivery stream

## Setup

1. Edit `test_config.dart` and fill in your credentials:

```dart
const bool isConfigured = true;
const String testAccessKeyId = 'YOUR_ACCESS_KEY_ID';
const String testSecretAccessKey = 'YOUR_SECRET_ACCESS_KEY';
const String? testSessionToken = null; // Optional, for temporary credentials
const String testRegion = 'us-east-1';
const String testDeliveryStreamName = 'your-delivery-stream-name';
```

2. Run the tests:

```bash
dart test test/e2e/ --tags=e2e
```

## Creating a Test Delivery Stream

You can create a simple test delivery stream using the AWS CLI:

```bash
# Create an S3 bucket for the destination
aws s3 mb s3://my-firehose-test-bucket

# Create the delivery stream
aws firehose create-delivery-stream \
  --delivery-stream-name my-test-stream \
  --s3-destination-configuration \
    RoleARN=arn:aws:iam::ACCOUNT_ID:role/firehose-role,\
    BucketARN=arn:aws:s3:::my-firehose-test-bucket,\
    Prefix=test/
```

Note: You'll need to create an IAM role with permissions for Firehose to write to S3.

## Security Notes

- Never commit real credentials to version control
- Use temporary credentials (session tokens) when possible
- Consider using environment variables for credentials in CI/CD
- The `test_config.dart` file is gitignored by default
