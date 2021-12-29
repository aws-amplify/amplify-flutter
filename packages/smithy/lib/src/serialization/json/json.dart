import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/smithy.dart';

/// A serializer for JSON protocols.
class JsonSerializer<T> implements Serializer<T, String> {
  const JsonSerializer();

  static const serializableRequest = JsonSerializable(
    createFactory: false,
    explicitToJson: true,
    checked: true,
  );
  static const serializableResponse = JsonSerializable(
    explicitToJson: true,
    checked: true,
  );
  static const serializable = JsonSerializable(
    explicitToJson: true,
    checked: true,
  );

  @override
  String serialize(T input) {
    return json.encode(input);
  }
}

/// A deserializer for JSON protocols.
class JsonDeserializer<T extends Object?> implements Deserializer<T, String> {
  const JsonDeserializer(this.responseConstructor);

  final JsonConstructor<T> responseConstructor;

  @override
  T deserialize(String data) {
    final json = (jsonDecode(data) as Map).cast<String, Object?>();
    return responseConstructor(json);
  }
}
