// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_amazon_firehose/src/flush_strategy/flush_strategy.dart';

/// {@template aws_amazon_firehose.auto_flush_scheduler}
/// Manages automatic flush scheduling based on the configured strategy.
///
/// When the strategy is [AmazonDataFirehoseNone], no timer is created and
/// automatic flushing is effectively disabled.
/// {@endtemplate}
class AutoFlushScheduler {
  /// {@macro aws_amazon_firehose.auto_flush_scheduler}
  AutoFlushScheduler({
    required AmazonDataFirehoseFlushStrategy strategy,
    required Future<void> Function() onFlush,
  })  : _strategy = strategy,
        _onFlush = onFlush;

  final AmazonDataFirehoseFlushStrategy _strategy;
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
  /// For [AmazonDataFirehoseInterval], creates a periodic timer.
  /// For [AmazonDataFirehoseNone], does nothing.
  void start() {
    if (_closed) return;

    _cancelTimer();

    switch (_strategy) {
      case AmazonDataFirehoseInterval(:final interval):
        _timer = Timer.periodic(interval, (_) {
          _handleTimerTick();
        });
      case AmazonDataFirehoseNone():
        // No automatic flushing
        break;
    }
  }

  /// Stops the automatic flush scheduling.
  void stop() {
    _cancelTimer();
  }

  /// Enables automatic flush operations.
  void enable() {
    _enabled = true;
  }

  /// Disables automatic flush operations.
  void disable() {
    _enabled = false;
  }

  /// Closes the scheduler and releases all resources.
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
    _onFlush();
  }
}
