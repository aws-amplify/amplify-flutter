// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/src/logger/broadcast_logger.dart';
import 'package:amplify_foundation_dart/src/logger/log_sink.dart';
import 'package:amplify_foundation_dart/src/logger/logger.dart';

/// {@template amplify_foundation_dart.amplify_logging}
/// Central manager for Amplify logging.
///
/// Register [LogSink] instances to control where log messages are sent.
/// Use [logger] to obtain a named [Logger] that broadcasts to all registered
/// sinks.
/// {@endtemplate}
final class AmplifyLogging {
  AmplifyLogging._();

  static final Map<String, LogSink> _registeredLogSinks = {};

  /// Adds a [LogSink] to receive log messages.
  static void addSink(LogSink logSink) {
    _registeredLogSinks[logSink.id] = logSink;
  }

  /// Removes a previously registered [LogSink].
  static void removeSink(LogSink logSink) {
    _registeredLogSinks.remove(logSink.id);
  }

  /// Creates a named [Logger] that broadcasts to all registered sinks.
  ///
  /// Returns a logger bound to the sinks registered at the time of the call.
  /// Sinks added later will not affect previously created loggers.
  static Logger logger(String name) {
    return BroadcastLogger(
      name: name,
      sinks: List.unmodifiable(_registeredLogSinks.values),
    );
  }
}
