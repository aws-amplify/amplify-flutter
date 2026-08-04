// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Amplify Kinesis Data Streams client for Dart.
library;

// Re-export shared types used in the public API
export 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart'
    show
        FlushStrategy,
        FlushInterval,
        FlushNone,
        FlushData,
        RecordData,
        ClearCacheData;

// Main client
export 'src/amplify_kinesis_client.dart';
// Options
export 'src/amplify_kinesis_client_options.dart';
// Exceptions
export 'src/exception/amplify_kinesis_exception.dart';
// SDK client (for escape hatch)
export 'src/sdk/kinesis.dart'
    show
        KinesisClient,
        PutRecordsRequest,
        PutRecordsRequestEntry,
        PutRecordsResponse,
        PutRecordsResultEntry;
