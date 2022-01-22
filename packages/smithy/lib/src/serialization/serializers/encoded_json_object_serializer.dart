// Copyright (c) 2017, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:convert';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';

class EncodedJsonObjectSerializer implements PrimitiveSerializer<JsonObject> {
  const EncodedJsonObjectSerializer();

  @override
  final Iterable<Type> types = const [
    JsonObject,
    BoolJsonObject,
    ListJsonObject,
    MapJsonObject,
    NumJsonObject,
    StringJsonObject,
  ];

  @override
  final String wireName = 'JsonObject';

  @override
  Object serialize(Serializers serializers, JsonObject jsonObject,
      {FullType specifiedType = FullType.unspecified}) {
    return jsonEncode(jsonObject.value);
  }

  @override
  JsonObject deserialize(Serializers serializers, Object? serialized,
      {FullType specifiedType = FullType.unspecified}) {
    serialized as String?;
    Object? decoded;
    if (serialized != null) {
      decoded = jsonDecode(serialized);
    }
    return JsonObject(decoded);
  }
}
