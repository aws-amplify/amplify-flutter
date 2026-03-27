// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Amplify Amazon Data Firehose client for Dart.
library;

// Re-export shared types used in the public API
export 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart'
    show
        ClearCacheData,
        FlushData,
        FlushInterval,
        FlushNone,
        FlushStrategy,
        RecordData;

// Main client
export 'src/amplify_firehose_client.dart';
// Options
export 'src/amplify_firehose_client_options.dart';
// Exceptions
export 'src/exception/amplify_firehose_exception.dart';
// SDK client (for escape hatch)
export 'src/sdk/firehose.dart'
    show
        FirehoseClient,
        PutRecordBatchInput,
        PutRecordBatchOutput,
        PutRecordBatchResponseEntry;
