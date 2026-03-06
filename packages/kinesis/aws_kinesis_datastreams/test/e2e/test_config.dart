// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Configuration for E2E tests.
///
/// Values are read from environment variables set by CI or
/// passed via `--dart-define` when running locally:
///
/// ```bash
/// dart test test/e2e/ --tags=e2e \
///   --dart-define=TEST_ACCESS_KEY_ID=AKIA... \
///   --dart-define=TEST_SECRET_ACCESS_KEY=... \
///   --dart-define=TEST_REGION=us-west-2 \
///   --dart-define=TEST_STREAM_NAME=kinesis-main-data-stream
/// ```
library;

import 'dart:io';

/// AWS Access Key ID.
final String testAccessKeyId =
    const String.fromEnvironment('TEST_ACCESS_KEY_ID').isNotEmpty
        ? const String.fromEnvironment('TEST_ACCESS_KEY_ID')
        : Platform.environment['TEST_ACCESS_KEY_ID'] ?? '';

/// AWS Secret Access Key.
final String testSecretAccessKey =
    const String.fromEnvironment('TEST_SECRET_ACCESS_KEY').isNotEmpty
        ? const String.fromEnvironment('TEST_SECRET_ACCESS_KEY')
        : Platform.environment['TEST_SECRET_ACCESS_KEY'] ?? '';

/// AWS Session Token (optional, for temporary credentials).
final String? testSessionToken = () {
  const fromEnv = String.fromEnvironment('TEST_SESSION_TOKEN');
  if (fromEnv.isNotEmpty) return fromEnv;
  return Platform.environment['TEST_SESSION_TOKEN'];
}();

/// AWS Region where the Kinesis stream is located.
final String testRegion =
    const String.fromEnvironment('TEST_REGION').isNotEmpty
        ? const String.fromEnvironment('TEST_REGION')
        : Platform.environment['TEST_REGION'] ?? 'us-west-2';

/// Name of the Kinesis Data Stream to use for testing.
final String testStreamName =
    const String.fromEnvironment('TEST_STREAM_NAME').isNotEmpty
        ? const String.fromEnvironment('TEST_STREAM_NAME')
        : Platform.environment['TEST_STREAM_NAME'] ?? '';

/// Whether the test environment is configured.
///
/// True when at least the access key and stream name are provided.
final bool isConfigured =
    testAccessKeyId.isNotEmpty &&
    testSecretAccessKey.isNotEmpty &&
    testStreamName.isNotEmpty;
