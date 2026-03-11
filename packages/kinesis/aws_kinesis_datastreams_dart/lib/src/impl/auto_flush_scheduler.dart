// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:aws_kinesis_datastreams_dart/src/flush_strategy/flush_strategy.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/record_client.dart';

/// {@template aws_kinesis_datastreams.auto_flush_scheduler}
/// Manages automatic flush scheduling based on the configured strategy.
///
/// Matches Android's `AutoFlushScheduler`: takes a [RecordClient] directly,
/// has `start()` and `stop()` methods, and uses a delay-loop so the next
/// interval doesn't start until the current flush completes.
/// {@endtemplate}
final class AutoFlushScheduler {
  /// {@macro aws_kinesis_datastreams.auto_flush_scheduler}
  AutoFlushScheduler({
    required KinesisDataStreamsFlushStrategy strategy,
    required RecordClient client,
  }) : _strategy = strategy,
       _client = client;

  final KinesisDataStreamsFlushStrategy _strategy;
  final RecordClient _client;
  final Logger _logger = AmplifyLogging.logger('AutoFlushScheduler');
  bool _running = false;

  /// Starts the scheduler. If already running, cancels and restarts.
  ///
  /// Matches Android's `start()` which cancels any existing Job before
  /// launching a new one.
  void start() {
    _running = false; // stop any existing loop
    switch (_strategy) {
      case KinesisDataStreamsInterval(:final interval):
        _running = true;
        unawaited(_run(interval));
      case KinesisDataStreamsNone():
        break;
    }
  }

  /// Stops the scheduler. Matches Android's `disable()`.
  void stop() {
    _running = false;
  }

  /// Delay-loop: wait for the interval, flush, repeat.
  /// The next delay doesn't start until the flush completes.
  /// The loop exits when [_running] is set to false.
  Future<void> _run(Duration interval) async {
    while (_running) {
      await Future<void>.delayed(interval);
      if (!_running) break;
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
