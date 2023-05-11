// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

// ignore_for_file: unused_element
library aws_query_v2.query_protocol.test.simple_input_params_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i6;

import 'package:aws_query_v2/src/query_protocol/model/foo_enum.dart' as _i7;
import 'package:aws_query_v2/src/query_protocol/model/integer_enum.dart' as _i8;
import 'package:aws_query_v2/src/query_protocol/model/simple_input_params_input.dart'
    as _i5;
import 'package:aws_query_v2/src/query_protocol/operation/simple_input_params_operation.dart'
    as _i3;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QuerySimpleInputParamsStrings (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.SimpleInputParamsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'QuerySimpleInputParamsStrings',
          documentation: 'Serializes strings',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body: 'Action=SimpleInputParams&Version=2020-01-08&Foo=val1&Bar=val2',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {
            'Foo': 'val1',
            'Bar': 'val2',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
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
        inputSerializers: const [SimpleInputParamsInputAwsQuerySerializer()],
      );
    },
  );
  _i1.test(
    'QuerySimpleInputParamsStringAndBooleanTrue (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.SimpleInputParamsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'QuerySimpleInputParamsStringAndBooleanTrue',
          documentation: 'Serializes booleans that are true',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body: 'Action=SimpleInputParams&Version=2020-01-08&Foo=val1&Baz=true',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {
            'Foo': 'val1',
            'Baz': true,
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
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
        inputSerializers: const [SimpleInputParamsInputAwsQuerySerializer()],
      );
    },
  );
  _i1.test(
    'QuerySimpleInputParamsStringsAndBooleanFalse (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.SimpleInputParamsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'QuerySimpleInputParamsStringsAndBooleanFalse',
          documentation: 'Serializes booleans that are false',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body: 'Action=SimpleInputParams&Version=2020-01-08&Baz=false',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {'Baz': false},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
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
        inputSerializers: const [SimpleInputParamsInputAwsQuerySerializer()],
      );
    },
  );
  _i1.test(
    'QuerySimpleInputParamsInteger (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.SimpleInputParamsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'QuerySimpleInputParamsInteger',
          documentation: 'Serializes integers',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body: 'Action=SimpleInputParams&Version=2020-01-08&Bam=10',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {'Bam': 10},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
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
        inputSerializers: const [SimpleInputParamsInputAwsQuerySerializer()],
      );
    },
  );
  _i1.test(
    'QuerySimpleInputParamsFloat (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.SimpleInputParamsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'QuerySimpleInputParamsFloat',
          documentation: 'Serializes floats',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body: 'Action=SimpleInputParams&Version=2020-01-08&Boo=10.8',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {'Boo': 10.8},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
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
        inputSerializers: const [SimpleInputParamsInputAwsQuerySerializer()],
      );
    },
  );
  _i1.test(
    'QuerySimpleInputParamsBlob (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.SimpleInputParamsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'QuerySimpleInputParamsBlob',
          documentation: 'Blobs are base64 encoded in the query string',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body: 'Action=SimpleInputParams&Version=2020-01-08&Qux=dmFsdWU%3D',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {'Qux': 'value'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
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
        inputSerializers: const [SimpleInputParamsInputAwsQuerySerializer()],
      );
    },
  );
  _i1.test(
    'QueryEnums (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.SimpleInputParamsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'QueryEnums',
          documentation: 'Serializes enums in the query string',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body: 'Action=SimpleInputParams&Version=2020-01-08&FooEnum=Foo',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {'FooEnum': 'Foo'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
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
        inputSerializers: const [SimpleInputParamsInputAwsQuerySerializer()],
      );
    },
  );
  _i1.test(
    'QueryIntEnums (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.SimpleInputParamsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'QueryIntEnums',
          documentation: 'Serializes intEnums in the query string',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body: 'Action=SimpleInputParams&Version=2020-01-08&IntegerEnum=1',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {'IntegerEnum': 1},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
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
        inputSerializers: const [SimpleInputParamsInputAwsQuerySerializer()],
      );
    },
  );
  _i1.test(
    'AwsQuerySupportsNaNFloatInputs (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.SimpleInputParamsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsQuerySupportsNaNFloatInputs',
          documentation: 'Supports handling NaN float values.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              'Action=SimpleInputParams&Version=2020-01-08&FloatValue=NaN&Boo=NaN',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {
            'FloatValue': 'NaN',
            'Boo': 'NaN',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
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
        inputSerializers: const [SimpleInputParamsInputAwsQuerySerializer()],
      );
    },
  );
  _i1.test(
    'AwsQuerySupportsInfinityFloatInputs (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.SimpleInputParamsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsQuerySupportsInfinityFloatInputs',
          documentation: 'Supports handling Infinity float values.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              'Action=SimpleInputParams&Version=2020-01-08&FloatValue=Infinity&Boo=Infinity',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {
            'FloatValue': 'Infinity',
            'Boo': 'Infinity',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
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
        inputSerializers: const [SimpleInputParamsInputAwsQuerySerializer()],
      );
    },
  );
  _i1.test(
    'AwsQuerySupportsNegativeInfinityFloatInputs (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.SimpleInputParamsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsQuerySupportsNegativeInfinityFloatInputs',
          documentation: 'Supports handling -Infinity float values.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              'Action=SimpleInputParams&Version=2020-01-08&FloatValue=-Infinity&Boo=-Infinity',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {
            'FloatValue': '-Infinity',
            'Boo': '-Infinity',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
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
        inputSerializers: const [SimpleInputParamsInputAwsQuerySerializer()],
      );
    },
  );
}

class SimpleInputParamsInputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i5.SimpleInputParamsInput> {
  const SimpleInputParamsInputAwsQuerySerializer()
      : super('SimpleInputParamsInput');

  @override
  Iterable<Type> get types => const [_i5.SimpleInputParamsInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  _i5.SimpleInputParamsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.SimpleInputParamsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Foo':
          result.foo = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Bar':
          result.bar = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Baz':
          result.baz = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Bam':
          result.bam = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'FloatValue':
          result.floatValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'Boo':
          result.boo = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'Qux':
          result.qux = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.Uint8List),
          ) as _i6.Uint8List);
        case 'FooEnum':
          result.fooEnum = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.FooEnum),
          ) as _i7.FooEnum);
        case 'IntegerEnum':
          result.integerEnum = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i8.IntegerEnum),
          ) as _i8.IntegerEnum);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i5.SimpleInputParamsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
