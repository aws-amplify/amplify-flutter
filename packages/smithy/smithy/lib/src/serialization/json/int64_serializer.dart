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
import 'package:fixnum/fixnum.dart';

enum _Int64Format { number, string }

class Int64Serializer implements PrimitiveSerializer<Int64> {
  const Int64Serializer._(this._format);

  final _Int64Format _format;

  static const asNum = Int64Serializer._(_Int64Format.number);
  static const asString = Int64Serializer._(_Int64Format.string);

  @override
  final Iterable<Type> types = const [Int64];

  @override
  final String wireName = 'Long';

  @override
  Object serialize(Serializers serializers, Int64 int64,
      {FullType specifiedType = FullType.unspecified}) {
    switch (_format) {
      case _Int64Format.number:
        return int64.toInt();
      case _Int64Format.string:
        return int64.toString();
    }
  }

  @override
  Int64 deserialize(Serializers serializers, Object? serialized,
      {FullType specifiedType = FullType.unspecified}) {
    switch (_format) {
      case _Int64Format.number:
        return Int64((serialized as num).toInt());
      case _Int64Format.string:
        return Int64.parseInt(serialized as String);
    }
  }
}
