// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Amplify Amazon Data Firehose client for Dart.
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

// Exceptions
export 'src/exception/amplify_firehose_exception.dart';
// SDK client (for escape hatch)
export 'src/sdk/firehose.dart'
    show
        FirehoseClient,
        PutRecordBatchInput,
        PutRecordBatchOutput,
        PutRecordBatchResponseEntry;
