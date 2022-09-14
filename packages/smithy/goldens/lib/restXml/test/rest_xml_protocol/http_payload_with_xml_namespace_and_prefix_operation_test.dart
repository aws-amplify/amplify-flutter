// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml.rest_xml_protocol.test.http_payload_with_xml_namespace_and_prefix_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml/src/rest_xml_protocol/model/http_payload_with_xml_namespace_and_prefix_input_output.dart'
    as _i5;
import 'package:rest_xml/src/rest_xml_protocol/model/payload_with_xml_namespace_and_prefix.dart'
    as _i6;
import 'package:rest_xml/src/rest_xml_protocol/operation/http_payload_with_xml_namespace_and_prefix_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'HttpPayloadWithXmlNamespaceAndPrefix (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.HttpPayloadWithXmlNamespaceAndPrefixOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'HttpPayloadWithXmlNamespaceAndPrefix',
              documentation:
                  'Serializes a structure in the payload using a wrapper with an XML namespace',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<PayloadWithXmlNamespaceAndPrefix xmlns:baz="http://foo.com">\n    <name>Phreddy</name>\n</PayloadWithXmlNamespaceAndPrefix>',
              bodyMediaType: 'application/xml',
              params: {
                'nested': {'name': 'Phreddy'}
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/xml'},
              forbidHeaders: [],
              requireHeaders: ['Content-Length'],
              tags: [],
              appliesTo: null,
              method: 'PUT',
              uri: '/HttpPayloadWithXmlNamespaceAndPrefix',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            HttpPayloadWithXmlNamespaceAndPrefixInputOutputRestXmlSerializer(),
            PayloadWithXmlNamespaceAndPrefixRestXmlSerializer()
          ]);
    },
  );
  _i1.test(
    'HttpPayloadWithXmlNamespaceAndPrefix (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.HttpPayloadWithXmlNamespaceAndPrefixOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'HttpPayloadWithXmlNamespaceAndPrefix',
              documentation:
                  'Serializes a structure in the payload using a wrapper with an XML namespace',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<PayloadWithXmlNamespaceAndPrefix xmlns:baz="http://foo.com">\n    <name>Phreddy</name>\n</PayloadWithXmlNamespaceAndPrefix>',
              bodyMediaType: 'application/xml',
              params: {
                'nested': {'name': 'Phreddy'}
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
            HttpPayloadWithXmlNamespaceAndPrefixInputOutputRestXmlSerializer(),
            PayloadWithXmlNamespaceAndPrefixRestXmlSerializer()
          ]);
    },
  );
}

class HttpPayloadWithXmlNamespaceAndPrefixInputOutputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<
        _i5.HttpPayloadWithXmlNamespaceAndPrefixInputOutput> {
  const HttpPayloadWithXmlNamespaceAndPrefixInputOutputRestXmlSerializer()
      : super('HttpPayloadWithXmlNamespaceAndPrefixInputOutput');

  @override
  Iterable<Type> get types =>
      const [_i5.HttpPayloadWithXmlNamespaceAndPrefixInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  _i5.HttpPayloadWithXmlNamespaceAndPrefixInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'nested':
          if (value != null) {
            result.nested.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i6.PayloadWithXmlNamespaceAndPrefix))
                as _i6.PayloadWithXmlNamespaceAndPrefix));
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

class PayloadWithXmlNamespaceAndPrefixRestXmlSerializer extends _i4
    .StructuredSmithySerializer<_i6.PayloadWithXmlNamespaceAndPrefix> {
  const PayloadWithXmlNamespaceAndPrefixRestXmlSerializer()
      : super('PayloadWithXmlNamespaceAndPrefix');

  @override
  Iterable<Type> get types => const [_i6.PayloadWithXmlNamespaceAndPrefix];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  _i6.PayloadWithXmlNamespaceAndPrefix deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i6.PayloadWithXmlNamespaceAndPrefixBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(value,
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
