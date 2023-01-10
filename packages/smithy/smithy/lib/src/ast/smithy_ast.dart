// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
