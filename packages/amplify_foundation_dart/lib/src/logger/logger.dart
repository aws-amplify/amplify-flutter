// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

/// A component which can emit logs.
abstract interface class Logger {
  Logger({required this.thresholdLevel});

  /// The minimum permissible LogLevel for which logs will be emitted
  LogLevel thresholdLevel;

  /// Logs a message at `error` level
  void error(String message, [Object? error, StackTrace? stackTrace]);

  /// Logs a message at `warn` level
  void warn(String message, [Object? error, StackTrace? stackTrace]);

  /// Logs a message at `info` level
  void info(String message, [Object? error, StackTrace? stackTrace]);

  /// Logs a message at `debug` level
  void debug(String message, [Object? error, StackTrace? stackTrace]);

  /// Logs a message at `verbose` level
  void verbose(String message, [Object? error, StackTrace? stackTrace]);
}

/// {@template amplify_foundation_dart.amplify_logger}
/// A logger implementation for Amplify.
/// {@endtemplate}
class AmplifyLogger implements Logger {
  /// {@macro amplify_foundation_dart.amplify_logger}
  AmplifyLogger({
    this.name = '',
    this.thresholdLevel = LogLevel.info,
    this.logHandler,
  });

  @override
  LogLevel thresholdLevel;

  /// The name of the logger.
  final String name;

  /// An optional handler for processing log entries.
  void Function(AmplifyLog)? logHandler;

  void _log(
    LogLevel level,
    String message,
    Object? error,
    StackTrace? stackTrace,
  ) {
    final shouldLog = thresholdLevel.shouldLog(level);
    if (!shouldLog) return;

    final log = AmplifyLog(
      timestamp: DateTime.now(),
      name: name,
      level: level,
      message: message,
      error: error,
      stackTrace: stackTrace,
    );
    logHandler?.call(log);
  }

  @override
  void debug(String message, [Object? error, StackTrace? stackTrace]) {
    _log(LogLevel.debug, message, error, stackTrace);
  }

  @override
  void error(String message, [Object? error, StackTrace? stackTrace]) {
    _log(LogLevel.error, message, error, stackTrace);
  }

  @override
  void info(String message, [Object? error, StackTrace? stackTrace]) {
    _log(LogLevel.info, message, error, stackTrace);
  }

  @override
  void verbose(String message, [Object? error, StackTrace? stackTrace]) {
    _log(LogLevel.verbose, message, error, stackTrace);
  }

  @override
  void warn(String message, [Object? error, StackTrace? stackTrace]) {
    _log(LogLevel.warn, message, error, stackTrace);
  }
}

/// {@template amplify_foundation_dart.amplify_no_op_logger}
/// A logger that does not emit any logs.
/// {@endtemplate}
class AmplifyNoOpLogger extends AmplifyLogger {
  /// {@macro amplify_foundation_dart.amplify_no_op_logger}
  AmplifyNoOpLogger({super.name, super.thresholdLevel})
    : super(logHandler: null);
}

/// {@template amplify_foundation_dart.amplify_simple_printer_logger}
/// A logger that prints logs to the console.
/// {@endtemplate}
class AmplifySimplePrinterLogger extends AmplifyLogger {
  /// {@macro amplify_foundation_dart.amplify_simple_printer_logger}
  AmplifySimplePrinterLogger({super.name, super.thresholdLevel})
    : super(logHandler: _logHandler);

  /// Prints the log
  static void _logHandler(AmplifyLog log) {
    final formattedLog = _formatLog(log);
    safePrint(formattedLog);
  }

  /// Formats [log] using level, name, and message components.
  static String _formatLog(AmplifyLog log) {
    final buffer = StringBuffer()
      ..write(log.name)
      ..write(' | ')
      ..write(log.level.name.toUpperCase().padRight(5))
      ..write(' | ')
      ..write(log.message);

    if (log.error != null) {
      buffer
        ..writeln()
        ..write(log.error);
    }
    if (log.stackTrace != null) {
      buffer
        ..writeln()
        ..write(log.stackTrace);
    }

    return buffer.toString();
  }
}
