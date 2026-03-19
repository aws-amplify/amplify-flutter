// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:amplify_kinesis_dart/src/impl/record_client.dart';

/// {@template amplify_kinesis.auto_flush_scheduler}
/// Manages automatic flush scheduling at a fixed interval.
///
/// Takes a [Duration] interval and a [RecordClient].
/// Has `start()` and `stop()` methods, and uses a delay-loop so the next
/// interval doesn't start until the current flush completes.
///
/// Each call to [start] cancels any previously running loop before launching
/// a new one, preventing duplicate concurrent loops.
/// {@endtemplate}
final class AutoFlushScheduler {
  /// {@macro amplify_kinesis.auto_flush_scheduler}
  AutoFlushScheduler({required Duration interval, required RecordClient client})
    : _interval = interval,
      _client = client;

  final Duration _interval;
  final RecordClient _client;
  final Logger _logger = AmplifyLogging.logger('AutoFlushScheduler');
  Completer<void>? _cancellation;

  /// Starts the scheduler. If already running, cancels the previous loop
  /// and starts a new one.
  void start() {
    _cancellation?.complete();
    final token = Completer<void>();
    _cancellation = token;
    unawaited(_run(token));
  }

  /// Stops the scheduler.
  void stop() {
    _cancellation?.complete();
    _cancellation = null;
  }

  /// Delay-loop: wait for the interval, flush, repeat.
  /// The next delay doesn't start until the flush completes.
  /// The loop exits when [token] is completed.
  Future<void> _run(Completer<void> token) async {
    while (!token.isCompleted) {
      await Future.any([Future<void>.delayed(_interval), token.future]);
      if (token.isCompleted) break;
      try {
        final result = await _client.flush();
        _logger.debug(
          'Auto-flush completed: ${result.recordsFlushed} records flushed',
        );
      } on Object catch (e) {
        // Defensive catch to prevent scheduler from crashing.
        _logger.warn('Auto-flush failed', e);
      }
    }
  }
}
