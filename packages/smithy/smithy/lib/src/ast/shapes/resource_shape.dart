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

part 'resource_shape.g.dart';

abstract class ResourceShape
    implements Shape, EntityShape, Built<ResourceShape, ResourceShapeBuilder> {
  factory ResourceShape([void Function(ResourceShapeBuilder) updates]) =
      _$ResourceShape;
  ResourceShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits = TraitMap.empty();
  }

  BuiltMap<String, ShapeRef> get identifiers;
  ShapeRef? get put;
  ShapeRef? get create;
  ShapeRef? get read;

  @BuiltValueField(wireName: 'update')
  ShapeRef? get update_;

  ShapeRef? get delete;
  ShapeRef? get list;
  BuiltSet<ShapeRef> get collectionOperations;

  @override
  ShapeType getType() => ShapeType.resource;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.resourceShape(this, parent);

  static Serializer<ResourceShape> get serializer => _$resourceShapeSerializer;
}
