// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.body_with_xml_name_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/body_with_xml_name_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/payload_with_xml_name.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/body_with_xml_name_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'BodyWithXmlName (request)',
    () async {
      await _i2.httpRequestTest(
        operation: BodyWithXmlNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'BodyWithXmlName',
          documentation:
              'Serializes a payload using a wrapper name based on the xmlName',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '<Ahoy><nested><name>Phreddy</name></nested></Ahoy>',
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
          uri: '/BodyWithXmlName',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          BodyWithXmlNameInputOutputRestXmlSerializer(),
          PayloadWithXmlNameRestXmlSerializer(),
        ],
      );
    },
  );
  _i1.test(
    'BodyWithXmlName (response)',
    () async {
      await _i2.httpResponseTest(
        operation: BodyWithXmlNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'BodyWithXmlName',
          documentation:
              'Serializes a payload using a wrapper name based on the xmlName',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '<Ahoy><nested><name>Phreddy</name></nested></Ahoy>',
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
          BodyWithXmlNameInputOutputRestXmlSerializer(),
          PayloadWithXmlNameRestXmlSerializer(),
        ],
      );
    },
  );
}

class BodyWithXmlNameInputOutputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<BodyWithXmlNameInputOutput> {
  const BodyWithXmlNameInputOutputRestXmlSerializer()
      : super('BodyWithXmlNameInputOutput');

  @override
  Iterable<Type> get types => const [BodyWithXmlNameInputOutput];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  BodyWithXmlNameInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BodyWithXmlNameInputOutputBuilder();
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
            specifiedType: const FullType(PayloadWithXmlName),
          ) as PayloadWithXmlName));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BodyWithXmlNameInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class PayloadWithXmlNameRestXmlSerializer
    extends _i3.StructuredSmithySerializer<PayloadWithXmlName> {
  const PayloadWithXmlNameRestXmlSerializer() : super('PayloadWithXmlName');

  @override
  Iterable<Type> get types => const [PayloadWithXmlName];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  PayloadWithXmlName deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayloadWithXmlNameBuilder();
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
    PayloadWithXmlName object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
