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
