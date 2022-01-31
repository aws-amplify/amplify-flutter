import 'dart:convert';
import 'dart:typed_data';

import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' hide Serializer;
import 'package:xml/xml.dart';

class XmlSerializer implements FullSerializer<List<int>> {
  const XmlSerializer(this._serializers);

  final Serializers _serializers;

  @override
  Object? deserialize(List<int> data, {FullType? specifiedType}) {
    Object? decoded;
    if (specifiedType?.root == Uint8List) {
      decoded = data;
    } else if (data.isEmpty) {
      decoded = const <Object?>[];
    } else {
      decoded = utf8.decode(data);
    }
    final deserialized = _serializers.deserialize(
      decoded,
      specifiedType: specifiedType ?? FullType.unspecified,
    );
    return deserialized;
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
      return const [];
    }
    if (serialized is List<int>) {
      return serialized;
    }
    return utf8.encode((serialized as XmlNode).toXmlString());
  }
}
