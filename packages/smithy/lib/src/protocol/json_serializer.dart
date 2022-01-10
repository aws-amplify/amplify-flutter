import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' hide Serializer;

class JsonSerializer implements FullSerializer<List<int>> {
  const JsonSerializer(this._serializers);

  final Serializers _serializers;

  @override
  Object? deserialize(List<int> data, {FullType? specifiedType}) {
    final decoded = jsonDecode(utf8.decode(data)) as Object?;
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
    return jsonEncode(serialized).codeUnits;
  }
}
