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

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'operation_shape.g.dart';

abstract class OperationShape
    implements Shape, Built<OperationShape, OperationShapeBuilder> {
  factory OperationShape([void Function(OperationShapeBuilder) updates]) =
      _$OperationShape;
  OperationShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OperationShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits = TraitMap.empty();
  }

  ShapeRef? get input;
  ShapeRef? get output;
  BuiltList<ShapeRef> get errors;

  @override
  ShapeType getType() => ShapeType.operation;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.operationShape(this, parent);

  static Serializer<OperationShape> get serializer =>
      _$operationShapeSerializer;
}
