// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

abstract interface class LoggerProvider {
  Logger resolve(String name);
}

final class AmplifyLoggerProvider implements LoggerProvider {
  AmplifyLoggerProvider({required this.createLogger});

  final Map<String, Logger> _loggers = {};

  final Logger Function(String) createLogger;

  @override
  Logger resolve(String name) {
    return _loggers.putIfAbsent(name, () => createLogger.call(name));
  }
}

final class AmplifyNoOpLoggerProvider extends AmplifyLoggerProvider {
  AmplifyNoOpLoggerProvider() : super(createLogger: _createLogger);

  static Logger _createLogger(String name) {
    return AmplifyNoOpLogger(name: name);
  }
}

final class AmplifySimplePrinterLoggerProvider extends AmplifyLoggerProvider {
  AmplifySimplePrinterLoggerProvider() : super(createLogger: _createLogger);

  static Logger _createLogger(String name) {
    return AmplifySimplePrinterLogger(name: name);
  }
}
