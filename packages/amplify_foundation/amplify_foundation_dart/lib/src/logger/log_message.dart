// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

/// {@template amplify_foundation_dart.log_message}
/// A struct representing a single log message.
/// {@endtemplate}
final class LogMessage {
  /// {@macro amplify_foundation_dart.log_message}
  const LogMessage({
    required this.level,
    required this.name,
    required this.content,
    this.error,
    this.stackTrace,
  });

  /// The log level.
  final LogLevel level;

  /// The name of the logger that created this message.
  final String name;

  /// The log message content.
  final String content;

  /// An optional error object associated with the log.
  final Object? error;

  /// An optional stack trace associated with the log.
  final StackTrace? stackTrace;
}
