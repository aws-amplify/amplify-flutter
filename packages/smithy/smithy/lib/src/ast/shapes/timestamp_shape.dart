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

part 'timestamp_shape.g.dart';

abstract class TimestampShape
    implements SimpleShape, Built<TimestampShape, TimestampShapeBuilder> {
  factory TimestampShape([void Function(TimestampShapeBuilder) updates]) =
      _$TimestampShape;
  TimestampShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TimestampShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap.empty();
  }

  static const id = ShapeId.core('Timestamp');

  @override
  ShapeType getType() => ShapeType.timestamp;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.timestampShape(this, parent);

  static Serializer<TimestampShape> get serializer =>
      _$timestampShapeSerializer;
}
