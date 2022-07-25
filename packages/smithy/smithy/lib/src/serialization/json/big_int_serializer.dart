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

import 'package:built_value/serializer.dart';

class BigIntSerializer implements PrimitiveSerializer<BigInt> {
  const BigIntSerializer._(this._asNum);

  /// Serializes [BigInt] types as a [num].
  static const asNum = BigIntSerializer._(true);

  /// Serializes [BigInt] types as a base-10 [String].
  static const asString = BigIntSerializer._(false);

  final bool _asNum;

  // [BigInt] has a private implementation type; register it via [BigInt.zero].
  @override
  Iterable<Type> get types => [BigInt, BigInt.zero.runtimeType];

  @override
  final String wireName = 'BigInt';

  @override
  Object serialize(Serializers serializers, BigInt bigInt,
      {FullType specifiedType = FullType.unspecified}) {
    if (_asNum) {
      return bigInt.toInt();
    }
    return bigInt.toString();
  }

  @override
  BigInt deserialize(Serializers serializers, Object? serialized,
      {FullType specifiedType = FullType.unspecified}) {
    if (_asNum) {
      return BigInt.from(serialized as num);
    }
    return BigInt.parse(serialized as String);
  }
}
