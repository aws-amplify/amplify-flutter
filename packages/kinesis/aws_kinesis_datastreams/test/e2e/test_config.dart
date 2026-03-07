// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Configuration for E2E tests.
///
/// In CI, `fetch_backends` downloads `amplify_outputs.dart` which contains
/// the Cognito and backend configuration. The test reads this file to get
/// auth config, then authenticates via Cognito to obtain temporary AWS
/// credentials (matching the real customer flow).
///
/// For local development, either:
/// 1. Place an `amplify_outputs.dart` file in `lib/` (same format as CI)
/// 2. Set environment variables as a fallback:
///    ```bash
///    export TEST_STREAM_NAME=amplify-kinesis-test-stream
///    dart test test/e2e/ --tags=e2e
///    ```
library;

import 'dart:convert';
import 'dart:io';

import 'cognito_auth_helper.dart';

/// Try to load amplify_outputs.dart config from the lib/ directory.
///
/// The `fetch_backends` CI action downloads this file via
/// `tool/pull_test_backend.sh`.
AmplifyAuthConfig? _loadAmplifyConfig() {
  // Look for amplify_outputs.dart in the package's lib/ directory
  final candidates = [
    'lib/amplify_outputs.dart',
    // Also check from the test/e2e/ working directory
    '../../lib/amplify_outputs.dart',
  ];

  for (final path in candidates) {
    final file = File(path);
    if (file.existsSync()) {
      final content = file.readAsStringSync();
      // Extract the JSON string from: const amplifyConfig = r'''{ ... }''';
      final match = RegExp(r"r?'''(.*?)'''", dotAll: true).firstMatch(content);
      if (match != null) {
        final jsonStr = match.group(1)!;
        // Validate it's real config (not placeholder)
        final json = jsonDecode(jsonStr) as Map<String, dynamic>;
        if (json.containsKey('auth')) {
          return AmplifyAuthConfig.fromJson(jsonStr);
        }
      }
    }
  }
  return null;
}

/// The parsed Amplify auth configuration, or null if not available.
final AmplifyAuthConfig? amplifyAuthConfig = _loadAmplifyConfig();

/// AWS Region — from amplify config or environment variable.
final String testRegion =
    amplifyAuthConfig?.region ??
    (const String.fromEnvironment('TEST_REGION').isNotEmpty
        ? const String.fromEnvironment('TEST_REGION')
        : Platform.environment['TEST_REGION'] ?? 'us-west-2');

/// Name of the Kinesis Data Stream to use for testing.
///
/// Defaults to the stream name provisioned by the infra-gen2 backend.
final String testStreamName =
    const String.fromEnvironment('TEST_STREAM_NAME').isNotEmpty
    ? const String.fromEnvironment('TEST_STREAM_NAME')
    : Platform.environment['TEST_STREAM_NAME'] ?? 'amplify-kinesis-test-stream';

/// Whether the test environment is configured.
///
/// True when amplify_outputs.dart is present with auth config.
final bool isConfigured = amplifyAuthConfig != null;
