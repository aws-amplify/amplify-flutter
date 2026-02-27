// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/src/logger/log_level.dart';

/// A component which can emit logs.
abstract interface class Logger {
  /// {@template amplify_foundation_dart.logger.error}
  /// Logs a message at `error` level.
  ///
  /// Use this for logging error conditions that require immediate attention.
  /// Optionally include an [error] object and [stackTrace] for debugging.
  /// {@endtemplate}
  void error(String message, [Object? error, StackTrace? stackTrace]);

  /// {@template amplify_foundation_dart.logger.warn}
  /// Logs a message at `warn` level.
  ///
  /// Use this for logging warning conditions that may require attention but
  /// are not critical errors. Optionally include an [error] object and
  /// [stackTrace] for debugging.
  /// {@endtemplate}
  void warn(String message, [Object? error, StackTrace? stackTrace]);

  /// {@template amplify_foundation_dart.logger.info}
  /// Logs a message at `info` level.
  ///
  /// Use this for logging informational messages about normal application
  /// operation. Optionally include an [error] object and [stackTrace] for
  /// debugging.
  /// {@endtemplate}
  void info(String message, [Object? error, StackTrace? stackTrace]);

  /// {@template amplify_foundation_dart.logger.debug}
  /// Logs a message at `debug` level.
  ///
  /// Use this for logging detailed debugging information. Optionally include
  /// an [error] object and [stackTrace] for debugging.
  /// {@endtemplate}
  void debug(String message, [Object? error, StackTrace? stackTrace]);

  /// {@template amplify_foundation_dart.logger.verbose}
  /// Logs a message at `verbose` level.
  ///
  /// Use this for logging highly detailed trace information. Optionally
  /// include an [error] object and [stackTrace] for debugging.
  /// {@endtemplate}
  void verbose(String message, [Object? error, StackTrace? stackTrace]);

  /// Logs a message at the given [logLevel].
  void log(
    LogLevel logLevel,
    String message, [
    Object? error,
    StackTrace? stackTrace,
  ]);
}
