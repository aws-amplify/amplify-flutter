// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Configuration for E2E tests.
///
/// To run E2E tests:
/// 1. Fill in your AWS credentials below
/// 2. Set [isConfigured] to true
/// 3. Run: dart test test/e2e/ --tags=e2e
library;

/// Set to true when credentials are configured.
const bool isConfigured = false;

/// AWS Access Key ID.
const String testAccessKeyId = 'YOUR_ACCESS_KEY_ID';

/// AWS Secret Access Key.
const String testSecretAccessKey = 'YOUR_SECRET_ACCESS_KEY';

/// AWS Session Token (optional, for temporary credentials).
const String? testSessionToken = null;

/// AWS Region where the Firehose delivery stream is located.
const String testRegion = 'us-east-1';

/// Name of the Firehose delivery stream to use for testing.
///
/// This stream must exist and be accessible with the provided credentials.
const String testDeliveryStreamName = 'YOUR_DELIVERY_STREAM_NAME';
