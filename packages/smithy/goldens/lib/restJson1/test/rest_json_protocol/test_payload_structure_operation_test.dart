// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v1.rest_json_protocol.test.test_payload_structure_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/payload_config.dart'
    as _i6;
import 'package:rest_json1_v1/src/rest_json_protocol/model/test_payload_structure_input_output.dart'
    as _i5;
import 'package:rest_json1_v1/src/rest_json_protocol/operation/test_payload_structure_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonHttpWithEmptyStructurePayload (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.TestPayloadStructureOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestJsonHttpWithEmptyStructurePayload',
              documentation:
                  'Serializes a payload targeting an empty structure',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '{}',
              bodyMediaType: 'application/json',
              params: {},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/json'},
              forbidHeaders: [],
              requireHeaders: ['Content-Length'],
              tags: [],
              appliesTo: null,
              method: 'POST',
              uri: '/payload',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            TestPayloadStructureInputOutputRestJson1Serializer(),
            PayloadConfigRestJson1Serializer()
          ]);
    },
  );
  _i1.test(
    'RestJsonTestPayloadStructure (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.TestPayloadStructureOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestJsonTestPayloadStructure',
              documentation: 'Serializes a payload targeting a structure',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '{"data": 25\n}',
              bodyMediaType: 'application/json',
              params: {
                'payloadConfig': {'data': 25}
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/json'},
              forbidHeaders: [],
              requireHeaders: ['Content-Length'],
              tags: [],
              appliesTo: null,
              method: 'POST',
              uri: '/payload',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            TestPayloadStructureInputOutputRestJson1Serializer(),
            PayloadConfigRestJson1Serializer()
          ]);
    },
  );
  _i1.test(
    'RestJsonHttpWithHeadersButNoPayload (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.TestPayloadStructureOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestJsonHttpWithHeadersButNoPayload',
              documentation:
                  'Serializes an request with header members but no payload',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '{}',
              bodyMediaType: 'application/json',
              params: {'testId': 't-12345'},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {
                'Content-Type': 'application/json',
                'X-Amz-Test-Id': 't-12345'
              },
              forbidHeaders: [],
              requireHeaders: ['Content-Length'],
              tags: [],
              appliesTo: null,
              method: 'POST',
              uri: '/payload',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            TestPayloadStructureInputOutputRestJson1Serializer(),
            PayloadConfigRestJson1Serializer()
          ]);
    },
  );
}

class TestPayloadStructureInputOutputRestJson1Serializer extends _i4
    .StructuredSmithySerializer<_i5.TestPayloadStructureInputOutput> {
  const TestPayloadStructureInputOutputRestJson1Serializer()
      : super('TestPayloadStructureInputOutput');

  @override
  Iterable<Type> get types => const [_i5.TestPayloadStructureInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i5.TestPayloadStructureInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.TestPayloadStructureInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'payloadConfig':
          if (value != null) {
            result.payloadConfig.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i6.PayloadConfig))
                as _i6.PayloadConfig));
          }
          break;
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

class PayloadConfigRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i6.PayloadConfig> {
  const PayloadConfigRestJson1Serializer() : super('PayloadConfig');

  @override
  Iterable<Type> get types => const [_i6.PayloadConfig];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i6.PayloadConfig deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i6.PayloadConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'data':
          if (value != null) {
            result.data = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
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
