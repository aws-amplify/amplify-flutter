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

part 'set_shape.g.dart';

abstract class SetShape
    implements CollectionShape, Built<SetShape, SetShapeBuilder> {
  factory SetShape([void Function(SetShapeBuilder) updates]) = _$SetShape;
  SetShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SetShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits = TraitMap.empty();
  }

  @override
  ShapeType getType() => ShapeType.set;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.setShape(this, parent);

  static Serializer<SetShape> get serializer => _$setShapeSerializer;
}
