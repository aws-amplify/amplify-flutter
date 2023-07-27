// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.http_payload_with_member_xml_name_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_with_member_xml_name_input_output.dart'
    as _i5;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/payload_with_xml_name.dart'
    as _i6;
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/http_payload_with_member_xml_name_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'HttpPayloadWithMemberXmlName (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.HttpPayloadWithMemberXmlNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'HttpPayloadWithMemberXmlName',
          documentation:
              'Serializes a structure in the payload using a wrapper name based on member xmlName',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '<Hola><name>Phreddy</name></Hola>',
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
          uri: '/HttpPayloadWithMemberXmlName',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          HttpPayloadWithMemberXmlNameInputOutputRestXmlSerializer(),
          PayloadWithXmlNameRestXmlSerializer(),
        ],
      );
    },
  );
  _i1.test(
    'HttpPayloadWithMemberXmlName (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.HttpPayloadWithMemberXmlNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'HttpPayloadWithMemberXmlName',
          documentation:
              'Serializes a structure in the payload using a wrapper name based on member xmlName',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '<Hola><name>Phreddy</name></Hola>',
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
          HttpPayloadWithMemberXmlNameInputOutputRestXmlSerializer(),
          PayloadWithXmlNameRestXmlSerializer(),
        ],
      );
    },
  );
}

class HttpPayloadWithMemberXmlNameInputOutputRestXmlSerializer extends _i4
    .StructuredSmithySerializer<_i5.HttpPayloadWithMemberXmlNameInputOutput> {
  const HttpPayloadWithMemberXmlNameInputOutputRestXmlSerializer()
      : super('HttpPayloadWithMemberXmlNameInputOutput');

  @override
  Iterable<Type> get types =>
      const [_i5.HttpPayloadWithMemberXmlNameInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i5.HttpPayloadWithMemberXmlNameInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.HttpPayloadWithMemberXmlNameInputOutputBuilder();
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
            specifiedType: const FullType(_i6.PayloadWithXmlName),
          ) as _i6.PayloadWithXmlName));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i5.HttpPayloadWithMemberXmlNameInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class PayloadWithXmlNameRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i6.PayloadWithXmlName> {
  const PayloadWithXmlNameRestXmlSerializer() : super('PayloadWithXmlName');

  @override
  Iterable<Type> get types => const [_i6.PayloadWithXmlName];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i6.PayloadWithXmlName deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i6.PayloadWithXmlNameBuilder();
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
    _i6.PayloadWithXmlName object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
