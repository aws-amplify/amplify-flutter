// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_json1_v1.rest_json_protocol.test.test_payload_structure_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/payload_config.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/test_payload_structure_input_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/test_payload_structure_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonHttpWithEmptyStructurePayload (request)',
    () async {
      await _i2.httpRequestTest(
        operation: TestPayloadStructureOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonHttpWithEmptyStructurePayload',
          documentation: 'Serializes a payload targeting an empty structure',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
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
          requireQueryParams: [],
        ),
        inputSerializers: const [
          TestPayloadStructureInputOutputRestJson1Serializer(),
          PayloadConfigRestJson1Serializer(),
        ],
      );
    },
  );
  _i1.test(
    'RestJsonTestPayloadStructure (request)',
    () async {
      await _i2.httpRequestTest(
        operation: TestPayloadStructureOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonTestPayloadStructure',
          documentation: 'Serializes a payload targeting a structure',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
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
          requireQueryParams: [],
        ),
        inputSerializers: const [
          TestPayloadStructureInputOutputRestJson1Serializer(),
          PayloadConfigRestJson1Serializer(),
        ],
      );
    },
  );
  _i1.test(
    'RestJsonHttpWithHeadersButNoPayload (request)',
    () async {
      await _i2.httpRequestTest(
        operation: TestPayloadStructureOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonHttpWithHeadersButNoPayload',
          documentation:
              'Serializes an request with header members but no payload',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{}',
          bodyMediaType: 'application/json',
          params: {'testId': 't-12345'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/json',
            'X-Amz-Test-Id': 't-12345',
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
          requireQueryParams: [],
        ),
        inputSerializers: const [
          TestPayloadStructureInputOutputRestJson1Serializer(),
          PayloadConfigRestJson1Serializer(),
        ],
      );
    },
  );
}

class TestPayloadStructureInputOutputRestJson1Serializer
    extends _i3.StructuredSmithySerializer<TestPayloadStructureInputOutput> {
  const TestPayloadStructureInputOutputRestJson1Serializer()
      : super('TestPayloadStructureInputOutput');

  @override
  Iterable<Type> get types => const [TestPayloadStructureInputOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  TestPayloadStructureInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestPayloadStructureInputOutputBuilder();
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
        case 'payloadConfig':
          result.payloadConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PayloadConfig),
          ) as PayloadConfig));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TestPayloadStructureInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class PayloadConfigRestJson1Serializer
    extends _i3.StructuredSmithySerializer<PayloadConfig> {
  const PayloadConfigRestJson1Serializer() : super('PayloadConfig');

  @override
  Iterable<Type> get types => const [PayloadConfig];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  PayloadConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayloadConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'data':
          result.data = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PayloadConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
