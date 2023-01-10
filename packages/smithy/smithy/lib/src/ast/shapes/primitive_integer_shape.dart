// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'primitive_integer_shape.g.dart';

abstract class PrimitiveIntegerShape
    implements
        SimpleShape,
        Built<PrimitiveIntegerShape, PrimitiveIntegerShapeBuilder> {
  factory PrimitiveIntegerShape(
          [void Function(PrimitiveIntegerShapeBuilder) updates]) =
      _$PrimitiveIntegerShape;
  PrimitiveIntegerShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PrimitiveIntegerShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap.fromTraits(const [
      DefaultTrait(0),
    ]);
  }

  static const id = ShapeId.core('PrimitiveInteger');

  @override
  ShapeType getType() => ShapeType.integer;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.primitiveIntegerShape(this, parent);

  static Serializer<PrimitiveIntegerShape> get serializer =>
      _$primitiveIntegerShapeSerializer;
}
