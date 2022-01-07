import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' hide Serializer;

class JsonSerializer<RequestPayload, Response>
    implements FullSerializer<RequestPayload, Response, List<int>> {
  const JsonSerializer(this._serializers);

  final Serializers _serializers;

  @override
  Response deserialize(List<int> data) {
    final decoded = jsonDecode(utf8.decode(data)) as Object?;
    return _serializers.deserialize(decoded, specifiedType: FullType(Response))
        as Response;
  }

  @override
  List<int> serialize(RequestPayload input) {
    final serialized =
        _serializers.serialize(input, specifiedType: FullType(RequestPayload));
    return jsonEncode(serialized).codeUnits;
  }
}
