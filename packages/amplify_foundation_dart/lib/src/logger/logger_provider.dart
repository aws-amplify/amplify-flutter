// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

/// {@template amplify_foundation_dart.logger_provider}
/// A provider for creating and managing loggers.
/// {@endtemplate}
abstract interface class LoggerProvider {
  /// Resolves a logger by name.
  Logger resolve(String name);
}

/// {@template amplify_foundation_dart.amplify_logger_provider}
/// A logger provider implementation for Amplify.
/// {@endtemplate}
final class AmplifyLoggerProvider implements LoggerProvider {
  /// {@macro amplify_foundation_dart.amplify_logger_provider}
  AmplifyLoggerProvider({required this.createLogger});

  final Map<String, Logger> _loggers = {};

  /// A factory function for creating loggers.
  final Logger Function(String) createLogger;

  @override
  Logger resolve(String name) {
    return _loggers.putIfAbsent(name, () => createLogger.call(name));
  }
}

/// {@template amplify_foundation_dart.amplify_no_op_logger_provider}
/// A logger provider that creates no-op loggers.
/// {@endtemplate}
final class AmplifyNoOpLoggerProvider extends AmplifyLoggerProvider {
  /// {@macro amplify_foundation_dart.amplify_no_op_logger_provider}
  AmplifyNoOpLoggerProvider() : super(createLogger: _createLogger);

  static Logger _createLogger(String name) {
    return AmplifyNoOpLogger(name: name);
  }
}

/// {@template amplify_foundation_dart.amplify_simple_printer_logger_provider}
/// A logger provider that creates simple printer loggers.
/// {@endtemplate}
final class AmplifySimplePrinterLoggerProvider extends AmplifyLoggerProvider {
  /// {@macro amplify_foundation_dart.amplify_simple_printer_logger_provider}
  AmplifySimplePrinterLoggerProvider() : super(createLogger: _createLogger);

  static Logger _createLogger(String name) {
    return AmplifySimplePrinterLogger(name: name);
  }
}
