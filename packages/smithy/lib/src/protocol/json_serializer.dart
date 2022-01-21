import 'dart:convert';

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
    final decoded = data.isEmpty
        ? const <Object?, Object?>{}
        : jsonDecode(utf8.decode(data)) as Object?;
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
        (serialized == null || (serialized is Map && serialized.isEmpty))) {
      return const [];
    }
    return jsonEncode(serialized).codeUnits;
  }
}
