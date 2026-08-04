# amplify_kinesis example

Example app and integration test host for the `amplify_kinesis` Flutter package.

## Running the Example App

```bash
cd packages/kinesis/amplify_kinesis/example
flutter run
```

## Running Integration Tests

Integration tests require a pre-provisioned Kinesis Data Stream backend with Cognito authentication.

### Setup

1. Pull the test backend configuration:

```bash
./tool/pull_test_backend.sh
```

2. Or manually place an `amplify_outputs.dart` file in `lib/`.

### Run

```bash
flutter test integration_test/main_test.dart
```
