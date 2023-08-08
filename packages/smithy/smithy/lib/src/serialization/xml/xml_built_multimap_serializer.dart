// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart';

class XmlBuiltMultimapSerializer
    implements StructuredSerializer<BuiltListMultimap<Object?, Object?>> {
  const XmlBuiltMultimapSerializer({
    this.keyName = 'key',
    this.valueName = 'value',
    this.flattenedKey,
    XmlIndexer? indexer,
  }) : indexer = indexer ?? XmlIndexer.none;

  @override
  Iterable<Type> get types => [
        BuiltListMultimap,
        BuiltListMultimap<dynamic, dynamic>().runtimeType,
        BuiltListMultimap<Object?, Object?>().runtimeType,
      ];

  final String keyName;
  final String valueName;
  final String? flattenedKey;
  final XmlIndexer indexer;

  @override
  String get wireName => 'multimap';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BuiltListMultimap<Object?, Object?> builtMap, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);

    final keyType = specifiedType.parameters.isEmpty
        ? FullType.unspecified
        : specifiedType.parameters[0];
    final valueType = FullType(BuiltList, [
      if (specifiedType.parameters.isEmpty)
        FullType.unspecified
      else
        specifiedType.parameters[1],
    ]);

    var index = 0;
    final result = <Object?>[];
    builtMap.forEachKey((key, value) {
      final innerResult = <Object?>[];
      final elementKeyName = indexer.elementName(keyName, index);
      innerResult
        ..add(XmlElementName(elementKeyName))
        ..add(serializers.serialize(key, specifiedType: keyType));
      final elementValueName = indexer.elementName(valueName, index);
      innerResult.add(XmlElementName(elementValueName));
      final serializedValue = serializers.serialize(
        value,
        specifiedType: valueType,
      );
      innerResult.add(serializedValue);
      result.addAll([flattenedKey ?? 'entry', innerResult]);
      index++;
    });
    return result;
  }

  @override
  BuiltListMultimap<Object?, Object?> deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;

    final keyType = specifiedType.parameters.isEmpty
        ? FullType.unspecified
        : specifiedType.parameters[0];
    final valueType = FullType(BuiltList, [
      if (specifiedType.parameters.isEmpty)
        FullType.unspecified
      else
        specifiedType.parameters[1],
    ]);

    final result = isUnderspecified
        ? ListMultimapBuilder<Object, Object>()
        : serializers.newBuilder(specifiedType) as ListMultimapBuilder;

    for (var i = 0; i < serialized.length; i += 2) {
      final key = serializers.deserialize(
        serialized.elementAt(i),
        specifiedType: keyType,
      );
      final values = serializers.deserialize(
        serialized.elementAt(i + 1),
        specifiedType: valueType,
      ) as Iterable<dynamic>;
      result.addValues(key, values);
    }

    return result.build();
  }
}
