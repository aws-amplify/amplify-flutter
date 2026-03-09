// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    show Logger;
import 'package:aws_kinesis_datastreams/src/flush_strategy/flush_strategy.dart';

/// {@template aws_kinesis_datastreams.auto_flush_scheduler}
/// Manages automatic flush scheduling based on the configured strategy.
/// {@endtemplate}
final class AutoFlushScheduler {
  /// {@macro aws_kinesis_datastreams.auto_flush_scheduler}
  AutoFlushScheduler({
    required KinesisDataStreamsFlushStrategy strategy,
    required Future<void> Function() onFlush,
    this.logger,
  }) : _strategy = strategy,
       _onFlush = onFlush;

  final KinesisDataStreamsFlushStrategy _strategy;
  final Future<void> Function() _onFlush;
  final Logger? logger;
  Timer? _timer;
  bool _enabled = true;
  bool _closed = false;

  /// Whether the scheduler is currently enabled.
  bool get isEnabled => _enabled;

  /// Whether the scheduler has been closed.
  bool get isClosed => _closed;

  /// Starts the scheduler based on the configured strategy.
  void start() {
    if (_closed) return;
    _cancelTimer();

    switch (_strategy) {
      case KinesisDataStreamsInterval(:final interval):
        _timer = Timer.periodic(interval, (_) => _handleTimerTick());
      case KinesisDataStreamsNone():
        break;
    }
  }

  /// Stops the scheduler and cancels any active timer.
  void stop() {
    _cancelTimer();
  }

  /// Enables the scheduler to trigger flushes.
  void enable() {
    _enabled = true;
  }

  /// Disables the scheduler from triggering flushes.
  void disable() {
    _enabled = false;
  }

  /// Closes the scheduler and releases resources.
  Future<void> close() async {
    _closed = true;
    _cancelTimer();
  }

  void _cancelTimer() {
    _timer?.cancel();
    _timer = null;
  }

  void _handleTimerTick() {
    if (!_enabled || _closed) return;
    unawaited(
      _onFlush().catchError((Object error, StackTrace stackTrace) {
        logger?.error('Auto-flush failed', error, stackTrace);
      }),
    );
  }
}
