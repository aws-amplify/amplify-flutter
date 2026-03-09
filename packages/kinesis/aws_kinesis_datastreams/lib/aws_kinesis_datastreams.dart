// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Amplify Kinesis Data Streams client for Dart.
library;

export 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    show
        AWSCredentials,
        AWSCredentialsProvider,
        StaticCredentials,
        TemporaryCredentials,
        Logger,
        Result,
        Ok,
        Error;
// V2 → V3 credentials bridge
export 'package:amplify_foundation_dart_bridge/amplify_foundation_dart_bridge.dart';

// Main client
export 'src/amplify_kinesis_client.dart';
// Exceptions
export 'src/exception/amplify_kinesis_exception.dart';
// Flush strategies
export 'src/flush_strategy/flush_strategy.dart';
// Options
export 'src/kinesis_data_streams_options.dart';
// Return types
export 'src/model/clear_cache_data.dart';
export 'src/model/flush_data.dart';
