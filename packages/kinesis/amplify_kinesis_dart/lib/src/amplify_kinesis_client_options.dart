// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_kinesis_dart/src/amplify_kinesis_client.dart'
    show AmplifyKinesisClient;
import 'package:amplify_kinesis_dart/src/flush_strategy/flush_strategy.dart';

/// {@template amplify_kinesis.amplify_kinesis_client_options}
/// Configuration options for [AmplifyKinesisClient].
/// {@endtemplate}
final class AmplifyKinesisClientOptions {
  /// {@macro amplify_kinesis.amplify_kinesis_client_options}
  const AmplifyKinesisClientOptions({
    this.cacheMaxBytes = 5 * 1024 * 1024,
    this.maxRetries = 5,
    this.flushStrategy = const FlushInterval(),
  });

  /// Maximum size of the local cache in bytes.
  ///
  /// Defaults to 5 MB.
  final int cacheMaxBytes;

  /// Maximum number of retry attempts for failed records.
  ///
  /// Defaults to 5.
  final int maxRetries;

  /// Strategy for automatic flushing of cached records.
  ///
  /// Defaults to [FlushInterval] with a 30-second interval.
  final FlushStrategy flushStrategy;
}
