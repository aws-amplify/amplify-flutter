// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/serializer.dart';
import 'package:test/test.dart';
// ignore: implementation_imports
import 'package:worker_bee/src/serializers/int_coercing_serializer.dart';
// ignore: implementation_imports
import 'package:worker_bee/src/serializers/serializers.dart';

typedef _Case = ({String name, Type type, Object value});

void main() {
  group('IntCoercingSerializer', () {
    final cases = <_Case>[
      (name: 'int', type: int, value: 42),
      (name: 'negative int', type: int, value: -42),
      (
        name: 'Duration',
        type: Duration,
        value: const Duration(hours: 1, minutes: 2, seconds: 3),
      ),
      (
        name: 'negative Duration',
        type: Duration,
        value: const Duration(seconds: -5),
      ),
      (name: 'DateTime', type: DateTime, value: DateTime.utc(2017, 6, 15, 7)),
      (
        name: 'pre-epoch DateTime',
        type: DateTime,
        value: DateTime.utc(1969, 7, 20),
      ),
    ];

    for (final c in cases) {
      group(c.name, () {
        final fullType = FullType(c.type);

        test('round-trips', () {
          final serialized = workerBeeSerializers.serialize(
            c.value,
            specifiedType: fullType,
          );
          final deserialized = workerBeeSerializers.deserialize(
            serialized,
            specifiedType: fullType,
          );
          expect(deserialized, c.value);
        });

        test('accepts a double, as dart2wasm produces over postMessage', () {
          final serialized = workerBeeSerializers.serialize(
            c.value,
            specifiedType: fullType,
          );
          // Stand in for the double dart2wasm hands back over postMessage.
          final asDouble = (serialized as int).toDouble();
          final deserialized = workerBeeSerializers.deserialize(
            asDouble,
            specifiedType: fullType,
          );
          expect(deserialized, c.value);
        });
      });
    }

    test('coerces a whole-number double back to int', () {
      final deserialized = workerBeeSerializers.deserialize(
        42.0,
        specifiedType: const FullType(int),
      );
      expect(deserialized, isA<int>());
      expect(deserialized, 42);
    });

    test('round-trips an int within double precision (2^53)', () {
      // Ints up to 2^53 are exactly representable as a double; larger
      // magnitudes lose precision on the wire and are out of scope.
      const value = 9007199254740992; // 2^53
      final deserialized = workerBeeSerializers.deserialize(
        value.toDouble(),
        specifiedType: const FullType(int),
      );
      expect(deserialized, value);
    });

    test('preserves the DateTime UTC check of the delegate', () {
      // Delegated serialization keeps DateTime's UTC requirement.
      expect(
        () => workerBeeSerializers.serialize(
          DateTime(2017, 6, 15, 7),
          specifiedType: const FullType(DateTime),
        ),
        throwsArgumentError,
      );
    });

    test('forType rejects a fractional type it would truncate', () {
      expect(
        IntCoercingSerializer<double>.forType,
        throwsA(isA<AssertionError>()),
      );
    });
  });
}
