# E2E Tests for Amazon Data Firehose

These tests verify the library works correctly against real AWS resources.

## Prerequisites

1. An AWS account with access to Amazon Data Firehose
2. A Firehose delivery stream created in your account
3. AWS credentials with `firehose:PutRecordBatch` and `firehose:DescribeDeliveryStream` permissions

## Running Locally

Set environment variables and run:

```bash
export TEST_ACCESS_KEY_ID=AKIA...
export TEST_SECRET_ACCESS_KEY=...
export TEST_REGION=us-west-2
export TEST_DELIVERY_STREAM_NAME=kinesis-main-delivery-stream

dart test test/e2e/ --tags=e2e
```

Or pass via `--dart-define`:

```bash
dart test test/e2e/ --tags=e2e \
  --dart-define=TEST_ACCESS_KEY_ID=AKIA... \
  --dart-define=TEST_SECRET_ACCESS_KEY=... \
  --dart-define=TEST_REGION=us-west-2 \
  --dart-define=TEST_DELIVERY_STREAM_NAME=kinesis-main-delivery-stream
```

## Infrastructure

Test resources (Kinesis stream, Firehose delivery stream, IAM user) are
provisioned via CDK in `infra-gen2/backends/kinesis/main/`. The construct
is defined in `infra-gen2/infra-common/src/kinesis-extensions/`.

Deploy with:

```bash
cd infra-gen2
dart tool/deploy_gen2.dart --category kinesis
```

## CI

The GitHub Actions workflow at `.github/workflows/kinesis_e2e.yaml` runs
these tests automatically on PRs that touch `packages/kinesis/`.
