// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart';

enum _Int64Format { number, string }

enum Int64Serializer implements PrimitiveSerializer<Int64> {
  asNum._(_Int64Format.number),
  asString._(_Int64Format.string);

  const Int64Serializer._(this._format);

  final _Int64Format _format;

  @override
  Iterable<Type> get types => const [Int64];

  @override
  String get wireName => 'Long';

  @override
  Object serialize(
    Serializers serializers,
    Int64 int64, {
    FullType specifiedType = FullType.unspecified,
  }) {
    switch (_format) {
      case _Int64Format.number:
        return int64.toInt();
      case _Int64Format.string:
        return int64.toString();
    }
  }

  @override
  Int64 deserialize(
    Serializers serializers,
    Object? serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    switch (_format) {
      case _Int64Format.number:
        return Int64((serialized as num).toInt());
      case _Int64Format.string:
        return Int64.parseInt(serialized as String);
    }
  }
}
