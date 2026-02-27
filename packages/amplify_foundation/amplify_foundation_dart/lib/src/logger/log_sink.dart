// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/src/logger/log_level.dart';
import 'package:amplify_foundation_dart/src/logger/log_message.dart';

/// {@template amplify_foundation_dart.log_sink}
/// A destination for log messages.
///
/// Implement this interface to send log messages to a specific destination.
/// For example, logging to the console or a custom logging framework.
/// {@endtemplate}
abstract interface class LogSink {
  /// A unique identifier for this log sink.
  String get id;

  /// Returns true if this sink will emit logs at the given [logLevel].
  bool isEnabled(LogLevel logLevel);

  /// Emit the given log [message].
  void emit(LogMessage message);
}
