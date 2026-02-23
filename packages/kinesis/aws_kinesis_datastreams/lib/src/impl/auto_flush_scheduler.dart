// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_kinesis_datastreams/src/flush_strategy/flush_strategy.dart';

/// {@template aws_kinesis_datastreams.auto_flush_scheduler}
/// Manages automatic flush scheduling based on the configured strategy.
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

  bool get isEnabled => _enabled;
  bool get isClosed => _closed;

  void start() {
    if (_closed) return;
    _cancelTimer();

    switch (_strategy) {
      case KinesisDataStreamsInterval(:final interval):
        _timer = Timer.periodic(interval, (_) { _handleTimerTick(); });
      case KinesisDataStreamsNone():
        break;
    }
  }

  void stop() { _cancelTimer(); }
  void enable() { _enabled = true; }
  void disable() { _enabled = false; }

  Future<void> close() async {
    _closed = true;
    _cancelTimer();
  }

  void _cancelTimer() { _timer?.cancel(); _timer = null; }

  void _handleTimerTick() {
    if (!_enabled || _closed) return;
    _onFlush();
  }
}
