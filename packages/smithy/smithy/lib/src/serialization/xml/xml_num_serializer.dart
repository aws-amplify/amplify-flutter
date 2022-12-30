// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart';

/// XML Serializer for number values.
class XmlNumSerializer extends PrimitiveSmithySerializer<num> {
  const XmlNumSerializer({
    this.nan = 'NaN',
    this.infinity = 'Infinity',
    this.negativeInfinity = '-Infinity',
  }) : super('num');

  final Object nan;
  final Object infinity;
  final Object negativeInfinity;

  @override
  Iterable<Type> get types => [int, double];

  @override
  num deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    if (serialized is num) {
      return serialized;
    }
    serialized as String;
    switch (specifiedType.root) {
      case int:
        return int.parse(serialized);
      case double:
        if (serialized == nan) {
          return double.nan;
        } else if (serialized == negativeInfinity) {
          return double.negativeInfinity;
        } else if (serialized == infinity) {
          return double.infinity;
        }
        return double.parse(serialized);
    }
    throw ArgumentError('Cannot deserialize: $specifiedType');
  }

  @override
  Object serialize(Serializers serializers, num object,
      {FullType specifiedType = FullType.unspecified}) {
    if (object.isNaN) {
      return nan;
    } else if (object.isInfinite) {
      return object.isNegative ? negativeInfinity : infinity;
    } else {
      return object.toString();
    }
  }
}
