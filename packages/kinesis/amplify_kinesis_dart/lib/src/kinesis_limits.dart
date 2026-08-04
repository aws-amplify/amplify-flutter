// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Kinesis PutRecords API limits.
///
/// These are AWS service-imposed constants. They are internal to the
/// package and not exported from the public barrel file.
library;

/// Maximum number of records per PutRecords request (500).
const int maxRecordsPerStream = 500;

/// Maximum size of a single record (partition key + data blob) in bytes (10 MiB).
const int maxRecordSizeBytes = 10 * 1024 * 1024;

/// Maximum total payload size per PutRecords request in bytes (10 MiB).
const int maxPutRecordsSizeBytes = 10 * 1024 * 1024;

/// Maximum length of a partition key in Unicode code points (256).
const int maxPartitionKeyLength = 256;
