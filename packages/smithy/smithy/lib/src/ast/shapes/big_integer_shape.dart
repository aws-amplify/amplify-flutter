// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'big_integer_shape.g.dart';

abstract class BigIntegerShape
    implements SimpleShape, Built<BigIntegerShape, BigIntegerShapeBuilder> {
  factory BigIntegerShape([void Function(BigIntegerShapeBuilder) updates]) =
      _$BigIntegerShape;
  BigIntegerShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BigIntegerShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap.empty();
  }

  static const id = ShapeId.core('BigInteger');

  @override
  ShapeType getType() => ShapeType.bigInteger;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.bigIntegerShape(this, parent);

  static Serializer<BigIntegerShape> get serializer =>
      _$bigIntegerShapeSerializer;
}
