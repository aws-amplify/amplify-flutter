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

/// Bridge methods for `package:logging` types.
@internal
library aws_common.logging.logging_ext;

import 'package:aws_common/aws_common.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';

/// Helper for conversion of log level types.
extension LevelConversion on Level {
  /// The [LogLevel] corresponding to `this`.
  LogLevel get logLevel {
    if (value >= Level.OFF.value) {
      return LogLevel.none;
    } else if (value >= Level.SEVERE.value) {
      return LogLevel.error;
    } else if (value >= Level.WARNING.value) {
      return LogLevel.warn;
    } else if (value >= Level.CONFIG.value) {
      return LogLevel.info;
    } else if (value >= Level.FINE.value) {
      return LogLevel.debug;
    } else if (value >= Level.FINEST.value) {
      return LogLevel.verbose;
    }
    return LogLevel.verbose;
  }
}

/// Helper for conversion of log level types.
extension LogLevelConversion on LogLevel {
  /// The `package:logging` [Level] corresponding to `this`.
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
}

/// Helper for conversion of log record types.
extension LogRecordConversion on LogRecord {
  /// Converts `this` to an AWS [LogEntry].
  LogEntry toLogEntry() {
    return LogEntry(
      level: level.logLevel,
      message: message,
      loggerName: loggerName,
      error: error,
      stackTrace: stackTrace,
      time: time,
    );
  }
}
