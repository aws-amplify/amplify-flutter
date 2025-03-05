// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.test_no_payload_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/test_no_payload_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/operation/test_no_payload_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonHttpWithNoModeledBody (request)',
    () async {
      await _i2.httpRequestTest(
        operation: TestNoPayloadOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonHttpWithNoModeledBody',
          documentation: 'Serializes a GET request with no modeled body',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [
            'Content-Length',
            'Content-Type',
          ],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/no_payload',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [TestNoPayloadInputOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonHttpWithHeaderMemberNoModeledBody (request)',
    () async {
      await _i2.httpRequestTest(
        operation: TestNoPayloadOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonHttpWithHeaderMemberNoModeledBody',
          documentation:
              'Serializes a GET request with header member but no modeled body',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'testId': 't-12345'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'X-Amz-Test-Id': 't-12345'},
          forbidHeaders: [
            'Content-Length',
            'Content-Type',
          ],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/no_payload',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [TestNoPayloadInputOutputRestJson1Serializer()],
      );
    },
  );
}

class TestNoPayloadInputOutputRestJson1Serializer
    extends _i3.StructuredSmithySerializer<TestNoPayloadInputOutput> {
  const TestNoPayloadInputOutputRestJson1Serializer()
      : super('TestNoPayloadInputOutput');

  @override
  Iterable<Type> get types => const [TestNoPayloadInputOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  TestNoPayloadInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestNoPayloadInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'testId':
          result.testId = (serializers.deserialize(
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
    TestNoPayloadInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
