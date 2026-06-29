// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/serializer.dart';
import 'package:test/test.dart';
// ignore: implementation_imports
import 'package:worker_bee/src/serializers/serializers.dart';

void main() {
  group('DateTimeSerializer', () {
    final time = DateTime.utc(2017, 6, 15, 7);

    test('round-trips a DateTime', () {
      final serialized = workerBeeSerializers.serialize(
        time,
        specifiedType: const FullType(DateTime),
      );
      final deserialized = workerBeeSerializers.deserialize(
        serialized,
        specifiedType: const FullType(DateTime),
      );
      expect(deserialized, time);
    });

    test('accepts a double, as dart2wasm produces over postMessage', () {
      // built_value's default serializer casts straight to int and would throw
      // on the double a postMessage round-trip yields under dart2wasm.
      final serialized = workerBeeSerializers.serialize(
        time,
        specifiedType: const FullType(DateTime),
      );
      final asDouble = (serialized as int).toDouble();
      final deserialized = workerBeeSerializers.deserialize(
        asDouble,
        specifiedType: const FullType(DateTime),
      );
      expect(deserialized, time);
    });
  });
}
