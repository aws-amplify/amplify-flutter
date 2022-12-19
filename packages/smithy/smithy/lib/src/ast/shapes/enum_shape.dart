// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'enum_shape.g.dart';

@BuiltValue(instantiable: false)
abstract class EnumShape implements NamedMembersShape {
  @override
  EnumShape rebuild(void Function(EnumShapeBuilder) updates);
}

extension EnumShapeValues on EnumShape {
  Iterable<MemberShape> get enumValues => members.values;
}

abstract class StringEnumShape
    implements EnumShape, Built<StringEnumShape, StringEnumShapeBuilder> {
  factory StringEnumShape([void Function(StringEnumShapeBuilder) updates]) =
      _$StringEnumShape;
  StringEnumShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StringEnumShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits = TraitMap.empty();
  }

  @override
  ShapeType getType() => ShapeType.enum_;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.enumShape(this, parent);

  static Serializer<StringEnumShape> get serializer =>
      _$stringEnumShapeSerializer;
}

abstract class IntEnumShape
    implements EnumShape, Built<IntEnumShape, IntEnumShapeBuilder> {
  factory IntEnumShape([void Function(IntEnumShapeBuilder) updates]) =
      _$IntEnumShape;
  IntEnumShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IntEnumShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits = TraitMap.empty();
  }

  @override
  ShapeType getType() => ShapeType.intEnum;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.enumShape(this, parent);

  static Serializer<IntEnumShape> get serializer => _$intEnumShapeSerializer;
}
