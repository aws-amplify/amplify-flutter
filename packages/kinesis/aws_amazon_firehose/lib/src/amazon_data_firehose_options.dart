// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_amazon_firehose/src/flush_strategy/flush_strategy.dart';

// TODO(v3): Import V3 Logger type once available.
// import 'package:amplify_v3_core/amplify_v3_core.dart' show Logger;

/// {@template aws_amazon_firehose.amplify_firehose_client_options}
/// Configuration options for [AmplifyFirehoseClient].
///
/// ```dart
/// final options = AmplifyFirehoseClientOptions(
///   cacheMaxBytes: 10 * 1024 * 1024, // 10MB
///   maxRecords: 500,
///   maxRetries: 3,
///   flushStrategy: AmazonDataFirehoseInterval(
///     interval: Duration(seconds: 60),
///   ),
/// );
/// ```
/// {@endtemplate}
class AmplifyFirehoseClientOptions {
  /// {@macro aws_amazon_firehose.amplify_firehose_client_options}
  const AmplifyFirehoseClientOptions({
    this.cacheMaxBytes = 5 * 1024 * 1024, // 5MB
    this.maxRecords = 500,
    this.maxRetries = 5,
    this.flushStrategy = const AmazonDataFirehoseInterval(),
    // TODO(v3): Add logger parameter once V3 Logger type is available.
    // this.logger,
  });

  /// Maximum size of the local cache in bytes.
  ///
  /// Defaults to 5MB (5 * 1024 * 1024 bytes).
  final int cacheMaxBytes;

  /// Maximum number of records per batch sent to Firehose.
  ///
  /// Amazon Data Firehose supports up to 500 records per PutRecordBatch call.
  ///
  /// Defaults to 500.
  final int maxRecords;

  /// Maximum number of retry attempts for failed records.
  ///
  /// Defaults to 5 retries.
  final int maxRetries;

  /// Strategy for automatic flushing of cached records.
  ///
  /// - [AmazonDataFirehoseInterval]: Flush at a fixed interval (default: 30s)
  /// - [AmazonDataFirehoseNone]: Disable automatic flushing entirely
  ///
  /// Defaults to [AmazonDataFirehoseInterval] with a 30-second interval.
  final AmazonDataFirehoseFlushStrategy flushStrategy;

  // TODO(v3): Uncomment once V3 Logger type is available.
  // /// Optional logger for debug and error output.
  // final Logger? logger;
}

/// Deprecated: Use [AmplifyFirehoseClientOptions] instead.
@Deprecated('Use AmplifyFirehoseClientOptions instead')
typedef AmazonDataFirehoseOptions = AmplifyFirehoseClientOptions;
