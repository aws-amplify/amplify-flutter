// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
library worker_bee.log_serializers;

import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import 'package:worker_bee/worker_bee.dart';

/// {@template worker_bee.log_entry_serializer}
/// Serializer for [LogEntry] and [WorkerLogEntry].
/// {@endtemplate}
class LogEntrySerializer implements StructuredSerializer<LogEntry> {
  /// {@macro worker_bee.log_entry_serializer}
  const LogEntrySerializer();

  @override
  Iterable<Type> get types => const [LogEntry, WorkerLogEntry];

  @override
  String get wireName => 'LogEntry';

  @override
  LogEntry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    late LogLevel level;
    late String message;
    late String loggerName;
    late DateTime time;
    Object? error;
    StackTrace? stackTrace;
    bool? local;
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'level':
          level = LogLevel.values.byName(value as String);
          break;
        case 'message':
          message = value as String;
          break;
        case 'loggerName':
          loggerName = value as String;
          break;
        case 'time':
          time = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          break;
        case 'error':
          error = value?.toString();
          break;
        case 'stackTrace':
          stackTrace = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(StackTrace),
          ) as StackTrace;
          break;
        case 'local':
          local = value as bool;
          break;
      }
    }

    final entry = LogEntry(
      level: level,
      message: message,
      loggerName: loggerName,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
    if (local != null) {
      return WorkerLogEntry.fromLogEntry(entry, local: local);
    }
    return entry;
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LogEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      'level',
      object.level.name,
      'message',
      object.message,
      'loggerName',
      object.loggerName,
      'time',
      serializers.serialize(
        object.time.toUtc(),
        specifiedType: const FullType(DateTime),
      ),
      if (object.error != null) ...[
        'error',
        object.error.toString(),
      ],
      if (object.stackTrace != null) ...[
        'stackTrace',
        serializers.serialize(
          object.stackTrace,
          specifiedType: const FullType(StackTrace),
        ),
      ],
      if (object is WorkerLogEntry) ...[
        'local',
        object.local,
      ]
    ];
  }
}
