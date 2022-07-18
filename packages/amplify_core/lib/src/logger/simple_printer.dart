// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';

/// {@template amplify_core.logger.simple_printer}
/// An [AmplifyLoggerPlugin] which prints log messages to the console when
/// running in debug mode.
/// {@endtemplate}
class SimplePrinter implements AmplifyLoggerPlugin {
  /// {@macro amplify_core.logger.simple_printer}
  const SimplePrinter();

  /// Formats [logEntry] using level, namespace, and message components.
  static String formatLogEntry(LogEntry logEntry) {
    final buffer = StringBuffer();

    // Log Level
    buffer.write(logEntry.level.toString().toUpperCase().padRight(5));

    // Log Namespace
    buffer.write(' | ');

    final namespace = logEntry.loggerName.split('.').lastOrNull;
    if (namespace != null && namespace.isNotEmpty) {
      buffer.write(namespace.padRight(10));
      buffer.write(' | ');
    }

    // Log Message
    buffer.write(logEntry.message);

    return buffer.toString();
  }

  @override
  void handleLogEntry(LogEntry logEntry) {
    safePrint(formatLogEntry(logEntry));
  }
}
