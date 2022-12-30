// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: public_member_api_docs

/// The different levels of logging.
enum LogLevel implements Comparable<LogLevel> {
  /// Logs for showing behavior of particular components/flows.
  ///
  /// **Note**: May contain information inappropriate for emission into
  /// production environments.
  verbose,

  /// Logs for understanding system behavior.
  ///
  /// **Note**: May contain information inappropriate for emission into
  /// production environments.
  debug,

  /// Logs providing terse info about general operation and flow of software.
  info,

  /// Logs indicating potential issues.
  warn,

  /// Logs when system is not operating as expected.
  error,

  /// Prevents any logs from being emitted.
  none;

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
