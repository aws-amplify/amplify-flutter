// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/serializer.dart';
import 'package:test/test.dart';
// ignore: implementation_imports
import 'package:worker_bee/src/serializers/serializers.dart';
import 'package:worker_bee/worker_bee.dart';

void main() {
  group('LogEntrySerializer', () {
    final time = DateTime.utc(2020, 1, 2, 3, 4, 5);
    final entry = WorkerLogEntry(
      level: LogLevel.warn,
      message: 'hello',
      loggerName: 'Test',
      time: time,
      local: false,
    );

    test('round-trips a log entry', () {
      final serialized = workerBeeSerializers.serialize(
        entry,
        specifiedType: FullType.unspecified,
      );
      final deserialized =
          workerBeeSerializers.deserialize(
                serialized,
                specifiedType: FullType.unspecified,
              )
              as WorkerLogEntry;

      expect(deserialized.message, 'hello');
      expect(deserialized.loggerName, 'Test');
      expect(deserialized.level, LogLevel.warn);
      expect(deserialized.local, isFalse);
      expect(deserialized.time, time);
    });

    test('accepts a double time, as dart2wasm produces over postMessage', () {
      // A postMessage round-trip surfaces the serialized microseconds as a
      // double under dart2wasm. Replace the int time in the wire format with
      // its double equivalent to prove deserialization still works.
      final serialized =
          (workerBeeSerializers.serialize(
                    entry,
                    specifiedType: FullType.unspecified,
                  )
                  as List)
              .map((v) => v is int ? v.toDouble() : v)
              .toList();

      final deserialized =
          workerBeeSerializers.deserialize(
                serialized,
                specifiedType: FullType.unspecified,
              )
              as WorkerLogEntry;

      expect(deserialized.time, time);
    });
  });
}
