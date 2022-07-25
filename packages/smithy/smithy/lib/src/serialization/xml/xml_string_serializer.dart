// Copyright (c) 2015, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

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
