// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library aws_json1_0_v1.json_rpc_10.test.json_unions_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_0_v1/src/json_rpc_10/model/json_unions_input.dart'
    as _i5;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/json_unions_output.dart'
    as _i7;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/my_union.dart' as _i6;
import 'package:aws_json1_0_v1/src/json_rpc_10/operation/json_unions_operation.dart'
    as _i3;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AwsJson10SerializeStringUnionValue (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsJson10SerializeStringUnionValue',
          documentation: 'Serializes a string union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{\n    "contents": {\n        "stringValue": "foo"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'stringValue': 'foo'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.JsonUnions',
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
        inputSerializers: const [JsonUnionsInputAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10SerializeBooleanUnionValue (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsJson10SerializeBooleanUnionValue',
          documentation: 'Serializes a boolean union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{\n    "contents": {\n        "booleanValue": true\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'booleanValue': true}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.JsonUnions',
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
        inputSerializers: const [JsonUnionsInputAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10SerializeNumberUnionValue (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsJson10SerializeNumberUnionValue',
          documentation: 'Serializes a number union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{\n    "contents": {\n        "numberValue": 1\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'numberValue': 1}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.JsonUnions',
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
        inputSerializers: const [JsonUnionsInputAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10SerializeBlobUnionValue (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsJson10SerializeBlobUnionValue',
          documentation: 'Serializes a blob union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{\n    "contents": {\n        "blobValue": "Zm9v"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'blobValue': 'foo'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.JsonUnions',
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
        inputSerializers: const [JsonUnionsInputAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10SerializeTimestampUnionValue (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsJson10SerializeTimestampUnionValue',
          documentation: 'Serializes a timestamp union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body:
              '{\n    "contents": {\n        "timestampValue": 1398796238\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'timestampValue': 1398796238}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.JsonUnions',
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
        inputSerializers: const [JsonUnionsInputAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10SerializeEnumUnionValue (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsJson10SerializeEnumUnionValue',
          documentation: 'Serializes an enum union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{\n    "contents": {\n        "enumValue": "Foo"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'enumValue': 'Foo'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.JsonUnions',
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
        inputSerializers: const [JsonUnionsInputAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10SerializeListUnionValue (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsJson10SerializeListUnionValue',
          documentation: 'Serializes a list union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body:
              '{\n    "contents": {\n        "listValue": ["foo", "bar"]\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {
              'listValue': [
                'foo',
                'bar',
              ]
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.JsonUnions',
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
        inputSerializers: const [JsonUnionsInputAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10SerializeMapUnionValue (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsJson10SerializeMapUnionValue',
          documentation: 'Serializes a map union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body:
              '{\n    "contents": {\n        "mapValue": {\n            "foo": "bar",\n            "spam": "eggs"\n        }\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {
              'mapValue': {
                'foo': 'bar',
                'spam': 'eggs',
              }
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.JsonUnions',
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
        inputSerializers: const [JsonUnionsInputAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10SerializeStructureUnionValue (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsJson10SerializeStructureUnionValue',
          documentation: 'Serializes a structure union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body:
              '{\n    "contents": {\n        "structureValue": {\n            "hi": "hello"\n        }\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {
              'structureValue': {'hi': 'hello'}
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.JsonUnions',
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
        inputSerializers: const [JsonUnionsInputAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10DeserializeStringUnionValue (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10DeserializeStringUnionValue',
          documentation: 'Deserializes a string union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{\n    "contents": {\n        "stringValue": "foo"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'stringValue': 'foo'}
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
        outputSerializers: const [JsonUnionsOutputAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10DeserializeBooleanUnionValue (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10DeserializeBooleanUnionValue',
          documentation: 'Deserializes a boolean union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{\n    "contents": {\n        "booleanValue": true\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'booleanValue': true}
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
        outputSerializers: const [JsonUnionsOutputAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10DeserializeNumberUnionValue (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10DeserializeNumberUnionValue',
          documentation: 'Deserializes a number union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{\n    "contents": {\n        "numberValue": 1\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'numberValue': 1}
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
        outputSerializers: const [JsonUnionsOutputAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10DeserializeBlobUnionValue (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10DeserializeBlobUnionValue',
          documentation: 'Deserializes a blob union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{\n    "contents": {\n        "blobValue": "Zm9v"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'blobValue': 'foo'}
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
        outputSerializers: const [JsonUnionsOutputAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10DeserializeTimestampUnionValue (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10DeserializeTimestampUnionValue',
          documentation: 'Deserializes a timestamp union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body:
              '{\n    "contents": {\n        "timestampValue": 1398796238\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'timestampValue': 1398796238}
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
        outputSerializers: const [JsonUnionsOutputAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10DeserializeEnumUnionValue (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10DeserializeEnumUnionValue',
          documentation: 'Deserializes an enum union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{\n    "contents": {\n        "enumValue": "Foo"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'enumValue': 'Foo'}
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
        outputSerializers: const [JsonUnionsOutputAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10DeserializeListUnionValue (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10DeserializeListUnionValue',
          documentation: 'Deserializes a list union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body:
              '{\n    "contents": {\n        "listValue": ["foo", "bar"]\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {
              'listValue': [
                'foo',
                'bar',
              ]
            }
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
        outputSerializers: const [JsonUnionsOutputAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10DeserializeMapUnionValue (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10DeserializeMapUnionValue',
          documentation: 'Deserializes a map union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body:
              '{\n    "contents": {\n        "mapValue": {\n            "foo": "bar",\n            "spam": "eggs"\n        }\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {
              'mapValue': {
                'foo': 'bar',
                'spam': 'eggs',
              }
            }
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
        outputSerializers: const [JsonUnionsOutputAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10DeserializeStructureUnionValue (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10DeserializeStructureUnionValue',
          documentation: 'Deserializes a structure union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body:
              '{\n    "contents": {\n        "structureValue": {\n            "hi": "hello"\n        }\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {
              'structureValue': {'hi': 'hello'}
            }
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
        outputSerializers: const [JsonUnionsOutputAwsJson10Serializer()],
      );
    },
  );
}

class JsonUnionsInputAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<_i5.JsonUnionsInput> {
  const JsonUnionsInputAwsJson10Serializer() : super('JsonUnionsInput');

  @override
  Iterable<Type> get types => const [_i5.JsonUnionsInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  _i5.JsonUnionsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.JsonUnionsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'contents':
          if (value != null) {
            result.contents = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.MyUnion),
            ) as _i6.MyUnion);
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

class JsonUnionsOutputAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<_i7.JsonUnionsOutput> {
  const JsonUnionsOutputAwsJson10Serializer() : super('JsonUnionsOutput');

  @override
  Iterable<Type> get types => const [_i7.JsonUnionsOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  _i7.JsonUnionsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i7.JsonUnionsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'contents':
          if (value != null) {
            result.contents = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.MyUnion),
            ) as _i6.MyUnion);
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
