import 'dart:convert';
import 'dart:typed_data';

import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' hide Serializer;

enum EmptyPayloadType { empty, object }

class JsonSerializer implements FullSerializer<List<int>> {
  const JsonSerializer(this._serializers, this.emptyPayloadType);

  final Serializers _serializers;

  /// Payload type to send when the input is empty (Unit/void).
  final EmptyPayloadType emptyPayloadType;

  @override
  Object? deserialize(List<int> data, {FullType? specifiedType}) {
    Object? decoded;
    if (data.isEmpty) {
      decoded = const <Object?, Object?>{};
    } else if (specifiedType?.root == Uint8List) {
      decoded = data;
    } else {
      decoded = jsonDecode(utf8.decode(data));
    }
    return _serializers.deserialize(
      decoded,
      specifiedType: specifiedType ?? FullType.unspecified,
    );
  }

  @override
  List<int> serialize(Object? input, {FullType? specifiedType}) {
    final serialized = _serializers.serialize(
      input,
      specifiedType: specifiedType ?? FullType.unspecified,
    );
    if (emptyPayloadType == EmptyPayloadType.empty &&
        (serialized == null || input is EmptyPayload)) {
      return const [];
    }
    if (serialized is List<int>) {
      return serialized;
    }
    return utf8.encode(jsonEncode(serialized));
  }
}
