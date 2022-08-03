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
    b.traits = TraitMap({});
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
