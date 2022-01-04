import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart';

class JsonSerializer<RequestPayload, Response>
    implements FullSerializer<RequestPayload, Response, List<int>> {
  const JsonSerializer(this.serializers);

  final Serializers serializers;

  @override
  Response deserialize(List<int> data) {
    final decoded = jsonDecode(utf8.decode(data)) as Object?;
    return serializers.deserialize(decoded, specifiedType: FullType(Response))
        as Response;
  }

  @override
  List<int> serialize(RequestPayload input) {
    final serialized =
        serializers.serialize(input, specifiedType: FullType(RequestPayload));
    return jsonEncode(serialized).codeUnits;
  }
}
