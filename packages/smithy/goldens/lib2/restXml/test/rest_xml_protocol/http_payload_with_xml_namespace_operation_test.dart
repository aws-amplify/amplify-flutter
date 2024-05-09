// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.http_payload_with_xml_namespace_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_with_xml_namespace_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/payload_with_xml_namespace.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/http_payload_with_xml_namespace_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'HttpPayloadWithXmlNamespace (request)',
    () async {
      await _i2.httpRequestTest(
        operation: HttpPayloadWithXmlNamespaceOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'HttpPayloadWithXmlNamespace',
          documentation:
              'Serializes a structure in the payload using a wrapper with an XML namespace',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<PayloadWithXmlNamespace xmlns="http://foo.com">\n    <name>Phreddy</name>\n</PayloadWithXmlNamespace>',
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
          uri: '/HttpPayloadWithXmlNamespace',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          HttpPayloadWithXmlNamespaceInputOutputRestXmlSerializer(),
          PayloadWithXmlNamespaceRestXmlSerializer(),
        ],
      );
    },
  );
  _i1.test(
    'HttpPayloadWithXmlNamespace (response)',
    () async {
      await _i2.httpResponseTest(
        operation: HttpPayloadWithXmlNamespaceOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'HttpPayloadWithXmlNamespace',
          documentation:
              'Serializes a structure in the payload using a wrapper with an XML namespace',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<PayloadWithXmlNamespace xmlns="http://foo.com">\n    <name>Phreddy</name>\n</PayloadWithXmlNamespace>',
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
          HttpPayloadWithXmlNamespaceInputOutputRestXmlSerializer(),
          PayloadWithXmlNamespaceRestXmlSerializer(),
        ],
      );
    },
  );
}

class HttpPayloadWithXmlNamespaceInputOutputRestXmlSerializer extends _i3
    .StructuredSmithySerializer<HttpPayloadWithXmlNamespaceInputOutput> {
  const HttpPayloadWithXmlNamespaceInputOutputRestXmlSerializer()
      : super('HttpPayloadWithXmlNamespaceInputOutput');

  @override
  Iterable<Type> get types => const [HttpPayloadWithXmlNamespaceInputOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  HttpPayloadWithXmlNamespaceInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HttpPayloadWithXmlNamespaceInputOutputBuilder();
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
            specifiedType: const FullType(PayloadWithXmlNamespace),
          ) as PayloadWithXmlNamespace));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    HttpPayloadWithXmlNamespaceInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class PayloadWithXmlNamespaceRestXmlSerializer
    extends _i3.StructuredSmithySerializer<PayloadWithXmlNamespace> {
  const PayloadWithXmlNamespaceRestXmlSerializer()
      : super('PayloadWithXmlNamespace');

  @override
  Iterable<Type> get types => const [PayloadWithXmlNamespace];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  PayloadWithXmlNamespace deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayloadWithXmlNamespaceBuilder();
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
    PayloadWithXmlNamespace object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
