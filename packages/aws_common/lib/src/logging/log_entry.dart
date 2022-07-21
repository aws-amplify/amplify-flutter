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
