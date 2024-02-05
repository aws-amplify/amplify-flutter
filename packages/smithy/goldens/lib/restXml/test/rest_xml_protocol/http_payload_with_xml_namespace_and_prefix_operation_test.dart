// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.http_payload_with_xml_namespace_and_prefix_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_payload_with_xml_namespace_and_prefix_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/payload_with_xml_namespace_and_prefix.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/http_payload_with_xml_namespace_and_prefix_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'HttpPayloadWithXmlNamespaceAndPrefix (request)',
    () async {
      await _i2.httpRequestTest(
        operation: HttpPayloadWithXmlNamespaceAndPrefixOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'HttpPayloadWithXmlNamespaceAndPrefix',
          documentation:
              'Serializes a structure in the payload using a wrapper with an XML namespace',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
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
          requireQueryParams: [],
        ),
        inputSerializers: const [
          HttpPayloadWithXmlNamespaceAndPrefixInputOutputRestXmlSerializer(),
          PayloadWithXmlNamespaceAndPrefixRestXmlSerializer(),
        ],
      );
    },
  );
  _i1.test(
    'HttpPayloadWithXmlNamespaceAndPrefix (response)',
    () async {
      await _i2.httpResponseTest(
        operation: HttpPayloadWithXmlNamespaceAndPrefixOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'HttpPayloadWithXmlNamespaceAndPrefix',
          documentation:
              'Serializes a structure in the payload using a wrapper with an XML namespace',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
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
          code: 200,
        ),
        outputSerializers: const [
          HttpPayloadWithXmlNamespaceAndPrefixInputOutputRestXmlSerializer(),
          PayloadWithXmlNamespaceAndPrefixRestXmlSerializer(),
        ],
      );
    },
  );
}

class HttpPayloadWithXmlNamespaceAndPrefixInputOutputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<
        HttpPayloadWithXmlNamespaceAndPrefixInputOutput> {
  const HttpPayloadWithXmlNamespaceAndPrefixInputOutputRestXmlSerializer()
      : super('HttpPayloadWithXmlNamespaceAndPrefixInputOutput');

  @override
  Iterable<Type> get types =>
      const [HttpPayloadWithXmlNamespaceAndPrefixInputOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  HttpPayloadWithXmlNamespaceAndPrefixInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'nested':
          result.nested.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PayloadWithXmlNamespaceAndPrefix),
          ) as PayloadWithXmlNamespaceAndPrefix));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    HttpPayloadWithXmlNamespaceAndPrefixInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class PayloadWithXmlNamespaceAndPrefixRestXmlSerializer
    extends _i3.StructuredSmithySerializer<PayloadWithXmlNamespaceAndPrefix> {
  const PayloadWithXmlNamespaceAndPrefixRestXmlSerializer()
      : super('PayloadWithXmlNamespaceAndPrefix');

  @override
  Iterable<Type> get types => const [PayloadWithXmlNamespaceAndPrefix];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  PayloadWithXmlNamespaceAndPrefix deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayloadWithXmlNamespaceAndPrefixBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PayloadWithXmlNamespaceAndPrefix object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
