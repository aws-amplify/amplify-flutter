// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';

/// The different levels of logging.
enum LogLevel implements Comparable<LogLevel> {
  /// Prevents any logs from being emitted.
  @JsonValue('NONE')
  none,

  /// Logs for showing behavior of particular components/flows.
  ///
  /// **Note**: May contain information inappropriate for emission into
  /// production environments.
  @JsonValue('VERBOSE')
  verbose,

  /// Logs for understanding system behavior.
  ///
  /// **Note**: May contain information inappropriate for emission into
  /// production environments.
  @JsonValue('DEBUG')
  debug,

  /// Logs providing terse info about general operation and flow of software.
  @JsonValue('INFO')
  info,

  /// Logs indicating potential issues.
  @JsonValue('WARN')
  warn,

  /// Logs when system is not operating as expected.
  @JsonValue('ERROR')
  error;

  @override
  int compareTo(LogLevel other) {
    return index - other.index;
  }

  bool operator >(LogLevel value) => index > value.index;
  bool operator >=(LogLevel value) => index >= value.index;
  bool operator <(LogLevel value) => index < value.index;
  bool operator <=(LogLevel value) => index <= value.index;

  @override
  String toString() => name;
}
