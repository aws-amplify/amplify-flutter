// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.simple_scalar_properties_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i6;
import 'package:rest_json1_v2/src/rest_json_protocol/model/simple_scalar_properties_input_output.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_protocol/operation/simple_scalar_properties_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonSimpleScalarProperties (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.SimpleScalarPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonSimpleScalarProperties',
          documentation: 'Serializes simple scalar properties',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body:
              '{\n    "stringValue": "string",\n    "trueBooleanValue": true,\n    "falseBooleanValue": false,\n    "byteValue": 1,\n    "shortValue": 2,\n    "integerValue": 3,\n    "longValue": 4,\n    "floatValue": 5.5,\n    "DoubleDribble": 6.5\n}',
          bodyMediaType: 'application/json',
          params: {
            'foo': 'Foo',
            'stringValue': 'string',
            'trueBooleanValue': true,
            'falseBooleanValue': false,
            'byteValue': 1,
            'shortValue': 2,
            'integerValue': 3,
            'longValue': 4,
            'floatValue': 5.5,
            'doubleValue': 6.5,
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/json',
            'X-Foo': 'Foo',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/SimpleScalarProperties',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          SimpleScalarPropertiesInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonDoesntSerializeNullStructureValues (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.SimpleScalarPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonDoesntSerializeNullStructureValues',
          documentation: 'Rest Json should not serialize null structure values',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{}',
          bodyMediaType: 'application/json',
          params: {'stringValue': null},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          method: 'PUT',
          uri: '/SimpleScalarProperties',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          SimpleScalarPropertiesInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonSupportsNaNFloatInputs (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.SimpleScalarPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonSupportsNaNFloatInputs',
          documentation: 'Supports handling NaN float values.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "floatValue": "NaN",\n    "DoubleDribble": "NaN"\n}',
          bodyMediaType: 'application/json',
          params: {
            'floatValue': 'NaN',
            'doubleValue': 'NaN',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/SimpleScalarProperties',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          SimpleScalarPropertiesInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonSupportsInfinityFloatInputs (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.SimpleScalarPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonSupportsInfinityFloatInputs',
          documentation: 'Supports handling Infinity float values.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body:
              '{\n    "floatValue": "Infinity",\n    "DoubleDribble": "Infinity"\n}',
          bodyMediaType: 'application/json',
          params: {
            'floatValue': 'Infinity',
            'doubleValue': 'Infinity',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/SimpleScalarProperties',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          SimpleScalarPropertiesInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonSupportsNegativeInfinityFloatInputs (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.SimpleScalarPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonSupportsNegativeInfinityFloatInputs',
          documentation: 'Supports handling -Infinity float values.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body:
              '{\n    "floatValue": "-Infinity",\n    "DoubleDribble": "-Infinity"\n}',
          bodyMediaType: 'application/json',
          params: {
            'floatValue': '-Infinity',
            'doubleValue': '-Infinity',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/SimpleScalarProperties',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          SimpleScalarPropertiesInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonSimpleScalarProperties (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.SimpleScalarPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonSimpleScalarProperties',
          documentation: 'Serializes simple scalar properties',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body:
              '{\n    "stringValue": "string",\n    "trueBooleanValue": true,\n    "falseBooleanValue": false,\n    "byteValue": 1,\n    "shortValue": 2,\n    "integerValue": 3,\n    "longValue": 4,\n    "floatValue": 5.5,\n    "DoubleDribble": 6.5\n}',
          bodyMediaType: 'application/json',
          params: {
            'foo': 'Foo',
            'stringValue': 'string',
            'trueBooleanValue': true,
            'falseBooleanValue': false,
            'byteValue': 1,
            'shortValue': 2,
            'integerValue': 3,
            'longValue': 4,
            'floatValue': 5.5,
            'doubleValue': 6.5,
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/json',
            'X-Foo': 'Foo',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          SimpleScalarPropertiesInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonDoesntDeserializeNullStructureValues (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.SimpleScalarPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonDoesntDeserializeNullStructureValues',
          documentation:
              'Rest Json should not deserialize null structure values',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "stringValue": null\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 200,
        ),
        outputSerializers: const [
          SimpleScalarPropertiesInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonSupportsNaNFloatInputs (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.SimpleScalarPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonSupportsNaNFloatInputs',
          documentation: 'Supports handling NaN float values.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "floatValue": "NaN",\n    "DoubleDribble": "NaN"\n}',
          bodyMediaType: 'application/json',
          params: {
            'floatValue': 'NaN',
            'doubleValue': 'NaN',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          SimpleScalarPropertiesInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonSupportsInfinityFloatInputs (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.SimpleScalarPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonSupportsInfinityFloatInputs',
          documentation: 'Supports handling Infinity float values.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body:
              '{\n    "floatValue": "Infinity",\n    "DoubleDribble": "Infinity"\n}',
          bodyMediaType: 'application/json',
          params: {
            'floatValue': 'Infinity',
            'doubleValue': 'Infinity',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          SimpleScalarPropertiesInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonSupportsNegativeInfinityFloatInputs (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.SimpleScalarPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonSupportsNegativeInfinityFloatInputs',
          documentation: 'Supports handling -Infinity float values.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body:
              '{\n    "floatValue": "-Infinity",\n    "DoubleDribble": "-Infinity"\n}',
          bodyMediaType: 'application/json',
          params: {
            'floatValue': '-Infinity',
            'doubleValue': '-Infinity',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          SimpleScalarPropertiesInputOutputRestJson1Serializer()
        ],
      );
    },
  );
}

class SimpleScalarPropertiesInputOutputRestJson1Serializer extends _i4
    .StructuredSmithySerializer<_i5.SimpleScalarPropertiesInputOutput> {
  const SimpleScalarPropertiesInputOutputRestJson1Serializer()
      : super('SimpleScalarPropertiesInputOutput');

  @override
  Iterable<Type> get types => const [_i5.SimpleScalarPropertiesInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.SimpleScalarPropertiesInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.SimpleScalarPropertiesInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'byteValue':
          if (value != null) {
            result.byteValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'doubleValue':
          if (value != null) {
            result.doubleValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
          }
          break;
        case 'falseBooleanValue':
          if (value != null) {
            result.falseBooleanValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
        case 'foo':
          if (value != null) {
            result.foo = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'integerValue':
          if (value != null) {
            result.integerValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'longValue':
          if (value != null) {
            result.longValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.Int64),
            ) as _i6.Int64);
          }
          break;
        case 'shortValue':
          if (value != null) {
            result.shortValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'stringValue':
          if (value != null) {
            result.stringValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'trueBooleanValue':
          if (value != null) {
            result.trueBooleanValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
