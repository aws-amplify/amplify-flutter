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
import 'dart:typed_data';

import 'package:built_value/serializer.dart';
import 'package:built_value/src/bool_serializer.dart';
import 'package:built_value/src/built_list_serializer.dart';
import 'package:built_value/src/built_map_serializer.dart';
import 'package:built_value/src/built_set_serializer.dart';
import 'package:fixnum/fixnum.dart';
import 'package:smithy/smithy.dart' hide Serializer;

/// Built [Serializers] used when running Smithy tests, normalizing all types
/// to JSON which is the format in which the Smithy team defines the test input.
final testSerializers = (Serializers().toBuilder()
      ..addPlugin(SmithyJsonPlugin())
      ..addAll(_testSerializers))
    .build();

final _testSerializers = <Serializer<dynamic>>[
  const _BinaryTestSerializer(),
  const _Int64Serializer(),
  BigIntSerializer.asString,
  const DoubleSerializer(),
  TimestampSerializer.epochSeconds,
  const UnitSerializer(),
  BoolSerializer(),
  BuiltMapSerializer(),
  BuiltListSerializer(),
  BuiltSetSerializer(),
];

/// Builds a [Serializers] object from a base [protocol] serializers, including
/// any test serializers or other [userSerializers] in the final object.
Serializers buildSerializers(
  Serializers protocol,
  List<Serializer<dynamic>>? userSerializers,
) {
  final serializersBuilder = testSerializers.toBuilder()
    ..addAll([
      ...protocol.serializers,
      ..._testSerializers,
      ...?userSerializers,
    ]);
  for (final builderFactory in protocol.builderFactories.entries) {
    serializersBuilder.addBuilderFactory(
      builderFactory.key,
      builderFactory.value,
    );
  }
  return serializersBuilder.build();
}

/// Parameter values that contain binary data MUST be defined using values that
/// can be represented in plain text (for example, use "foo" and not "Zm9vCg==").
/// While this limits the kinds of binary values that can be tested in protocol
/// tests, it allows protocol tests to demonstrate the requirement of many
/// protocols that binary data is automatically base64 encoded and decoded.
class _BinaryTestSerializer implements PrimitiveSerializer<Uint8List> {
  const _BinaryTestSerializer();

  @override
  Uint8List deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    serialized as String;
    return Uint8List.fromList(utf8.encode(serialized));
  }

  @override
  Object serialize(
    Serializers serializers,
    Uint8List object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw UnimplementedError();
  }

  @override
  Iterable<Type> get types => [Uint8List, Uint8List(0).runtimeType];

  @override
  String get wireName => 'Blob';
}

class _Int64Serializer implements PrimitiveSerializer<Int64> {
  const _Int64Serializer();

  @override
  Iterable<Type> get types => const [Int64];

  @override
  String get wireName => 'Long';

  @override
  Object serialize(
    Serializers serializers,
    Int64 int64, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return int64.toInt();
  }

  @override
  Int64 deserialize(
    Serializers serializers,
    Object? serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serialized is num
        ? Int64(serialized.toInt())
        : Int64.parseInt(serialized as String);
  }
}
