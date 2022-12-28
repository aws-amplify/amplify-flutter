// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'union_shape.g.dart';

abstract class UnionShape
    implements NamedMembersShape, Built<UnionShape, UnionShapeBuilder> {
  factory UnionShape([void Function(UnionShapeBuilder) updates]) = _$UnionShape;
  UnionShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UnionShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits = TraitMap.empty();
  }

  @override
  ShapeType getType() => ShapeType.union;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.unionShape(this, parent);

  static Serializer<UnionShape> get serializer => _$unionShapeSerializer;
}
