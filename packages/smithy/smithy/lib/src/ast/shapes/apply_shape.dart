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

part 'apply_shape.g.dart';

abstract class ApplyShape
    implements Shape, Built<ApplyShape, ApplyShapeBuilder> {
  factory ApplyShape([void Function(ApplyShapeBuilder) updates]) = _$ApplyShape;
  ApplyShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ApplyShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits = TraitMap.empty();
  }

  @override
  ShapeType getType() => ShapeType.apply;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      throw UnimplementedError();

  static Serializer<ApplyShape> get serializer => _$applyShapeSerializer;
}
