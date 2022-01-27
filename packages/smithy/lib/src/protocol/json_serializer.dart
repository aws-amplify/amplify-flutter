import 'dart:convert';
import 'dart:typed_data';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' hide Serializer;

/// What to send when the payload is empty. Some protocols require an empty
/// JSON object, while others require an empty string.
enum EmptyPayloadType { empty, object }

class JsonSerializer implements FullSerializer<List<int>> {
  const JsonSerializer(this._serializers, this.emptyPayloadType);

  final Serializers _serializers;

  /// Payload type to send when the input is empty (Unit/void).
  final EmptyPayloadType emptyPayloadType;

  @override
  Object? deserialize(List<int> data, {FullType? specifiedType}) {
    Object? decoded;
    if (specifiedType?.root == Uint8List) {
      decoded = data;
    } else if (data.isEmpty) {
      decoded = const <Object?, Object?>{};
    } else {
      decoded = utf8.decode(data);
      try {
        decoded = jsonDecode(decoded as String);
      } on FormatException {
        // Decode failed. Use raw body.
      }
    }
    return _serializers.deserialize(
      decoded,
      specifiedType: specifiedType ?? FullType.unspecified,
    );
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
      switch (emptyPayloadType) {
        case EmptyPayloadType.empty:
          return const [];
        case EmptyPayloadType.object:
          serialized = const <Object, Object>{};
      }
    }
    if (serialized is List<int>) {
      return serialized;
    }
    if (serialized is String && specifiedType?.root != JsonObject) {
      return utf8.encode(serialized);
    }
    return utf8.encode(jsonEncode(serialized));
  }
}
