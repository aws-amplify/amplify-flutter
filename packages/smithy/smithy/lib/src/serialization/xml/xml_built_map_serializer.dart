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

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart';

class XmlBuiltMapSerializer implements StructuredSerializer<BuiltMap> {
  const XmlBuiltMapSerializer({
    this.keyName = 'key',
    this.valueName = 'value',
    this.flattenedKey,
  });

  @override
  Iterable<Type> get types =>
      [BuiltMap, BuiltMap<Object, Object>().runtimeType];

  final String keyName;
  final String valueName;
  final String? flattenedKey;

  @override
  final String wireName = 'map';

  @override
  Iterable<Object?> serialize(Serializers serializers, BuiltMap builtMap,
      {FullType specifiedType = FullType.unspecified}) {
    var isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);

    var keyType = specifiedType.parameters.isEmpty
        ? FullType.unspecified
        : specifiedType.parameters[0];
    var valueType = specifiedType.parameters.isEmpty
        ? FullType.unspecified
        : specifiedType.parameters[1];

    final result = <Object?>[];
    for (final key in builtMap.keys) {
      final innerResult = <Object?>[];
      innerResult.add(XmlElementName(keyName));
      innerResult.add(serializers.serialize(key, specifiedType: keyType));
      final value = builtMap[key] as Object?;
      innerResult.add(XmlElementName(valueName));
      final Object? serializedValue =
          serializers.serialize(value, specifiedType: valueType);
      innerResult.add(serializedValue);
      result.addAll([flattenedKey ?? 'entry', innerResult]);
    }
    return result;
  }

  @override
  BuiltMap deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    var isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;

    var keyType = specifiedType.parameters.isEmpty
        ? FullType.unspecified
        : specifiedType.parameters[0];
    var valueType = specifiedType.parameters.isEmpty
        ? FullType.unspecified
        : specifiedType.parameters[1];

    var result = isUnderspecified
        ? MapBuilder<Object, Object>()
        : serializers.newBuilder(specifiedType) as MapBuilder;

    void innerDeserialize(Iterable<Object?> serialized) {
      for (var i = 0; i < serialized.length; i += 4) {
        final key = serializers.deserialize(serialized.elementAt(i + 1),
            specifiedType: keyType);
        final value = serializers.deserialize(serialized.elementAt(i + 3),
            specifiedType: valueType);
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
