// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_kinesis_datastreams/src/flush_strategy/flush_strategy.dart';
import 'package:aws_kinesis_datastreams/src/flush_strategy/interval_flush_strategy.dart';

/// {@template aws_kinesis_datastreams.auto_flush_scheduler}
/// Manages automatic flush scheduling based on the configured strategy.
///
/// The scheduler supports enabling/disabling flush operations and can be
/// started and stopped as needed.
/// {@endtemplate}
class AutoFlushScheduler {
  /// {@macro aws_kinesis_datastreams.auto_flush_scheduler}
  AutoFlushScheduler({
    required KinesisDataStreamsFlushStrategy strategy,
    required Future<void> Function() onFlush,
  })  : _strategy = strategy,
        _onFlush = onFlush;

  final KinesisDataStreamsFlushStrategy _strategy;
  final Future<void> Function() _onFlush;
  Timer? _timer;
  bool _enabled = true;
  bool _closed = false;

  /// Whether the scheduler is currently enabled.
  bool get isEnabled => _enabled;

  /// Whether the scheduler has been closed.
  bool get isClosed => _closed;

  /// Starts the automatic flush scheduling.
  ///
  /// For interval-based strategies, this creates a periodic timer that
  /// triggers flush operations at the configured interval.
  void start() {
    if (_closed) return;

    _cancelTimer();

    if (_strategy case final KinesisDataStreamsInterval intervalStrategy) {
      _timer = Timer.periodic(intervalStrategy.interval, (_) {
        _handleTimerTick();
      });
    }
  }

  /// Stops the automatic flush scheduling.
  ///
  /// Cancels any active timer without closing the scheduler.
  void stop() {
    _cancelTimer();
  }

  /// Enables automatic flush operations.
  ///
  /// When enabled, timer ticks will trigger flush operations.
  /// If the scheduler was previously disabled, this resumes normal operation.
  void enable() {
    _enabled = true;
  }

  /// Disables automatic flush operations.
  ///
  /// When disabled, timer ticks will not trigger flush operations.
  /// The timer continues to run but flush callbacks are skipped.
  void disable() {
    _enabled = false;
  }

  /// Closes the scheduler and releases all resources.
  ///
  /// After closing, the scheduler cannot be restarted.
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

    // Fire and forget - don't await to avoid blocking the timer
    _onFlush();
  }
}
