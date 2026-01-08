// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// An enumeration of the different levels of logging.
/// The levels are progressive, with lower-value items being lower priority
/// than higher-value items. For example, `info` is lower priority than `warn`
/// or `error`.
enum LogLevel {
  none(0),
  error(1),
  warn(2),
  info(3),
  debug(4),
  verbose(5),
  all(6);

  const LogLevel(this.value);

  final int value;

  /// Check if this log level is within the threshold (less than or equal to)
  /// Returns true if this level should be logged given the threshold
  bool shouldLog(LogLevel logLevel) {
    return logLevel.value <= value;
  }
}
