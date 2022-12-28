// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'member_shape.g.dart';

abstract class MemberShape
    implements Shape, Built<MemberShape, MemberShapeBuilder> {
  factory MemberShape([void Function(MemberShapeBuilder) updates]) =
      _$MemberShape;
  MemberShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MemberShapeBuilder b) {
    b
      ..shapeId = ShapeId.empty
      ..memberName = ''
      ..traits = TraitMap({});
  }

  ShapeId get target;
  String get memberName;

  @override
  ShapeType getType() => ShapeType.member;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.memberShape(this, parent);

  static Serializer<MemberShape> get serializer => _$memberShapeSerializer;
}
