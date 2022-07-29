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
import 'dart:typed_data';

import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' hide Serializer;
import 'package:xml/xml.dart';

class XmlSerializer implements FullSerializer<List<int>> {
  const XmlSerializer(this._serializers);

  final Serializers _serializers;

  @override
  Object? deserialize(List<int> data, {FullType? specifiedType}) {
    Object? decoded;
    if (specifiedType?.root == Uint8List) {
      decoded = data;
    } else if (data.isEmpty) {
      decoded = const <Object?>[];
    } else {
      decoded = utf8.decode(data);
    }
    final deserialized = _serializers.deserialize(
      decoded,
      specifiedType: specifiedType ?? FullType.unspecified,
    );
    return deserialized;
  }

  @override
  List<int> serialize(Object? input, {FullType? specifiedType}) {
    Object? serialized;
    if (input is HasPayload && input.getPayload() == null) {
      serialized = null;
    } else {
      serialized = _serializers.serialize(
        input,
        specifiedType: specifiedType ?? FullType.unspecified,
      );
    }
    if (serialized == null || input is EmptyPayload) {
      return const [];
    }
    if (serialized is List<int>) {
      return serialized;
    }
    return utf8.encode((serialized as XmlNode).toXmlString());
  }
}
