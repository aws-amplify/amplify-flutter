// Copyright (c) 2017, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart';

enum _Int64Format { number, string }

class Int64Serializer implements PrimitiveSerializer<Int64> {
  const Int64Serializer._(this.format);

  final _Int64Format format;

  static const asNum = Int64Serializer._(_Int64Format.number);
  static const asString = Int64Serializer._(_Int64Format.string);

  @override
  final Iterable<Type> types = const [Int64];

  @override
  final String wireName = 'Long';

  @override
  Object serialize(Serializers serializers, Int64 int64,
      {FullType specifiedType = FullType.unspecified}) {
    return format == _Int64Format.number ? int64.toInt() : int64.toString();
  }

  @override
  Int64 deserialize(Serializers serializers, Object? serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return format == _Int64Format.number
        ? Int64((serialized as num).toInt())
        : Int64.parseInt(serialized as String);
  }
}
