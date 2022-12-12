// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.xml_attributes_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_attributes_input_output.dart'
    as _i5;
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/xml_attributes_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'XmlAttributes (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.XmlAttributesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'XmlAttributes',
          documentation:
              'Serializes XML attributes on the synthesized document',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<XmlAttributesInputOutput test="test">\n    <foo>hi</foo>\n</XmlAttributesInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {
            'foo': 'hi',
            'attr': 'test',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/XmlAttributes',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [XmlAttributesInputOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'XmlAttributesWithEscaping (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.XmlAttributesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'XmlAttributesWithEscaping',
          documentation:
              'Serializes XML attributes with escaped characters on the synthesized document',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<XmlAttributesInputOutput test="&lt;test&amp;mock&gt;">\n    <foo>hi</foo>\n</XmlAttributesInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {
            'foo': 'hi',
            'attr': '<test&mock>',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/XmlAttributes',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [XmlAttributesInputOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'XmlAttributes (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.XmlAttributesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'XmlAttributes',
          documentation: 'Serializes simple scalar properties',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<XmlAttributesInputOutput test="test">\n    <foo>hi</foo>\n</XmlAttributesInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {
            'foo': 'hi',
            'attr': 'test',
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
        outputSerializers: const [XmlAttributesInputOutputRestXmlSerializer()],
      );
    },
  );
}

class XmlAttributesInputOutputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i5.XmlAttributesInputOutput> {
  const XmlAttributesInputOutputRestXmlSerializer()
      : super('XmlAttributesInputOutput');

  @override
  Iterable<Type> get types => const [_i5.XmlAttributesInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i5.XmlAttributesInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.XmlAttributesInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'attr':
          if (value != null) {
            result.attr = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'foo':
          if (value != null) {
            result.foo = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
