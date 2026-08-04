// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_record_cache.flush_strategy}
/// Determines when automatic flushing of cached records occurs.
///
/// Available strategies:
/// - [FlushInterval]: Flush at a fixed time interval (default 30s)
/// - [FlushNone]: Disable automatic flushing entirely
/// {@endtemplate}
sealed class FlushStrategy {
  /// {@macro amplify_record_cache.flush_strategy}
  const FlushStrategy();
}

/// {@template amplify_record_cache.interval_flush_strategy}
/// A flush strategy that triggers automatic flushes at a fixed interval.
/// {@endtemplate}
final class FlushInterval extends FlushStrategy {
  /// {@macro amplify_record_cache.interval_flush_strategy}
  const FlushInterval({this.interval = const Duration(seconds: 30)});

  /// The interval between automatic flush operations.
  final Duration interval;
}

/// {@template amplify_record_cache.none_flush_strategy}
/// A flush strategy that disables automatic flushing.
/// {@endtemplate}
final class FlushNone extends FlushStrategy {
  /// {@macro amplify_record_cache.none_flush_strategy}
  const FlushNone();
}
