// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/serializer.dart';

class DoubleSerializer implements PrimitiveSerializer<double> {
  const DoubleSerializer({
    this.nan = 'NaN',
    this.infinity = 'Infinity',
    this.negativeInfinity = '-Infinity',
  });

  final Object nan;
  final Object infinity;
  final Object negativeInfinity;

  @override
  Iterable<Type> get types => const [double];
  @override
  String get wireName => 'double';

  @override
  Object serialize(Serializers serializers, double aDouble,
      {FullType specifiedType = FullType.unspecified}) {
    if (aDouble.isNaN) {
      return nan;
    } else if (aDouble.isInfinite) {
      return aDouble.isNegative ? negativeInfinity : infinity;
    } else {
      return aDouble;
    }
  }

  @override
  double deserialize(Serializers serializers, Object? serialized,
      {FullType specifiedType = FullType.unspecified}) {
    if (serialized == nan) {
      return double.nan;
    } else if (serialized == negativeInfinity) {
      return double.negativeInfinity;
    } else if (serialized == infinity) {
      return double.infinity;
    } else {
      return (serialized as num).toDouble();
    }
  }
}
