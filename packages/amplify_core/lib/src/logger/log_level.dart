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

import 'package:logging/logging.dart';

/// An enumeration of the different levels of logging.
/// The levels are progressive, with lower-value items being lower priority
enum LogLevel implements Comparable<LogLevel> {
  /// Logs for showing behavior of particular components/flows
  /// Not suitable for production as they may contain sensitive information
  verbose,

  /// Logs for understanding system behavior
  /// May contain information inappropriate for emission into production environments
  debug,

  /// Logs providing terse info about general operation and flow of software
  info,

  /// Logs indicating potential issues
  warn,

  /// Logs when system is not operating as expected
  error,

  /// Highest priority log to use as threshold value to prevent any logs from being emitted
  none;

  @override
  int compareTo(LogLevel other) {
    return index - other.index;
  }

  bool operator >(LogLevel value) => index > value.index;
  bool operator >=(LogLevel value) => index >= value.index;
  bool operator <(LogLevel value) => index < value.index;
  bool operator <=(LogLevel value) => index <= value.index;

  Level get level {
    switch (this) {
      case LogLevel.verbose:
        return Level.FINEST;
      case LogLevel.debug:
        return Level.FINE;
      case LogLevel.info:
        return Level.CONFIG;
      case LogLevel.warn:
        return Level.WARNING;
      case LogLevel.error:
        return Level.SEVERE;
      case LogLevel.none:
        return Level.OFF;
    }
  }

  @override
  String toString() => name;
}
