// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/src/logger/log_level.dart';
import 'package:amplify_foundation_dart/src/logger/log_message.dart';
import 'package:amplify_foundation_dart/src/logger/log_sink.dart';
import 'package:amplify_foundation_dart/src/util/print.dart';
import 'package:uuid/uuid.dart';

/// {@template amplify_foundation_dart.amplify_simple_printer_log_sink}
/// A [LogSink] implementation that prints log messages to the console.
///
/// This is analogous to Swift's `AmplifyOSLogSink` but uses Dart's print
/// for output.
/// {@endtemplate}
final class AmplifySimplePrinterLogSink implements LogSink {
  /// {@macro amplify_foundation_dart.amplify_simple_printer_log_sink}
  AmplifySimplePrinterLogSink({required this.logLevel})
    : id = 'AmplifySimplePrinterLogSink-${const Uuid().v4()}';

  @override
  final String id;

  /// The maximum log level that this sink will emit.
  final LogLevel logLevel;

  @override
  bool isEnabled(LogLevel logLevel) => logLevel <= this.logLevel;

  @override
  void emit(LogMessage message) {
    if (!isEnabled(message.level)) return;

    final buffer = StringBuffer()
      ..write(message.name)
      ..write(' | ')
      ..write(message.level.name.toUpperCase().padRight(7))
      ..write(' | ')
      ..write(message.content);

    if (message.error != null) {
      buffer
        ..writeln()
        ..write(message.error);
    }
    if (message.stackTrace != null) {
      buffer
        ..writeln()
        ..write(message.stackTrace);
    }

    safePrint(buffer.toString());
  }
}
