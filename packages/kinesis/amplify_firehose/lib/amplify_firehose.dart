// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Amplify Amazon Data Firehose client for Flutter.
library;

// Re-export everything from the Dart package except the Dart client.
export 'package:amplify_firehose_dart/amplify_firehose_dart.dart'
    hide AmplifyFirehoseClient;

// Export the Flutter wrapper client.
export 'src/amplify_firehose_client_flutter.dart';
