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

import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';

/// {@template aws_common.logging.simple_log_printer}
/// An [AWSLoggerPlugin] which prints log messages to the console when
/// running in debug mode.
/// {@endtemplate}
class SimpleLogPrinter implements AWSLoggerPlugin {
  /// {@macro aws_common.logging.simple_log_printer}
  const SimpleLogPrinter();

  /// Formats [logEntry] using level, namespace, and message components.
  static String formatLogEntry(LogEntry logEntry) {
    final buffer = StringBuffer()
      ..write(logEntry.level.name.toUpperCase().padRight(5))
      ..write(' | ');

    final namespace = logEntry.loggerName.split('.').lastOrNull;
    if (namespace != null && namespace.isNotEmpty) {
      buffer
        ..write(namespace.padRight(10))
        ..write(' | ');
    }

    buffer.write(logEntry.message);
    final error = logEntry.error;
    if (error != null) {
      buffer
        ..write(': ')
        ..writeln(error);
    }
    final stackTrace = logEntry.stackTrace;
    if (stackTrace != null) {
      buffer.writeln(stackTrace);
    }

    return buffer.toString();
  }

  @override
  void handleLogEntry(LogEntry logEntry) {
    safePrint(formatLogEntry(logEntry));
  }
}
