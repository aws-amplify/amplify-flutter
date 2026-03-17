// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Amplify Kinesis Data Streams client for Flutter.
library;

// Re-export everything from the Dart package except the Dart client.
export 'package:amplify_kinesis_dart/amplify_kinesis_dart.dart'
    hide AmplifyKinesisClient;

// Export the Flutter wrapper client.
export 'src/amplify_kinesis_client_flutter.dart';
