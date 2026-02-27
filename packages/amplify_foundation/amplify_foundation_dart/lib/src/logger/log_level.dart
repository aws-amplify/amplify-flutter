// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// An enumeration of the different levels of logging.
/// The levels are progressive, with lower-value items being lower priority
/// than higher-value items. For example, `info` is lower priority than `warn`
/// or `error`.
enum LogLevel {
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
  verbose(5),

  /// All logging levels.
  all(6);

  const LogLevel(this.value);

  /// The numeric value of the log level.
  final int value;

  /// Check if this log level is within the threshold (less than or equal to)
  /// Returns true if this level should be logged given the threshold
  bool shouldLog(LogLevel logLevel) {
    return logLevel.value <= value;
  }
}
