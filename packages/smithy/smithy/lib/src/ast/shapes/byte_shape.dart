// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'byte_shape.g.dart';

abstract class ByteShape
    implements SimpleShape, Built<ByteShape, ByteShapeBuilder> {
  factory ByteShape([void Function(ByteShapeBuilder) updates]) = _$ByteShape;
  ByteShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ByteShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap.empty();
  }

  static const id = ShapeId.core('Byte');

  @override
  ShapeType getType() => ShapeType.byte;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.byteShape(this, parent);

  static Serializer<ByteShape> get serializer => _$byteShapeSerializer;
}
