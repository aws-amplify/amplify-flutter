// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.test_no_payload_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/test_no_payload_input_output.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_protocol/operation/test_no_payload_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonHttpWithNoModeledBody (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.TestNoPayloadOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestJsonHttpWithNoModeledBody',
              documentation: 'Serializes a GET request with no modeled body',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '',
              bodyMediaType: null,
              params: {},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {},
              forbidHeaders: ['Content-Length', 'Content-Type'],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'GET',
              uri: '/no_payload',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            TestNoPayloadInputOutputRestJson1Serializer()
          ]);
    },
  );
  _i1.test(
    'RestJsonHttpWithHeaderMemberNoModeledBody (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.TestNoPayloadOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestJsonHttpWithHeaderMemberNoModeledBody',
              documentation:
                  'Serializes a GET request with header member but no modeled body',
              protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '',
              bodyMediaType: null,
              params: {'testId': 't-12345'},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'X-Amz-Test-Id': 't-12345'},
              forbidHeaders: ['Content-Length', 'Content-Type'],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'GET',
              uri: '/no_payload',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            TestNoPayloadInputOutputRestJson1Serializer()
          ]);
    },
  );
}

class TestNoPayloadInputOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.TestNoPayloadInputOutput> {
  const TestNoPayloadInputOutputRestJson1Serializer()
      : super('TestNoPayloadInputOutput');

  @override
  Iterable<Type> get types => const [_i5.TestNoPayloadInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i5.TestNoPayloadInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.TestNoPayloadInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'testId':
          if (value != null) {
            result.testId = (serializers.deserialize(value,
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
