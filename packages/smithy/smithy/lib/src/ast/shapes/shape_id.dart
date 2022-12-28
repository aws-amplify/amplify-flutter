// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:built_value/serializer.dart';
import 'package:json_annotation/json_annotation.dart';

const coreNamespace = 'smithy.api';

class ShapeId with AWSEquatable<ShapeId>, AWSSerializable {
  const ShapeId({
    required this.namespace,
    required this.shape,
    this.member,
  });

  static const empty = ShapeId(namespace: '', shape: '');
  static final serializer = ShapeIdSerializer();

  const ShapeId.core(this.shape, [this.member]) : namespace = coreNamespace;

  factory ShapeId.parse(String shapeId) => ShapeId(
        namespace: shapeId.split('#').first,
        shape: shapeId.substring(
          shapeId.indexOf('#') + 1,
          shapeId.contains('\$') ? shapeId.indexOf('\$') : shapeId.length,
        ),
        member: shapeId.contains('\$') ? shapeId.split('\$').last : null,
      );

  final String namespace;
  final String shape;
  final String? member;

  String get absoluteName =>
      '$namespace#$shape${member == null ? '' : '\$$member'}';

  ShapeId replace({
    String? namespace,
    String? shape,
    Object? member = const Object(),
  }) {
    return ShapeId(
      namespace: namespace ?? this.namespace,
      shape: shape ?? this.shape,
      member: member is String
          ? member
          : member == const Object()
              ? this.member
              : null,
    );
  }

  @override
  List<Object?> get props => [namespace, shape, member];

  @override
  String toJson() => absoluteName;

  @override
  String toString() => absoluteName;

  /// Whether this shape represents a core/built-in shape.
  bool get isCoreShape => namespace == coreNamespace;
}

class ShapeIdConverter implements JsonConverter<ShapeId, String> {
  const ShapeIdConverter();

  @override
  ShapeId fromJson(String json) => ShapeId.parse(json);

  @override
  String toJson(ShapeId object) => object.toJson();
}

class NullableShapeIdConverter implements JsonConverter<ShapeId?, String?> {
  const NullableShapeIdConverter();

  @override
  ShapeId? fromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ShapeId.parse(json);
  }

  @override
  String? toJson(ShapeId? object) => object?.toJson();
}

class ShapeIdSerializer extends PrimitiveSerializer<ShapeId> {
  @override
  ShapeId deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return ShapeId.parse(serialized as String);
  }

  @override
  String serialize(Serializers serializers, ShapeId object,
      {FullType specifiedType = FullType.unspecified}) {
    return object.absoluteName;
  }

  @override
  Iterable<Type> get types => [ShapeId];

  @override
  String get wireName => 'ShapeId';
}
