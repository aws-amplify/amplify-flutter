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

part 'service_shape.g.dart';

abstract class ServiceShape
    implements Shape, EntityShape, Built<ServiceShape, ServiceShapeBuilder> {
  factory ServiceShape([void Function(ServiceShapeBuilder) updates]) =
      _$ServiceShape;
  ServiceShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServiceShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits = TraitMap.empty();
  }

  String? get version;

  // A map of Shape IDs to their rename
  BuiltMap<String, String> get rename;
  BuiltSet<ShapeRef> get errors;

  @override
  ShapeType getType() => ShapeType.service;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.serviceShape(this, parent);

  static Serializer<ServiceShape> get serializer => _$serviceShapeSerializer;
}
