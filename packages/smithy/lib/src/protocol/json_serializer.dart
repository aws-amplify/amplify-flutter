import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' hide Serializer;

enum EmptyPayloadType { empty, object }

final _jsonStart = '{'.codeUnitAt(0);

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
    } else if (data.first != _jsonStart) {
      decoded = utf8.decode(data);
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
        (serialized == null || (serialized is Map && serialized.isEmpty))) {
      return const [];
    }
    if (serialized is String) {
      return utf8.encode(serialized);
    }
    return utf8.encode(jsonEncode(serialized));
  }
}
