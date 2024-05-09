// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.xml_attributes_on_payload_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_attributes_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_attributes_on_payload_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/xml_attributes_on_payload_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'XmlAttributesOnPayload (request)',
    () async {
      await _i2.httpRequestTest(
        operation: XmlAttributesOnPayloadOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'XmlAttributesOnPayload',
          documentation:
              'Serializes XML attributes on the synthesized document',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<XmlAttributesInputOutput test="test">\n    <foo>hi</foo>\n</XmlAttributesInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {
            'payload': {
              'foo': 'hi',
              'attr': 'test',
            }
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
          requireQueryParams: [],
        ),
        inputSerializers: const [
          XmlAttributesOnPayloadInputOutputRestXmlSerializer(),
          XmlAttributesInputOutputRestXmlSerializer(),
        ],
      );
    },
  );
  _i1.test(
    'XmlAttributesOnPayload (response)',
    () async {
      await _i2.httpResponseTest(
        operation: XmlAttributesOnPayloadOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'XmlAttributesOnPayload',
          documentation: 'Serializes simple scalar properties',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<XmlAttributesInputOutput test="test">\n    <foo>hi</foo>\n</XmlAttributesInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {
            'payload': {
              'foo': 'hi',
              'attr': 'test',
            }
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
          XmlAttributesOnPayloadInputOutputRestXmlSerializer(),
          XmlAttributesInputOutputRestXmlSerializer(),
        ],
      );
    },
  );
}

class XmlAttributesOnPayloadInputOutputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<XmlAttributesOnPayloadInputOutput> {
  const XmlAttributesOnPayloadInputOutputRestXmlSerializer()
      : super('XmlAttributesOnPayloadInputOutput');

  @override
  Iterable<Type> get types => const [XmlAttributesOnPayloadInputOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  XmlAttributesOnPayloadInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlAttributesOnPayloadInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'payload':
          result.payload.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(XmlAttributesInputOutput),
          ) as XmlAttributesInputOutput));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlAttributesOnPayloadInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class XmlAttributesInputOutputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<XmlAttributesInputOutput> {
  const XmlAttributesInputOutputRestXmlSerializer()
      : super('XmlAttributesInputOutput');

  @override
  Iterable<Type> get types => const [XmlAttributesInputOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  XmlAttributesInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlAttributesInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'foo':
          result.foo = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'attr':
          result.attr = (serializers.deserialize(
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
    XmlAttributesInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
