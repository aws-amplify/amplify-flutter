// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/src/logger/log_level.dart';
import 'package:amplify_foundation_dart/src/logger/log_message.dart';
import 'package:amplify_foundation_dart/src/logger/log_sink.dart';
import 'package:amplify_foundation_dart/src/logger/logger.dart';

/// {@template amplify_foundation_dart.broadcast_logger}
/// A [Logger] that delegates all work to its [sinks].
///
/// This class acts as a layer of indirection conforming to [Logger] that
/// broadcasts log messages to all registered [LogSink] instances.
/// {@endtemplate}
final class BroadcastLogger implements Logger {
  /// {@macro amplify_foundation_dart.broadcast_logger}
  BroadcastLogger({required this.name, required this.sinks});

  /// The name of this logger.
  final String name;

  /// The sinks that this logger will broadcast to.
  final List<LogSink> sinks;

  @override
  void error(String message, [Object? error, StackTrace? stackTrace]) {
    log(LogLevel.error, message, error, stackTrace);
  }

  @override
  void warn(String message, [Object? error, StackTrace? stackTrace]) {
    log(LogLevel.warn, message, error, stackTrace);
  }

  @override
  void info(String message, [Object? error, StackTrace? stackTrace]) {
    log(LogLevel.info, message, error, stackTrace);
  }

  @override
  void debug(String message, [Object? error, StackTrace? stackTrace]) {
    log(LogLevel.debug, message, error, stackTrace);
  }

  @override
  void verbose(String message, [Object? error, StackTrace? stackTrace]) {
    log(LogLevel.verbose, message, error, stackTrace);
  }

  @override
  void log(
    LogLevel logLevel,
    String message, [
    Object? error,
    StackTrace? stackTrace,
  ]) {
    final logMessage = LogMessage(
      level: logLevel,
      name: name,
      content: message,
      error: error,
      stackTrace: stackTrace,
    );
    for (final sink in sinks) {
      sink.emit(logMessage);
    }
  }
}
