// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';

/// {@template amplify_core.logging.logger}
/// Logger interface for emitting log messages at different log levels.
/// {@endtemplate}

abstract interface class Logger {
  /// The namespace of this logger.
  String get namespace;

  /// Logs a [message] at the given [level].
  void log(
    LogLevel level,
    String message, [
    Object? error,
    StackTrace? stackTrace,
  ]);

  /// Logs a [message] with level [LogLevel.verbose].
  void verbose(String message, [Object? error, StackTrace? stackTrace]);

  /// Logs a [message] with level [LogLevel.debug].
  void debug(String message, [Object? error, StackTrace? stackTrace]);

  /// Logs a [message] with level [LogLevel.info].
  void info(String message, [Object? error, StackTrace? stackTrace]);

  /// Logs a [message] with level [LogLevel.warn].
  void warn(String message, [Object? error, StackTrace? stackTrace]);

  /// Logs a [message] with level [LogLevel.error].
  void error(String message, [Object? error, StackTrace? stackTrace]);
}
