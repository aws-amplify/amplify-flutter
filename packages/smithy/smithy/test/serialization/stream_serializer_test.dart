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

import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart';
import 'package:test/test.dart';

void main() {
  group('StreamSerializer', () {
    final streamSerializer = StreamSerializer<List<int>>();
    final serializers = (Serializers().toBuilder()
          ..add(const BlobSerializer('text/plain'))
          ..add(StreamSerializer<List<int>>()))
        .build();

    group('serialize', () {
      test('using specifiedType', () {
        final stream = Stream.value(utf8.encode('hello'));
        final serialized = serializers.serialize(
          stream,
          specifiedType: const FullType(Stream<List<int>>),
        );
        expect(serialized, emits('hello'));
      });

      test('using serializeWith', () {
        final stream = Stream.value(utf8.encode('hello'));
        final serialized = serializers.serializeWith(
          streamSerializer,
          stream,
        );
        expect(serialized, emits('hello'));
      });

      test('with multiple stream serializers', () {
        final doubleStreamSerializer = StreamSerializer<double>();
        final allSerializers = (serializers.toBuilder()
              ..add(doubleStreamSerializer)
              ..add(const DoubleSerializer()))
            .build();

        final stringStream = Stream.value(utf8.encode('hello'));
        final stringSerialized = allSerializers.serialize(
          stringStream,
          specifiedType: const FullType(Stream<List<int>>),
        );
        expect(stringSerialized, emits('hello'));

        final doubleStream = Stream.value(5.0);
        final doubleSerialized = allSerializers.serialize(
          doubleStream,
          specifiedType: const FullType(Stream<double>),
        );
        expect(doubleSerialized, emits(5.0));
      });
    });

    group('deserialize', () {
      test('using specifiedType', () {
        final stream = Stream.value('hello');
        final serialized = serializers.deserialize(
          stream,
          specifiedType: const FullType(Stream<List<int>>),
        );
        expect(serialized, emits(orderedEquals('hello'.codeUnits)));
      });

      test('using serializeWith', () {
        final stream = Stream.value('hello');
        final serialized = serializers.deserializeWith(
          streamSerializer,
          stream,
        );
        expect(serialized, emits(orderedEquals('hello'.codeUnits)));
      });

      test('with multiple stream serializers', () {
        final doubleStreamSerializer = StreamSerializer<double>();
        final allSerializers = (serializers.toBuilder()
              ..add(doubleStreamSerializer)
              ..add(const DoubleSerializer()))
            .build();

        final stringStream = Stream.value('hello');
        final stringSerialized = allSerializers.deserialize(
          stringStream,
          specifiedType: const FullType(Stream<List<int>>),
        );
        expect(stringSerialized, emits(orderedEquals('hello'.codeUnits)));

        final doubleStream = Stream.value(5.0);
        final doubleSerialized = allSerializers.deserialize(
          doubleStream,
          specifiedType: const FullType(Stream<double>),
        );
        expect(doubleSerialized, emits(5.0));
      });
    });
  });
}
