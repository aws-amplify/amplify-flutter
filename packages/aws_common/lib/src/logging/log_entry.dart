// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';

/// {@template aws_common.logging.log_entry}
/// A discrete log event emitted by an [AWSLogger].
/// {@endtemplate}
class LogEntry with AWSEquatable<LogEntry>, AWSDebuggable {
  /// {@macro aws_common.logging.log_entry}
  LogEntry({
    required this.level,
    required this.message,
    required this.loggerName,
    DateTime? time,
    this.error,
    this.stackTrace,
  }) : time = (time ?? DateTime.now()).toUtc();

  /// The level at which this entry was logged.
  final LogLevel level;

  /// The log's message, intended for displaying.
  final String message;

  /// The name of the logger which emitted this entry.
  final String loggerName;

  /// The time when this entry was emitted.
  final DateTime time;

  /// The associated error, if any.
  final Object? error;

  /// The associated stack trace, if any.
  final StackTrace? stackTrace;

  @override
  List<Object?> get props => [
    level,
    message,
    loggerName,
    time,
    error,
    stackTrace,
  ];

  /// Creates a copy of `this` with the given values.
  LogEntry copyWith({
    LogLevel? level,
    String? message,
    String? loggerName,
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    return LogEntry(
      level: level ?? this.level,
      message: message ?? this.message,
      loggerName: loggerName ?? this.loggerName,
      time: time ?? this.time,
      error: error ?? this.error,
      stackTrace: stackTrace ?? this.stackTrace,
    );
  }

  @override
  String get runtimeTypeName => 'LogEntry';
}
