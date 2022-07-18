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

/// An enumeration of the different levels of logging.
/// The levels are progressive, with lower-value items being lower priority
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
