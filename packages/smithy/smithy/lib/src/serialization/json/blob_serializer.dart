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
import 'package:smithy/smithy.dart';

/// Serializer for the [Uint8List] (Blob) type.
class BlobSerializer extends PrimitiveSmithySerializer<Uint8List> {
  const BlobSerializer([this.mediaType = 'application/octet-stream'])
      : super('Blob');

  final String mediaType;

  @override
  Iterable<Type> get types => [
        Uint8List,
        Uint8List(0).runtimeType,
        List<int>,
      ];

  @override
  Uint8List deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    if (serialized is Uint8List) {
      return serialized;
    } else if (serialized is List) {
      return Uint8List.fromList(serialized.cast());
    }
    serialized as String;
    switch (mediaType) {
      case 'text/plain':
      case 'application/octet-stream':
        return Uint8List.fromList(utf8.encode(serialized));
      default:
        return base64Decode(serialized);
    }
  }

  @override
  Object serialize(Serializers serializers, Uint8List object,
      {FullType specifiedType = FullType.unspecified}) {
    switch (mediaType) {
      case 'text/plain':
        return utf8.decode(object);
      case 'application/octet-stream':
        return object;
      default:
        return base64Encode(object);
    }
  }
}
