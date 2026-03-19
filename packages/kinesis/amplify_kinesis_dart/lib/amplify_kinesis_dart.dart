// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Amplify Kinesis Data Streams client for Dart.
library;

// Main client
export 'src/amplify_kinesis_client.dart';
// Options
export 'src/amplify_kinesis_client_options.dart';
// Exceptions
export 'src/exception/amplify_kinesis_exception.dart';
// Flush strategies
export 'src/flush_strategy/flush_strategy.dart';
// Return types
export 'src/model/clear_cache_data.dart';
export 'src/model/flush_data.dart';
export 'src/model/record_data.dart';
// SDK client (for escape hatch)
export 'src/sdk/kinesis.dart'
    show
        KinesisClient,
        PutRecordsRequest,
        PutRecordsRequestEntry,
        PutRecordsResponse,
        PutRecordsResultEntry;
