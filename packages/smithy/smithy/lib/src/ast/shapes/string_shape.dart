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
    return EnumShape((b) {
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
