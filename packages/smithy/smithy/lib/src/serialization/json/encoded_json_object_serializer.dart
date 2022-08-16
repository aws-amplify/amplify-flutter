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
