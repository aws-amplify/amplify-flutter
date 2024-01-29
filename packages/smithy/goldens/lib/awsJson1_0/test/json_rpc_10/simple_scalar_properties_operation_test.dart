// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library aws_json1_0_v1.json_rpc_10.test.simple_scalar_properties_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_0_v1/src/json_rpc_10/model/simple_scalar_properties_input.dart';
import 'package:aws_json1_0_v1/src/json_rpc_10/model/simple_scalar_properties_output.dart';
import 'package:aws_json1_0_v1/src/json_rpc_10/operation/simple_scalar_properties_operation.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AwsJson10SupportsNaNFloatInputs (request)',
    () async {
      await _i2.httpRequestTest(
        operation: SimpleScalarPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsJson10SupportsNaNFloatInputs',
          documentation: 'Supports handling NaN float values.',
          protocol: _i3.ShapeId(
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
        operation: SimpleScalarPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsJson10SupportsInfinityFloatInputs',
          documentation: 'Supports handling Infinity float values.',
          protocol: _i3.ShapeId(
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
        operation: SimpleScalarPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsJson10SupportsNegativeInfinityFloatInputs',
          documentation: 'Supports handling -Infinity float values.',
          protocol: _i3.ShapeId(
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
        operation: SimpleScalarPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10SupportsNaNFloatInputs',
          documentation: 'Supports handling NaN float values.',
          protocol: _i3.ShapeId(
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
        operation: SimpleScalarPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10SupportsInfinityFloatInputs',
          documentation: 'Supports handling Infinity float values.',
          protocol: _i3.ShapeId(
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
        operation: SimpleScalarPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10SupportsNegativeInfinityFloatInputs',
          documentation: 'Supports handling -Infinity float values.',
          protocol: _i3.ShapeId(
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
    extends _i3.StructuredSmithySerializer<SimpleScalarPropertiesInput> {
  const SimpleScalarPropertiesInputAwsJson10Serializer()
      : super('SimpleScalarPropertiesInput');

  @override
  Iterable<Type> get types => const [SimpleScalarPropertiesInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];

  @override
  SimpleScalarPropertiesInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimpleScalarPropertiesInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'floatValue':
          result.floatValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'doubleValue':
          result.doubleValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SimpleScalarPropertiesInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class SimpleScalarPropertiesOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<SimpleScalarPropertiesOutput> {
  const SimpleScalarPropertiesOutputAwsJson10Serializer()
      : super('SimpleScalarPropertiesOutput');

  @override
  Iterable<Type> get types => const [SimpleScalarPropertiesOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];

  @override
  SimpleScalarPropertiesOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimpleScalarPropertiesOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'floatValue':
          result.floatValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'doubleValue':
          result.doubleValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SimpleScalarPropertiesOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
