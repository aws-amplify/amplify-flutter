// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library aws_json1_0_v2.json_rpc_10.test.simple_scalar_properties_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_0_v2/src/json_rpc_10/model/simple_scalar_properties_input.dart'
    as _i5;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/simple_scalar_properties_output.dart'
    as _i6;
import 'package:aws_json1_0_v2/src/json_rpc_10/operation/simple_scalar_properties_operation.dart'
    as _i3;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AwsJson10SupportsNaNFloatInputs (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.SimpleScalarPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsJson10SupportsNaNFloatInputs',
          documentation: 'Supports handling NaN float values.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{\n    "floatValue": "NaN",\n    "doubleValue": "NaN"\n}',
          bodyMediaType: 'application/json',
          params: {
            'floatValue': 'NaN',
            'doubleValue': 'NaN',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.SimpleScalarProperties',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          SimpleScalarPropertiesInputAwsJson10Serializer()
        ],
      );
    },
  );
  _i1.test(
    'AwsJson10SupportsInfinityFloatInputs (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.SimpleScalarPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsJson10SupportsInfinityFloatInputs',
          documentation: 'Supports handling Infinity float values.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body:
              '{\n    "floatValue": "Infinity",\n    "doubleValue": "Infinity"\n}',
          bodyMediaType: 'application/json',
          params: {
            'floatValue': 'Infinity',
            'doubleValue': 'Infinity',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.SimpleScalarProperties',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          SimpleScalarPropertiesInputAwsJson10Serializer()
        ],
      );
    },
  );
  _i1.test(
    'AwsJson10SupportsNegativeInfinityFloatInputs (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.SimpleScalarPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsJson10SupportsNegativeInfinityFloatInputs',
          documentation: 'Supports handling -Infinity float values.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body:
              '{\n    "floatValue": "-Infinity",\n    "doubleValue": "-Infinity"\n}',
          bodyMediaType: 'application/json',
          params: {
            'floatValue': '-Infinity',
            'doubleValue': '-Infinity',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.SimpleScalarProperties',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          SimpleScalarPropertiesInputAwsJson10Serializer()
        ],
      );
    },
  );
  _i1.test(
    'AwsJson10SupportsNaNFloatInputs (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.SimpleScalarPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10SupportsNaNFloatInputs',
          documentation: 'Supports handling NaN float values.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{\n    "floatValue": "NaN",\n    "doubleValue": "NaN"\n}',
          bodyMediaType: 'application/json',
          params: {
            'floatValue': 'NaN',
            'doubleValue': 'NaN',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          SimpleScalarPropertiesOutputAwsJson10Serializer()
        ],
      );
    },
  );
  _i1.test(
    'AwsJson10SupportsInfinityFloatInputs (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.SimpleScalarPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10SupportsInfinityFloatInputs',
          documentation: 'Supports handling Infinity float values.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body:
              '{\n    "floatValue": "Infinity",\n    "doubleValue": "Infinity"\n}',
          bodyMediaType: 'application/json',
          params: {
            'floatValue': 'Infinity',
            'doubleValue': 'Infinity',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          SimpleScalarPropertiesOutputAwsJson10Serializer()
        ],
      );
    },
  );
  _i1.test(
    'AwsJson10SupportsNegativeInfinityFloatInputs (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.SimpleScalarPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10SupportsNegativeInfinityFloatInputs',
          documentation: 'Supports handling -Infinity float values.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body:
              '{\n    "floatValue": "-Infinity",\n    "doubleValue": "-Infinity"\n}',
          bodyMediaType: 'application/json',
          params: {
            'floatValue': '-Infinity',
            'doubleValue': '-Infinity',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          SimpleScalarPropertiesOutputAwsJson10Serializer()
        ],
      );
    },
  );
}

class SimpleScalarPropertiesInputAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<_i5.SimpleScalarPropertiesInput> {
  const SimpleScalarPropertiesInputAwsJson10Serializer()
      : super('SimpleScalarPropertiesInput');

  @override
  Iterable<Type> get types => const [_i5.SimpleScalarPropertiesInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  _i5.SimpleScalarPropertiesInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.SimpleScalarPropertiesInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'doubleValue':
          if (value != null) {
            result.doubleValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
          }
          break;
        case 'floatValue':
          if (value != null) {
            result.floatValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
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

class SimpleScalarPropertiesOutputAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<_i6.SimpleScalarPropertiesOutput> {
  const SimpleScalarPropertiesOutputAwsJson10Serializer()
      : super('SimpleScalarPropertiesOutput');

  @override
  Iterable<Type> get types => const [_i6.SimpleScalarPropertiesOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  _i6.SimpleScalarPropertiesOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i6.SimpleScalarPropertiesOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'doubleValue':
          if (value != null) {
            result.doubleValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
          }
          break;
        case 'floatValue':
          if (value != null) {
            result.floatValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
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
