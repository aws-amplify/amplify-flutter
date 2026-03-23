// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Firehose PutRecordBatch API limits.
///
/// These are AWS service-imposed constants. They are internal to the
/// package and not exported from the public barrel file.
library;

/// Maximum number of records per PutRecordBatch request (500).
const int maxRecordsPerBatch = 500;

/// Maximum size of a single record in bytes (1,000 KB before base64).
const int maxRecordSizeBytes = 1000 * 1024;

/// Maximum total payload size per PutRecordBatch request in bytes (4 MB).
const int maxBatchSizeBytes = 4 * 1024 * 1024;
