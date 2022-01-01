import 'dart:convert';
import 'dart:typed_data';

import 'package:built_value/serializer.dart';
import 'package:collection/collection.dart';
import 'package:smithy/src/serialization/xml/xml_plugin.dart';
import 'package:test/test.dart';
import 'package:xml/xml.dart';

import 'xml_model.dart';

final xmlSerializers = (Serializers().toBuilder()
      ..addPlugin(const XmlPlugin())
      ..add(XmlModel.serializer))
    .build();

final listEquals = const ListEquality<XmlNode>().equals;

void main() {
  group('Serialization', () {
    group('XML', () {
      test('blob', () {
        final text = 'abcdefg'.codeUnits;
        final blob = base64Encode(text);
        final model = XmlModel((b) => b..blob = Uint8List.fromList(text));

        final serialized = xmlSerializers.serialize(model,
            specifiedType: const FullType(XmlModel));
        final xmlDoc = '''
<XmlModel>
  <blob>$blob</blob>
</XmlModel>''';
        expect(
          serialized,
          allOf([
            isA<XmlDocument>(),
            predicate<XmlDocument>(
                (doc) => doc.toXmlString(pretty: true) == xmlDoc),
          ]),
        );

        final deserialized = xmlSerializers.deserialize(serialized,
            specifiedType: const FullType(XmlModel));
        expect(deserialized, equals(model));
      });
    });
  });
}
