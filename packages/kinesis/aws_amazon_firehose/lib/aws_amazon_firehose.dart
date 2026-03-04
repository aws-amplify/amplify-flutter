// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Amplify Amazon Data Firehose client for Dart.
library;

export 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    show
        AWSCredentials,
        AWSCredentialsProvider,
        StaticCredentials,
        TemporaryCredentials,
        Logger;
// V2 → V3 credentials bridge
export 'package:amplify_foundation_dart_bridge/amplify_foundation_dart_bridge.dart';

// Options
export 'src/amazon_data_firehose_options.dart';
// Main client
export 'src/amplify_firehose_client.dart';
// Exceptions
export 'src/exception/amplify_firehose_exception.dart';
// Flush strategies
export 'src/flush_strategy/flush_strategy.dart';
// Return types
export 'src/model/clear_cache_data.dart';
export 'src/model/flush_data.dart';
