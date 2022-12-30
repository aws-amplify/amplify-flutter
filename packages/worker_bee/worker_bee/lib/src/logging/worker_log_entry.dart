// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';

/// {@template worker_bee.worker_log_entry}
/// A [LogEntry] emitted by a worker bee.
/// {@endtemplate}
class WorkerLogEntry extends LogEntry {
  /// {@macro worker_bee.worker_log_entry}
  WorkerLogEntry({
    required super.level,
    required super.message,
    required super.loggerName,
    required this.local,
    super.time,
    super.error,
    super.stackTrace,
  });

  /// Creates a [WorkerLogEntry] by wrapping [entry].
  WorkerLogEntry.fromLogEntry(
    LogEntry entry, {
    required bool local,
  }) : this(
          level: entry.level,
          message: entry.message,
          loggerName: entry.loggerName,
          local: local,
          time: entry.time,
          error: entry.error,
          stackTrace: entry.stackTrace,
        );

  /// Whether the log was emitted locally or in a worker.
  final bool local;
}
