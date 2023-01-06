// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'string_shape.g.dart';

abstract class StringShape
    implements SimpleShape, Built<StringShape, StringShapeBuilder> {
  factory StringShape([void Function(StringShapeBuilder) updates]) =
      _$StringShape;
  StringShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StringShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap.empty();
  }

  static const id = ShapeId.core('String');

  EnumShape? get asEnumShape {
    final enumTrait = getTrait<EnumTrait>();
    if (enumTrait == null) {
      return null;
    }
    return StringEnumShape((b) {
      b.shapeId = shapeId;
      b.members = NamedMembersMap({});
      b.traits = traits..remove(EnumTrait.id);
      for (final definition in enumTrait.definitions) {
        final memberName = definition.name ?? definition.value;
        final deprecated = definition.deprecated ?? false;
        final docs = definition.documentation;
        final tags = definition.tags;
        b.members![memberName] = MemberShape(
          (b) => b
            ..target = Shape.unit
            ..memberName = memberName
            ..shapeId = shapeId.replace(member: memberName)
            ..traits = TraitMap.fromTraits([
              if (deprecated) const DeprecatedTrait(),
              if (docs != null) DocumentationTrait(docs),
              if (tags.isNotEmpty) TagsTrait(tags),
              EnumValueTrait(definition.value),
            ]),
        );
      }
    });
  }

  @override
  ShapeType getType() => ShapeType.string;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.stringShape(this, parent);

  static Serializer<StringShape> get serializer => _$stringShapeSerializer;
}
