// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Amplify Kinesis Data Streams client for Dart.
library;

// TODO(v3): Replace with V3 credentials provider type.
export 'package:amplify_core/amplify_core.dart'
    show AWSCredentials, AWSCredentialsProvider;

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
