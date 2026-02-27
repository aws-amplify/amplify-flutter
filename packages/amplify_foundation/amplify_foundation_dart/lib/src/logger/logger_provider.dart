// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/src/logger/logger.dart';

/// {@template amplify_foundation_dart.logger_provider}
/// A provider for creating and managing loggers.
/// {@endtemplate}
abstract interface class LoggerProvider {
  /// {@template amplify_foundation_dart.logger_provider.resolve}
  /// Resolves a logger by name.
  /// {@endtemplate}
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
