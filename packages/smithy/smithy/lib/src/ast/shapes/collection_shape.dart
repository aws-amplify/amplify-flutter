// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
  NamedMembersMap(super.members);

  @override
  bool operator ==(Object other) =>
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
      final value = iterator.current;
      membersMap[memberName] = serializers
          .deserializeWith(
            MemberShape.serializer,
            StandardJsonPlugin()
                .beforeDeserialize(value, const FullType(MemberShape)),
          )!
          .rebuild(
            (b) => b
              ..shapeId = shapeId
              ..memberName = memberName,
          );
    }
    return membersMap;
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NamedMembersMap object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    for (final entry in object.entries) {
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
