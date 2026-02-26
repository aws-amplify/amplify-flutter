// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template aws_amazon_firehose.flush_strategy}
/// Determines when automatic flushing of cached records occurs.
///
/// Available strategies:
/// - [AmazonDataFirehoseInterval]: Flush at a fixed time interval (default)
/// - [AmazonDataFirehoseNone]: Disable automatic flushing entirely
/// {@endtemplate}
sealed class AmazonDataFirehoseFlushStrategy {
  /// {@macro aws_amazon_firehose.flush_strategy}
  const AmazonDataFirehoseFlushStrategy();
}

/// {@template aws_amazon_firehose.interval_flush_strategy}
/// A flush strategy that triggers automatic flushes at a fixed interval.
///
/// This is the default flush strategy. Records are automatically sent to
/// Amazon Data Firehose at the specified interval (default: 30 seconds).
///
/// ```dart
/// final client = AmplifyFirehoseClient(
///   region: 'us-east-1',
///   credentialsProvider: myProvider,
///   options: AmplifyFirehoseClientOptions(
///     flushStrategy: AmazonDataFirehoseInterval(
///       interval: Duration(seconds: 60),
///     ),
///   ),
/// );
/// ```
/// {@endtemplate}
class AmazonDataFirehoseInterval extends AmazonDataFirehoseFlushStrategy {
  /// {@macro aws_amazon_firehose.interval_flush_strategy}
  const AmazonDataFirehoseInterval({
    this.interval = const Duration(seconds: 30),
  });

  /// The interval between automatic flush operations.
  ///
  /// Must be between 1 second and 1 hour. Validated by
  /// [AmplifyFirehoseClientOptions].
  ///
  /// Defaults to 30 seconds.
  final Duration interval;
}

/// {@template aws_amazon_firehose.none_flush_strategy}
/// A flush strategy that disables automatic flushing.
///
/// When this strategy is used, records are only sent when `flush()` is
/// called manually. Useful for GDPR use cases or when you need full
/// control over when data leaves the device.
///
/// ```dart
/// final client = AmplifyFirehoseClient(
///   region: 'us-east-1',
///   credentialsProvider: myProvider,
///   options: AmplifyFirehoseClientOptions(
///     flushStrategy: AmazonDataFirehoseNone(),
///   ),
/// );
/// ```
/// {@endtemplate}
class AmazonDataFirehoseNone extends AmazonDataFirehoseFlushStrategy {
  /// {@macro aws_amazon_firehose.none_flush_strategy}
  const AmazonDataFirehoseNone();
}
