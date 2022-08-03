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

// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:collection/collection.dart';
import 'package:smithy/ast.dart';

part 'collection_shape.g.dart';

@BuiltValue(instantiable: false)
abstract class NamedMembersShape implements Shape {
  NamedMembersMap get members;

  @override
  NamedMembersShape rebuild(void Function(NamedMembersShapeBuilder) updates);
}

class NamedMembersMap extends DelegatingMap<String, MemberShape> {
  NamedMembersMap(Map<String, MemberShape> members) : super(members);

  @override
  bool operator ==(Object? other) =>
      identical(this, other) ||
      other is NamedMembersMap &&
          const MapEquality<String, MemberShape>().equals(this, other);

  @override
  int get hashCode => const MapEquality<String, MemberShape>().hash(this);
}

class NamedMembersMapSerializer extends StructuredSerializer<NamedMembersMap> {
  @override
  NamedMembersMap deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final membersMap = NamedMembersMap({});
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final memberName = iterator.current as String;
      final shapeId = ShapeId.empty.replace(member: memberName);
      iterator.moveNext();
      final Object? value = iterator.current;
      membersMap[memberName] = serializers
          .deserializeWith(
              MemberShape.serializer,
              StandardJsonPlugin()
                  .beforeDeserialize(value, const FullType(MemberShape)))!
          .rebuild((b) => b
            ..shapeId = shapeId
            ..memberName = memberName);
    }
    return membersMap;
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, NamedMembersMap object,
      {FullType specifiedType = FullType.unspecified}) sync* {
    for (var entry in object.entries) {
      yield entry.key;
      yield serializers.serializeWith(Shape.serializer, entry.value);
    }
  }

  @override
  Iterable<Type> get types => [NamedMembersMap];

  @override
  String get wireName => 'NamedMembersMap';
}

/// Abstract class representing Set and List shapes.
@BuiltValue(instantiable: false)
abstract class CollectionShape implements Shape {
  MemberShape get member;

  @override
  CollectionShape rebuild(void Function(CollectionShapeBuilder) updates);
}
