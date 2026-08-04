// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_firehose_dart/src/amplify_firehose_client.dart'
    show AmplifyFirehoseClient;
import 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart';

/// {@template amplify_firehose.amplify_firehose_client_options}
/// Configuration options for [AmplifyFirehoseClient].
/// {@endtemplate}
final class AmplifyFirehoseClientOptions {
  /// {@macro amplify_firehose.amplify_firehose_client_options}
  const AmplifyFirehoseClientOptions({
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
