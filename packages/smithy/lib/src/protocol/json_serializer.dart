import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' hide Serializer;

class JsonSerializer<RequestPayload, Response>
    implements FullSerializer<RequestPayload, Response, List<int>> {
  JsonSerializer(this._serializers, [this.additionalSerializers = const []]);

  final Serializers _serializers;
  final List<Object> additionalSerializers;

  late final serializers = (_serializers.toBuilder()
        ..addAll(additionalSerializers.expand((el) {
          if (el is List) {
            return el.cast();
          } else if (el is Iterable) {
            return el.cast();
          }
          return [el as Serializer];
        })))
      .build();

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
