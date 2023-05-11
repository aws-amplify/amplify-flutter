// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart';

class XmlBuiltMapSerializer
    implements StructuredSerializer<BuiltMap<Object?, Object?>> {
  const XmlBuiltMapSerializer({
    this.keyName = 'key',
    this.valueName = 'value',
    this.flattenedKey,
    XmlIndexer? indexer,
  }) : indexer = indexer ?? XmlIndexer.none;

  @override
  Iterable<Type> get types => [
        BuiltMap,
        BuiltMap<dynamic, dynamic>().runtimeType,
        BuiltMap<Object?, Object?>().runtimeType,
      ];

  final String keyName;
  final String valueName;
  final String? flattenedKey;
  final XmlIndexer indexer;

  @override
  String get wireName => 'map';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BuiltMap<Object?, Object?> builtMap, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);

    final keyType = specifiedType.parameters.isEmpty
        ? FullType.unspecified
        : specifiedType.parameters[0];
    final valueType = specifiedType.parameters.isEmpty
        ? FullType.unspecified
        : specifiedType.parameters[1];

    var index = 0;
    final result = <Object?>[];
    builtMap.forEach((key, Object? value) {
      final innerResult = <Object?>[];
      final elementKeyName = indexer.elementName(keyName, index);
      innerResult
        ..add(XmlElementName(elementKeyName))
        ..add(serializers.serialize(key, specifiedType: keyType));
      final elementValueName = indexer.elementName(valueName, index);
      final serializedValue =
          serializers.serialize(value, specifiedType: valueType);
      innerResult
        ..add(XmlElementName(elementValueName))
        ..add(serializedValue);
      result.addAll([flattenedKey ?? 'entry', innerResult]);
      index++;
    });
    return result;
  }

  @override
  BuiltMap<Object?, Object?> deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;

    final keyType = specifiedType.parameters.isEmpty
        ? FullType.unspecified
        : specifiedType.parameters[0];
    final valueType = specifiedType.parameters.isEmpty
        ? FullType.unspecified
        : specifiedType.parameters[1];

    final result = isUnderspecified
        ? MapBuilder<Object, Object>()
        : serializers.newBuilder(specifiedType) as MapBuilder;

    void innerDeserialize(Iterable<Object?> serialized) {
      for (var i = 0; i < serialized.length; i += 4) {
        final key = serializers.deserialize(
          serialized.elementAt(i + 1),
          specifiedType: keyType,
        );
        final value = serializers.deserialize(
          serialized.elementAt(i + 3),
          specifiedType: valueType,
        );
        result[key] = value;
      }
    }

    final flattened = flattenedKey != null;
    if (flattened) {
      if (serialized.length % 4 != 0) {
        throw ArgumentError('odd length');
      }
      innerDeserialize(serialized);
    } else {
      if (serialized.length % 2 != 0) {
        throw ArgumentError('odd length');
      }
      final iterator = serialized.iterator;
      while (iterator.moveNext()) {
        iterator.moveNext();
        final obj = iterator.current as Iterable<Object?>;
        innerDeserialize(obj);
      }
    }

    return result.build();
  }
}
