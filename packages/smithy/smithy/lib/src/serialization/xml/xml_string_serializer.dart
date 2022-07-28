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

class XmlStringSerializer implements PrimitiveSerializer<String> {
  const XmlStringSerializer();

  @override
  final Iterable<Type> types = const [String];
  @override
  final String wireName = 'String';

  @override
  Object serialize(Serializers serializers, String string,
      {FullType specifiedType = FullType.unspecified}) {
    return string;
  }

  @override
  String deserialize(Serializers serializers, Object? serialized,
      {FullType specifiedType = FullType.unspecified}) {
    // An element with no children (no text, empty string) will get serialized
    // as an empty array since there is no way to tell the difference at the
    // plugin layer between a missing text node and a missing aggregate type.
    if (serialized is List && serialized.isEmpty) {
      return '';
    }
    return serialized as String;
  }
}
