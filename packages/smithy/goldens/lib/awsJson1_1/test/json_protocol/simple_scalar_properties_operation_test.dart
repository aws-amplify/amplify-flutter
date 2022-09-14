// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library aws_json1_1.json_protocol.test.simple_scalar_properties_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_1/src/json_protocol/model/simple_scalar_properties_input_output.dart'
    as _i6;
import 'package:aws_json1_1/src/json_protocol/operation/simple_scalar_properties_operation.dart'
    as _i3;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AwsJson11SupportsNaNFloatInputs (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.SimpleScalarPropertiesOperation(
              region: 'us-east-1',
              baseUri: Uri.parse('https://example.com'),
              credentialsProvider: const _i4.AWSCredentialsProvider(
                  _i4.AWSCredentials(
                      'DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'))),
          testCase: const _i2.HttpRequestTestCase(
              id: 'AwsJson11SupportsNaNFloatInputs',
              documentation: 'Supports handling NaN float values.',
              protocol:
                  _i5.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
              authScheme: null,
              body: '{\n    "floatValue": "NaN",\n    "doubleValue": "NaN"\n}',
              bodyMediaType: 'application/json',
              params: {'floatValue': 'NaN', 'doubleValue': 'NaN'},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {
                'Content-Type': 'application/x-amz-json-1.1',
                'X-Amz-Target': 'JsonProtocol.SimpleScalarProperties'
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
              requireQueryParams: []),
          inputSerializers: const [
            SimpleScalarPropertiesInputOutputAwsJson11Serializer()
          ]);
    },
  );
  _i1.test(
    'AwsJson11SupportsInfinityFloatInputs (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.SimpleScalarPropertiesOperation(
              region: 'us-east-1',
              baseUri: Uri.parse('https://example.com'),
              credentialsProvider: const _i4.AWSCredentialsProvider(
                  _i4.AWSCredentials(
                      'DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'))),
          testCase: const _i2.HttpRequestTestCase(
              id: 'AwsJson11SupportsInfinityFloatInputs',
              documentation: 'Supports handling Infinity float values.',
              protocol:
                  _i5.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
              authScheme: null,
              body:
                  '{\n    "floatValue": "Infinity",\n    "doubleValue": "Infinity"\n}',
              bodyMediaType: 'application/json',
              params: {'floatValue': 'Infinity', 'doubleValue': 'Infinity'},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {
                'Content-Type': 'application/x-amz-json-1.1',
                'X-Amz-Target': 'JsonProtocol.SimpleScalarProperties'
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
              requireQueryParams: []),
          inputSerializers: const [
            SimpleScalarPropertiesInputOutputAwsJson11Serializer()
          ]);
    },
  );
  _i1.test(
    'AwsJson11SupportsNegativeInfinityFloatInputs (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.SimpleScalarPropertiesOperation(
              region: 'us-east-1',
              baseUri: Uri.parse('https://example.com'),
              credentialsProvider: const _i4.AWSCredentialsProvider(
                  _i4.AWSCredentials(
                      'DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'))),
          testCase: const _i2.HttpRequestTestCase(
              id: 'AwsJson11SupportsNegativeInfinityFloatInputs',
              documentation: 'Supports handling -Infinity float values.',
              protocol:
                  _i5.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
              authScheme: null,
              body:
                  '{\n    "floatValue": "-Infinity",\n    "doubleValue": "-Infinity"\n}',
              bodyMediaType: 'application/json',
              params: {'floatValue': '-Infinity', 'doubleValue': '-Infinity'},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {
                'Content-Type': 'application/x-amz-json-1.1',
                'X-Amz-Target': 'JsonProtocol.SimpleScalarProperties'
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
              requireQueryParams: []),
          inputSerializers: const [
            SimpleScalarPropertiesInputOutputAwsJson11Serializer()
          ]);
    },
  );
  _i1.test(
    'AwsJson11SupportsNaNFloatInputs (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.SimpleScalarPropertiesOperation(
              region: 'us-east-1',
              baseUri: Uri.parse('https://example.com'),
              credentialsProvider: const _i4.AWSCredentialsProvider(
                  _i4.AWSCredentials(
                      'DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'))),
          testCase: const _i2.HttpResponseTestCase(
              id: 'AwsJson11SupportsNaNFloatInputs',
              documentation: 'Supports handling NaN float values.',
              protocol:
                  _i5.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
              authScheme: null,
              body: '{\n    "floatValue": "NaN",\n    "doubleValue": "NaN"\n}',
              bodyMediaType: 'application/json',
              params: {'floatValue': 'NaN', 'doubleValue': 'NaN'},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/x-amz-json-1.1'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [
            SimpleScalarPropertiesInputOutputAwsJson11Serializer()
          ]);
    },
  );
  _i1.test(
    'AwsJson11SupportsInfinityFloatInputs (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.SimpleScalarPropertiesOperation(
              region: 'us-east-1',
              baseUri: Uri.parse('https://example.com'),
              credentialsProvider: const _i4.AWSCredentialsProvider(
                  _i4.AWSCredentials(
                      'DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'))),
          testCase: const _i2.HttpResponseTestCase(
              id: 'AwsJson11SupportsInfinityFloatInputs',
              documentation: 'Supports handling Infinity float values.',
              protocol:
                  _i5.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
              authScheme: null,
              body:
                  '{\n    "floatValue": "Infinity",\n    "doubleValue": "Infinity"\n}',
              bodyMediaType: 'application/json',
              params: {'floatValue': 'Infinity', 'doubleValue': 'Infinity'},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/x-amz-json-1.1'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [
            SimpleScalarPropertiesInputOutputAwsJson11Serializer()
          ]);
    },
  );
  _i1.test(
    'AwsJson11SupportsNegativeInfinityFloatInputs (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.SimpleScalarPropertiesOperation(
              region: 'us-east-1',
              baseUri: Uri.parse('https://example.com'),
              credentialsProvider: const _i4.AWSCredentialsProvider(
                  _i4.AWSCredentials(
                      'DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'))),
          testCase: const _i2.HttpResponseTestCase(
              id: 'AwsJson11SupportsNegativeInfinityFloatInputs',
              documentation: 'Supports handling -Infinity float values.',
              protocol:
                  _i5.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
              authScheme: null,
              body:
                  '{\n    "floatValue": "-Infinity",\n    "doubleValue": "-Infinity"\n}',
              bodyMediaType: 'application/json',
              params: {'floatValue': '-Infinity', 'doubleValue': '-Infinity'},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/x-amz-json-1.1'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [
            SimpleScalarPropertiesInputOutputAwsJson11Serializer()
          ]);
    },
  );
}

class SimpleScalarPropertiesInputOutputAwsJson11Serializer extends _i5
    .StructuredSmithySerializer<_i6.SimpleScalarPropertiesInputOutput> {
  const SimpleScalarPropertiesInputOutputAwsJson11Serializer()
      : super('SimpleScalarPropertiesInputOutput');

  @override
  Iterable<Type> get types => const [_i6.SimpleScalarPropertiesInputOutput];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  _i6.SimpleScalarPropertiesInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i6.SimpleScalarPropertiesInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'doubleValue':
          if (value != null) {
            result.doubleValue = (serializers.deserialize(value,
                specifiedType: const FullType(double)) as double);
          }
          break;
        case 'floatValue':
          if (value != null) {
            result.floatValue = (serializers.deserialize(value,
                specifiedType: const FullType(double)) as double);
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
