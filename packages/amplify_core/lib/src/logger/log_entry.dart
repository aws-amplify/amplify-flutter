import 'package:logging/logging.dart';

import 'level_extension.dart';
import 'log_level.dart';

class LogEntry {
  final LogLevel level;
  final String message;

  /// Logger where this record is stored.
  final String loggerName;

  /// Time when this record was created.
  final DateTime time;

  /// Associated error (if any) when recording errors messages.
  final Object? error;

  /// Associated stackTrace (if any) when recording errors messages.
  final StackTrace? stackTrace;

  LogEntry(this.level, this.message, this.loggerName,
      [this.error, this.stackTrace])
      : time = DateTime.now();

  LogEntry.fromLogRecord(LogRecord logRecord)
      : level = logRecord.level.logLevel,
        message = logRecord.message,
        loggerName = logRecord.loggerName,
        error = logRecord.error,
        stackTrace = logRecord.stackTrace,
        time = logRecord.time;

  @override
  String toString() => '[${level.name}] $loggerName: $message';
}
