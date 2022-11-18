// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v1.rest_json_protocol.test.test_body_structure_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/test_body_structure_input_output.dart'
    as _i5;
import 'package:rest_json1_v1/src/rest_json_protocol/model/test_config.dart'
    as _i6;
import 'package:rest_json1_v1/src/rest_json_protocol/operation/test_body_structure_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonTestBodyStructure (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.TestBodyStructureOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonTestBodyStructure',
          documentation: 'Serializes a structure',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{"testConfig":\n    {"timeout": 10}\n}',
          bodyMediaType: 'application/json',
          params: {
            'testConfig': {'timeout': 10}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/body',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          TestBodyStructureInputOutputRestJson1Serializer(),
          TestConfigRestJson1Serializer(),
        ],
      );
    },
  );
  _i1.test(
    'RestJsonHttpWithEmptyBody (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.TestBodyStructureOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonHttpWithEmptyBody',
          documentation: 'Serializes an empty structure in the body',
          protocol: _i4.ShapeId(
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
          uri: '/body',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          TestBodyStructureInputOutputRestJson1Serializer(),
          TestConfigRestJson1Serializer(),
        ],
      );
    },
  );
}

class TestBodyStructureInputOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.TestBodyStructureInputOutput> {
  const TestBodyStructureInputOutputRestJson1Serializer()
      : super('TestBodyStructureInputOutput');

  @override
  Iterable<Type> get types => const [_i5.TestBodyStructureInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.TestBodyStructureInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.TestBodyStructureInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'testConfig':
          if (value != null) {
            result.testConfig.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.TestConfig),
            ) as _i6.TestConfig));
          }
          break;
        case 'testId':
          if (value != null) {
            result.testId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class TestConfigRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i6.TestConfig> {
  const TestConfigRestJson1Serializer() : super('TestConfig');

  @override
  Iterable<Type> get types => const [_i6.TestConfig];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i6.TestConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i6.TestConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'timeout':
          if (value != null) {
            result.timeout = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
