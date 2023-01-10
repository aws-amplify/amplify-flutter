// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
