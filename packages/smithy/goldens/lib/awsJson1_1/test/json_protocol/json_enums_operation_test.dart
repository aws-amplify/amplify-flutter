// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library aws_json1_1.json_protocol.test.json_enums_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_1/src/json_protocol/model/foo_enum.dart' as _i7;
import 'package:aws_json1_1/src/json_protocol/model/json_enums_input_output.dart'
    as _i6;
import 'package:aws_json1_1/src/json_protocol/operation/json_enums_operation.dart'
    as _i3;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AwsJson11Enums (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.JsonEnumsOperation(
              region: 'us-east-1',
              baseUri: Uri.parse('https://example.com'),
              credentialsProvider: const _i4.AWSCredentialsProvider(
                  _i4.AWSCredentials(
                      'DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'))),
          testCase: const _i2.HttpRequestTestCase(
              id: 'AwsJson11Enums',
              documentation: 'Serializes simple scalar properties',
              protocol:
                  _i5.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
              authScheme: null,
              body:
                  '{\n    "fooEnum1": "Foo",\n    "fooEnum2": "0",\n    "fooEnum3": "1",\n    "fooEnumList": [\n        "Foo",\n        "0"\n    ],\n    "fooEnumSet": [\n        "Foo",\n        "0"\n    ],\n    "fooEnumMap": {\n        "hi": "Foo",\n        "zero": "0"\n    }\n}',
              bodyMediaType: 'application/json',
              params: {
                'fooEnum1': 'Foo',
                'fooEnum2': '0',
                'fooEnum3': '1',
                'fooEnumList': ['Foo', '0'],
                'fooEnumSet': ['Foo', '0'],
                'fooEnumMap': {'hi': 'Foo', 'zero': '0'}
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/x-amz-json-1.1'},
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
          inputSerializers: const [JsonEnumsInputOutputAwsJson11Serializer()]);
    },
  );
  _i1.test(
    'AwsJson11Enums (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.JsonEnumsOperation(
              region: 'us-east-1',
              baseUri: Uri.parse('https://example.com'),
              credentialsProvider: const _i4.AWSCredentialsProvider(
                  _i4.AWSCredentials(
                      'DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'))),
          testCase: const _i2.HttpResponseTestCase(
              id: 'AwsJson11Enums',
              documentation: 'Serializes simple scalar properties',
              protocol:
                  _i5.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
              authScheme: null,
              body:
                  '{\n    "fooEnum1": "Foo",\n    "fooEnum2": "0",\n    "fooEnum3": "1",\n    "fooEnumList": [\n        "Foo",\n        "0"\n    ],\n    "fooEnumSet": [\n        "Foo",\n        "0"\n    ],\n    "fooEnumMap": {\n        "hi": "Foo",\n        "zero": "0"\n    }\n}',
              bodyMediaType: 'application/json',
              params: {
                'fooEnum1': 'Foo',
                'fooEnum2': '0',
                'fooEnum3': '1',
                'fooEnumList': ['Foo', '0'],
                'fooEnumSet': ['Foo', '0'],
                'fooEnumMap': {'hi': 'Foo', 'zero': '0'}
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/x-amz-json-1.1'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [JsonEnumsInputOutputAwsJson11Serializer()]);
    },
  );
}

class JsonEnumsInputOutputAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<_i6.JsonEnumsInputOutput> {
  const JsonEnumsInputOutputAwsJson11Serializer()
      : super('JsonEnumsInputOutput');

  @override
  Iterable<Type> get types => const [_i6.JsonEnumsInputOutput];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  _i6.JsonEnumsInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i6.JsonEnumsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'fooEnum1':
          if (value != null) {
            result.fooEnum1 = (serializers.deserialize(value,
                specifiedType: const FullType(_i7.FooEnum)) as _i7.FooEnum);
          }
          break;
        case 'fooEnum2':
          if (value != null) {
            result.fooEnum2 = (serializers.deserialize(value,
                specifiedType: const FullType(_i7.FooEnum)) as _i7.FooEnum);
          }
          break;
        case 'fooEnum3':
          if (value != null) {
            result.fooEnum3 = (serializers.deserialize(value,
                specifiedType: const FullType(_i7.FooEnum)) as _i7.FooEnum);
          }
          break;
        case 'fooEnumList':
          if (value != null) {
            result.fooEnumList.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i8.BuiltList, [FullType(_i7.FooEnum)]))
                as _i8.BuiltList<_i7.FooEnum>));
          }
          break;
        case 'fooEnumMap':
          if (value != null) {
            result.fooEnumMap.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i8.BuiltMap, [
                  FullType(String),
                  FullType(_i7.FooEnum)
                ])) as _i8.BuiltMap<String, _i7.FooEnum>));
          }
          break;
        case 'fooEnumSet':
          if (value != null) {
            result.fooEnumSet.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i8.BuiltList, [FullType(_i7.FooEnum)]))
                as _i8.BuiltList<_i7.FooEnum>));
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
