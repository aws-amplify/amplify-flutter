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
import 'package:collection/collection.dart';
import 'package:smithy/smithy.dart';
import 'package:xml/xml.dart';

class XmlBuiltSetSerializer implements StructuredSerializer<BuiltSet> {
  const XmlBuiltSetSerializer({
    this.memberName = 'member',
    this.memberNamespace,
    this.flattened = false,
  });

  final String memberName;
  final XmlNamespace? memberNamespace;
  final bool flattened;

  @override
  Iterable<Type> get types => [BuiltSet, BuiltSet<Object>().runtimeType];

  @override
  final String wireName = 'set';

  @override
  Iterable<Object?> serialize(Serializers serializers, BuiltSet builtSet,
      {FullType specifiedType = FullType.unspecified}) {
    var isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);

    var elementType = specifiedType.parameters.isEmpty
        ? FullType.unspecified
        : specifiedType.parameters[0];

    return builtSet.expand((Object? item) {
      var value = serializers.serialize(item, specifiedType: elementType);
      // Nested structures are always unwrapped.
      if (value is XmlElement) {
        value = value.children;
      }
      return [XmlElementName(memberName, memberNamespace), value];
    });
  }

  @override
  BuiltSet deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    var isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;

    var elementType = specifiedType.parameters.isEmpty
        ? FullType.unspecified
        : specifiedType.parameters[0];
    var result = isUnderspecified
        ? SetBuilder<Object>()
        : serializers.newBuilder(specifiedType) as SetBuilder;

    result.replace(
      serialized.expandIndexed<Object?>((int index, Object? item) {
        if (index.isEven) return [];
        return [serializers.deserialize(item, specifiedType: elementType)];
      }),
    );
    return result.build();
  }
}
