// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

/// {@template amplify_foundation_dart.amplify_log}
/// A log entry emitted by an Amplify logger.
/// {@endtemplate}
class AmplifyLog {
  /// {@macro amplify_foundation_dart.amplify_log}
  AmplifyLog({
    required this.timestamp,
    required this.name,
    required this.level,
    required this.message,
    this.error,
    this.stackTrace,
  });

  /// The timestamp when the log was created.
  DateTime timestamp;

  /// The name of the logger that created this log.
  String name;

  /// The log level.
  LogLevel level;

  /// The log message.
  String message;

  /// An optional error object associated with the log.
  Object? error;

  /// An optional stack trace associated with the log.
  StackTrace? stackTrace;
}
