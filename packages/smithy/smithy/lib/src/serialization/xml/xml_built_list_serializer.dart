// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:collection/collection.dart';
import 'package:smithy/smithy.dart';
import 'package:xml/xml.dart';

class XmlBuiltListSerializer implements StructuredSerializer<BuiltList> {
  const XmlBuiltListSerializer({
    this.memberName = 'member',
    this.memberNamespace,
    this.flattened = false,
  });

  final String memberName;
  final XmlNamespace? memberNamespace;
  final bool flattened;

  @override
  Iterable<Type> get types => [BuiltList, BuiltList<Object>().runtimeType];
  @override
  final String wireName = 'list';

  @override
  Iterable<Object?> serialize(Serializers serializers, BuiltList builtList,
      {FullType specifiedType = FullType.unspecified}) {
    var isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);

    var elementType = specifiedType.parameters.isEmpty
        ? FullType.unspecified
        : specifiedType.parameters[0];

    return builtList.expand((Object? item) {
      Object? value = serializers.serialize(item, specifiedType: elementType);
      // Nested structures are always unwrapped.
      if (value is XmlElement) {
        value = value.children;
      }
      return [XmlElementName(memberName, memberNamespace), value];
    });
  }

  @override
  BuiltList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    var isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;

    var elementType = specifiedType.parameters.isEmpty
        ? FullType.unspecified
        : specifiedType.parameters[0];

    var result = isUnderspecified
        ? ListBuilder<Object>()
        : serializers.newBuilder(specifiedType) as ListBuilder;

    result.replace(serialized.expandIndexed<Object?>((int index, Object? item) {
      if (index.isEven) return [];
      return [serializers.deserialize(item, specifiedType: elementType)];
    }));
    return result.build();
  }
}
