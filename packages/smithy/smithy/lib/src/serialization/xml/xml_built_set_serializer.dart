// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:collection/collection.dart';
import 'package:smithy/smithy.dart';
import 'package:xml/xml.dart';

class XmlBuiltSetSerializer implements StructuredSerializer<BuiltSet<Object?>> {
  const XmlBuiltSetSerializer({
    this.memberName = 'member',
    this.memberNamespace,
    this.flattened = false,
    XmlIndexer? indexer,
  }) : indexer = indexer ?? XmlIndexer.none;

  final String memberName;
  final XmlNamespace? memberNamespace;
  final bool flattened;
  final XmlIndexer indexer;

  @override
  Iterable<Type> get types => [
        BuiltSet,
        BuiltSet<dynamic>().runtimeType,
        BuiltSet<Object?>().runtimeType,
      ];

  @override
  String get wireName => 'set';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BuiltSet<Object?> builtSet, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);

    final elementType = specifiedType.parameters.isEmpty
        ? FullType.unspecified
        : specifiedType.parameters[0];

    return builtSet.expandIndexed((index, Object? item) {
      var value = serializers.serialize(item, specifiedType: elementType);
      // Nested structures are always unwrapped.
      if (value is XmlElement) {
        value = value.children;
      }
      final elementName = indexer.elementName(memberName, index);
      return [
        XmlElementName(elementName, memberNamespace),
        value,
      ];
    });
  }

  @override
  BuiltSet<Object?> deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;

    final elementType = specifiedType.parameters.isEmpty
        ? FullType.unspecified
        : specifiedType.parameters[0];
    final result = isUnderspecified
        ? SetBuilder<Object>()
        : serializers.newBuilder(specifiedType) as SetBuilder;

    // ignore: cascade_invocations
    result.replace(
      serialized.expandIndexed<Object?>((int index, Object? item) {
        if (index.isEven) return [];
        return [serializers.deserialize(item, specifiedType: elementType)];
      }),
    );
    return result.build();
  }
}
