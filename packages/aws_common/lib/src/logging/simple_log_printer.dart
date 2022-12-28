// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
