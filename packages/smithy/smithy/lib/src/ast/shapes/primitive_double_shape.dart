// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'primitive_double_shape.g.dart';

abstract class PrimitiveDoubleShape
    implements
        SimpleShape,
        Built<PrimitiveDoubleShape, PrimitiveDoubleShapeBuilder> {
  factory PrimitiveDoubleShape(
          [void Function(PrimitiveDoubleShapeBuilder) updates]) =
      _$PrimitiveDoubleShape;
  PrimitiveDoubleShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PrimitiveDoubleShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap.fromTraits(const [
      DefaultTrait(0),
    ]);
  }

  static const id = ShapeId.core('PrimitiveDouble');

  @override
  ShapeType getType() => ShapeType.double;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.primitiveDoubleShape(this, parent);

  static Serializer<PrimitiveDoubleShape> get serializer =>
      _$primitiveDoubleShapeSerializer;
}
