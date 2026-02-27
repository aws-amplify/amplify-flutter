// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// An enumeration of the different levels of logging.
///
/// The levels are progressive, with lower-value items being higher priority
/// than higher-value items. For example, `info` is lower priority than `warn`
/// or `error`. At a given level, only log messages of higher level (lower in
/// value) are allowed.
enum LogLevel implements Comparable<LogLevel> {
  /// No logging.
  none(0),

  /// Error level logging.
  error(1),

  /// Warning level logging.
  warn(2),

  /// Info level logging.
  info(3),

  /// Debug level logging.
  debug(4),

  /// Verbose level logging.
  verbose(5);

  const LogLevel(this.value);

  /// The numeric value of the log level.
  final int value;

  @override
  int compareTo(LogLevel other) => value.compareTo(other.value);

  /// Returns true if [other] is less than or equal to this level.
  bool operator <(LogLevel other) => value < other.value;

  /// Returns true if [other] is less than or equal to this level.
  bool operator <=(LogLevel other) => value <= other.value;

  /// Returns true if [other] is greater than this level.
  bool operator >(LogLevel other) => value > other.value;

  /// Returns true if [other] is greater than or equal to this level.
  bool operator >=(LogLevel other) => value >= other.value;
}
