// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.empty_input_and_empty_output_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/empty_input_and_empty_output_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/empty_input_and_empty_output_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/empty_input_and_empty_output_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('EmptyInputAndEmptyOutput (request)', () async {
    await _i2.httpRequestTest(
      operation: EmptyInputAndEmptyOutputOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'EmptyInputAndEmptyOutput',
        documentation: 'Empty input serializes no payload',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/EmptyInputAndEmptyOutput',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        EmptyInputAndEmptyOutputInputRestXmlSerializer(),
      ],
    );
  });
  _i1.test('EmptyInputAndEmptyOutput (response)', () async {
    await _i2.httpResponseTest(
      operation: EmptyInputAndEmptyOutputOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'EmptyInputAndEmptyOutput',
        documentation: 'Empty output serializes no payload',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        EmptyInputAndEmptyOutputOutputRestXmlSerializer(),
      ],
    );
  });
}

class EmptyInputAndEmptyOutputInputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<EmptyInputAndEmptyOutputInput> {
  const EmptyInputAndEmptyOutputInputRestXmlSerializer()
    : super('EmptyInputAndEmptyOutputInput');

  @override
  Iterable<Type> get types => const [EmptyInputAndEmptyOutputInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  EmptyInputAndEmptyOutputInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return EmptyInputAndEmptyOutputInputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EmptyInputAndEmptyOutputInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class EmptyInputAndEmptyOutputOutputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<EmptyInputAndEmptyOutputOutput> {
  const EmptyInputAndEmptyOutputOutputRestXmlSerializer()
    : super('EmptyInputAndEmptyOutputOutput');

  @override
  Iterable<Type> get types => const [EmptyInputAndEmptyOutputOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  EmptyInputAndEmptyOutputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return EmptyInputAndEmptyOutputOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EmptyInputAndEmptyOutputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
