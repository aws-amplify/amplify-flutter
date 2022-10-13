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

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

import 'serializers.dart';

part 'smithy_ast.g.dart';

class SmithyVersion extends EnumClass {
  static const SmithyVersion v1 = _$v1;
  static const SmithyVersion v2 = _$v2;

  const SmithyVersion._(String name) : super(name);

  static BuiltSet<SmithyVersion> get values => _$SmithyVersionValues;
  static SmithyVersion valueOf(String name) => _$SmithyVersionValueOf(name);

  @BuiltValueSerializer(custom: true)
  static Serializer<SmithyVersion> get serializer =>
      const SmithyVersionSerializer();
}

class SmithyVersionSerializer implements PrimitiveSerializer<SmithyVersion> {
  const SmithyVersionSerializer();

  @override
  Iterable<Type> get types => [SmithyVersion];

  @override
  String get wireName => 'SmithyVersion';

  @override
  SmithyVersion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final deserialized = serialized.toString();
    if (deserialized.startsWith('1')) {
      return SmithyVersion.v1;
    }
    if (deserialized.startsWith('2')) {
      return SmithyVersion.v2;
    }
    throw ArgumentError('Unknown Smithy version: $deserialized');
  }

  @override
  Object serialize(
    Serializers serializers,
    SmithyVersion object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    switch (object) {
      case SmithyVersion.v1:
        return '1.0';
      case SmithyVersion.v2:
        return '2.0';
    }
    throw ArgumentError('Unknown Smithy version: $object');
  }
}

abstract class SmithyAst implements Built<SmithyAst, SmithyAstBuilder> {
  factory SmithyAst([void Function(SmithyAstBuilder) updates]) = _$SmithyAst;
  SmithyAst._();

  @BuiltValueHook(finalizeBuilder: true)
  static void _init(SmithyAstBuilder b) {
    b.version ??= SmithyVersion.v1;
  }

  @BuiltValueField(wireName: 'smithy')
  SmithyVersion get version;
  BuiltMap<String, JsonObject> get metadata;
  ShapeMap get shapes;

  Map<String, Object?> toJson() {
    return serializers.serializeWith(SmithyAst.serializer, this)
        as Map<String, Object?>;
  }

  static SmithyAst fromJson(Map<String, Object?> json) {
    return serializers.deserializeWith(SmithyAst.serializer, json) as SmithyAst;
  }

  static Serializer<SmithyAst> get serializer => _$smithyAstSerializer;

  SmithyAst merge(SmithyAst other) {
    return SmithyAst(
      (b) => b
        ..version = version
        ..metadata.addAll(metadata.toMap())
        ..metadata.addAll(other.metadata.toMap())
        ..shapes = ShapeMap(shapes)
        ..shapes!.addAll(other.shapes),
    );
  }
}
