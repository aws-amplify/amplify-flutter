// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.xml_attributes_on_payload_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_attributes_input_output.dart'
    as _i6;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_attributes_on_payload_input_output.dart'
    as _i5;
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/xml_attributes_on_payload_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'XmlAttributesOnPayload (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.XmlAttributesOnPayloadOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'XmlAttributesOnPayload',
              documentation:
                  'Serializes XML attributes on the synthesized document',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<XmlAttributesInputOutput test="test">\n    <foo>hi</foo>\n</XmlAttributesInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {
                'payload': {'foo': 'hi', 'attr': 'test'}
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/xml'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'PUT',
              uri: '/XmlAttributesOnPayload',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            XmlAttributesOnPayloadInputOutputRestXmlSerializer(),
            XmlAttributesInputOutputRestXmlSerializer()
          ]);
    },
  );
  _i1.test(
    'XmlAttributesOnPayload (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.XmlAttributesOnPayloadOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'XmlAttributesOnPayload',
              documentation: 'Serializes simple scalar properties',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<XmlAttributesInputOutput test="test">\n    <foo>hi</foo>\n</XmlAttributesInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {
                'payload': {'foo': 'hi', 'attr': 'test'}
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/xml'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [
            XmlAttributesOnPayloadInputOutputRestXmlSerializer(),
            XmlAttributesInputOutputRestXmlSerializer()
          ]);
    },
  );
}

class XmlAttributesOnPayloadInputOutputRestXmlSerializer extends _i4
    .StructuredSmithySerializer<_i5.XmlAttributesOnPayloadInputOutput> {
  const XmlAttributesOnPayloadInputOutputRestXmlSerializer()
      : super('XmlAttributesOnPayloadInputOutput');

  @override
  Iterable<Type> get types => const [_i5.XmlAttributesOnPayloadInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  _i5.XmlAttributesOnPayloadInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.XmlAttributesOnPayloadInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'payload':
          if (value != null) {
            result.payload.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i6.XmlAttributesInputOutput))
                as _i6.XmlAttributesInputOutput));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}

class XmlAttributesInputOutputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i6.XmlAttributesInputOutput> {
  const XmlAttributesInputOutputRestXmlSerializer()
      : super('XmlAttributesInputOutput');

  @override
  Iterable<Type> get types => const [_i6.XmlAttributesInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  _i6.XmlAttributesInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i6.XmlAttributesInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'attr':
          if (value != null) {
            result.attr = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'foo':
          if (value != null) {
            result.foo = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}
