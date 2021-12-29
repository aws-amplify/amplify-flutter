import 'dart:convert';
import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/smithy.dart';

const blobSerializer = BlobSerializer();

class BlobSerializer extends JsonConverter<Uint8List?, String?>
    implements
        Serializer<Uint8List?, String?>,
        Deserializer<Uint8List?, String?> {
  const BlobSerializer();

  @override
  Uint8List? deserialize(String? data) {
    if (data == null) {
      return null;
    }
    final json = (jsonDecode(data) as List?)?.cast<int>();
    return json == null ? null : Uint8List.fromList(json);
  }

  @override
  Uint8List? fromJson(String? json) {
    return deserialize(json);
  }

  @override
  String? serialize(Uint8List? input) {
    if (input == null) {
      return null;
    }
    return jsonEncode(input);
  }

  @override
  String? toJson(Uint8List? object) {
    return serialize(object);
  }
}
