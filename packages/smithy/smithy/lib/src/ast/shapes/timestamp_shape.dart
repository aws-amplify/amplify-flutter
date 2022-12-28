// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
