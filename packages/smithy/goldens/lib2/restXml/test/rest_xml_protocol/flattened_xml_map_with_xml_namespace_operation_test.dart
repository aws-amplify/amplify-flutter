// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.flattened_xml_map_with_xml_namespace_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/flattened_xml_map_with_xml_namespace_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/flattened_xml_map_with_xml_namespace_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('RestXmlFlattenedXmlMapWithXmlNamespace (response)', () async {
    await _i2.httpResponseTest(
      operation: FlattenedXmlMapWithXmlNamespaceOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'RestXmlFlattenedXmlMapWithXmlNamespace',
        documentation:
            'Serializes flattened XML maps in responses that have xmlNamespace and xmlName on members',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<FlattenedXmlMapWithXmlNamespaceOutput>\n    <KVP xmlns="https://the-member.example.com">\n        <K xmlns="https://the-key.example.com">a</K>\n        <V xmlns="https://the-value.example.com">A</V>\n    </KVP>\n    <KVP xmlns="https://the-member.example.com">\n        <K xmlns="https://the-key.example.com">b</K>\n        <V xmlns="https://the-value.example.com">B</V>\n    </KVP>\n</FlattenedXmlMapWithXmlNamespaceOutput>',
        bodyMediaType: 'application/xml',
        params: {
          'myMap': {'a': 'A', 'b': 'B'},
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        FlattenedXmlMapWithXmlNamespaceOutputRestXmlSerializer(),
      ],
    );
  });
}

class FlattenedXmlMapWithXmlNamespaceOutputRestXmlSerializer
    extends
        _i3.StructuredSmithySerializer<FlattenedXmlMapWithXmlNamespaceOutput> {
  const FlattenedXmlMapWithXmlNamespaceOutputRestXmlSerializer()
    : super('FlattenedXmlMapWithXmlNamespaceOutput');

  @override
  Iterable<Type> get types => const [FlattenedXmlMapWithXmlNamespaceOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  FlattenedXmlMapWithXmlNamespaceOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FlattenedXmlMapWithXmlNamespaceOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'myMap':
          result.myMap.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i4.BuiltMap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i4.BuiltMap<String, String>),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FlattenedXmlMapWithXmlNamespaceOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
