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

part 'primitive_float_shape.g.dart';

abstract class PrimitiveFloatShape
    implements
        SimpleShape,
        Built<PrimitiveFloatShape, PrimitiveFloatShapeBuilder> {
  factory PrimitiveFloatShape(
          [void Function(PrimitiveFloatShapeBuilder) updates]) =
      _$PrimitiveFloatShape;
  PrimitiveFloatShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PrimitiveFloatShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap.empty();
  }

  static const id = ShapeId.core('PrimitiveFloat');

  @override
  ShapeType getType() => ShapeType.float;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.primitiveFloatShape(this, parent);

  static Serializer<PrimitiveFloatShape> get serializer =>
      _$primitiveFloatShapeSerializer;
}
