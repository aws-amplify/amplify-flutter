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

/// {@template amplify_core.logger.log_entry}
/// A discrete log event emitted by an [AmplifyLogger].
/// {@endtemplate}
class LogEntry {
  /// {@macro amplify_core.logger.log_entry}
  LogEntry({
    required this.level,
    required this.message,
    required this.loggerName,
    DateTime? time,
    this.error,
    this.stackTrace,
  }) : time = time ?? DateTime.now();

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
  String toString() => '[${level.name}] $loggerName: $message';
}
