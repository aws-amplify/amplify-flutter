import 'dart:convert';
import 'dart:typed_data';

import 'package:built_value/serializer.dart';

/// Serializer for the [Uint8List] (Blob) type.
class BlobSerializer implements PrimitiveSerializer<Uint8List> {
  const BlobSerializer();

  @override
  Iterable<Type> get types => [Uint8List, Uint8List(0).runtimeType];

  @override
  String get wireName => 'Blob';

  @override
  Uint8List deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return base64Decode(serialized as String);
  }

  @override
  Object serialize(Serializers serializers, Uint8List object,
      {FullType specifiedType = FullType.unspecified}) {
    return base64Encode(object);
  }
}
