// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_kinesis_datastreams/src/flush_strategy/flush_strategy.dart';

// TODO(v3): Import V3 Logger type once available.

/// {@template aws_kinesis_datastreams.amplify_kinesis_client_options}
/// Configuration options for [AmplifyKinesisClient].
/// {@endtemplate}
class AmplifyKinesisClientOptions {
  /// {@macro aws_kinesis_datastreams.amplify_kinesis_client_options}
  const AmplifyKinesisClientOptions({
    this.cacheMaxBytes = 5 * 1024 * 1024,
    this.maxRecords = 500,
    this.maxRetries = 5,
    this.flushStrategy = const KinesisDataStreamsInterval(),
    // TODO(v3): Add logger parameter once V3 Logger type is available.
  });

  /// Maximum size of the local cache in bytes. Defaults to 5MB.
  final int cacheMaxBytes;

  /// Maximum number of records per batch. Defaults to 500.
  final int maxRecords;

  /// Maximum number of retry attempts for failed records. Defaults to 5.
  final int maxRetries;

  /// Strategy for automatic flushing of cached records.
  final KinesisDataStreamsFlushStrategy flushStrategy;

  // TODO(v3): Uncomment once V3 Logger type is available.
  // final Logger? logger;
}

/// Deprecated: Use [AmplifyKinesisClientOptions] instead.
@Deprecated('Use AmplifyKinesisClientOptions instead')
typedef KinesisDataStreamsOptions = AmplifyKinesisClientOptions;
