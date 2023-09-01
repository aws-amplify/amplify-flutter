// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/serializer.dart';

enum BigIntSerializer implements PrimitiveSerializer<BigInt> {
  asNum._(true),
  asString._(false);

  const BigIntSerializer._(this._asNum);

  final bool _asNum;

  // [BigInt] has a private implementation type; register it via [BigInt.zero].
  @override
  Iterable<Type> get types => [BigInt, BigInt.zero.runtimeType];

  @override
  String get wireName => 'BigInt';

  @override
  Object serialize(
    Serializers serializers,
    BigInt bigInt, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (_asNum) {
      return bigInt.toInt();
    }
    return bigInt.toString();
  }

  @override
  BigInt deserialize(
    Serializers serializers,
    Object? serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (_asNum) {
      return BigInt.from(serialized as num);
    }
    return BigInt.parse(serialized as String);
  }
}
