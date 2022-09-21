// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v1.rest_json_protocol.test.json_unions_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/my_union.dart'
    as _i6;
import 'package:rest_json1_v1/src/rest_json_protocol/model/union_input_output.dart'
    as _i5;
import 'package:rest_json1_v1/src/rest_json_protocol/operation/json_unions_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonSerializeStringUnionValue (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonSerializeStringUnionValue',
          documentation: 'Serializes a string union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "contents": {\n        "stringValue": "foo"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'stringValue': 'foo'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/JsonUnions',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [UnionInputOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonSerializeBooleanUnionValue (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonSerializeBooleanUnionValue',
          documentation: 'Serializes a boolean union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "contents": {\n        "booleanValue": true\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'booleanValue': true}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/JsonUnions',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [UnionInputOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonSerializeNumberUnionValue (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonSerializeNumberUnionValue',
          documentation: 'Serializes a number union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "contents": {\n        "numberValue": 1\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'numberValue': 1}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/JsonUnions',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [UnionInputOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonSerializeBlobUnionValue (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonSerializeBlobUnionValue',
          documentation: 'Serializes a blob union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "contents": {\n        "blobValue": "Zm9v"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'blobValue': 'foo'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/JsonUnions',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [UnionInputOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonSerializeTimestampUnionValue (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonSerializeTimestampUnionValue',
          documentation: 'Serializes a timestamp union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
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
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/JsonUnions',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [UnionInputOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonSerializeEnumUnionValue (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonSerializeEnumUnionValue',
          documentation: 'Serializes an enum union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "contents": {\n        "enumValue": "Foo"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'enumValue': 'Foo'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/JsonUnions',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [UnionInputOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonSerializeListUnionValue (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonSerializeListUnionValue',
          documentation: 'Serializes a list union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
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
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/JsonUnions',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [UnionInputOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonSerializeMapUnionValue (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonSerializeMapUnionValue',
          documentation: 'Serializes a map union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
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
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/JsonUnions',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [UnionInputOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonSerializeStructureUnionValue (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonSerializeStructureUnionValue',
          documentation: 'Serializes a structure union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
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
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/JsonUnions',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [UnionInputOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonSerializeRenamedStructureUnionValue (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonSerializeRenamedStructureUnionValue',
          documentation: 'Serializes a renamed structure union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body:
              '{\n    "contents": {\n        "renamedStructureValue": {\n            "salutation": "hello!"\n        }\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {
              'renamedStructureValue': {'salutation': 'hello!'}
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/JsonUnions',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [UnionInputOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonDeserializeStringUnionValue (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonDeserializeStringUnionValue',
          documentation: 'Deserializes a string union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "contents": {\n        "stringValue": "foo"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'stringValue': 'foo'}
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
        outputSerializers: const [UnionInputOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonDeserializeBooleanUnionValue (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonDeserializeBooleanUnionValue',
          documentation: 'Deserializes a boolean union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "contents": {\n        "booleanValue": true\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'booleanValue': true}
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
        outputSerializers: const [UnionInputOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonDeserializeNumberUnionValue (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonDeserializeNumberUnionValue',
          documentation: 'Deserializes a number union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "contents": {\n        "numberValue": 1\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'numberValue': 1}
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
        outputSerializers: const [UnionInputOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonDeserializeBlobUnionValue (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonDeserializeBlobUnionValue',
          documentation: 'Deserializes a blob union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "contents": {\n        "blobValue": "Zm9v"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'blobValue': 'foo'}
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
        outputSerializers: const [UnionInputOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonDeserializeTimestampUnionValue (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonDeserializeTimestampUnionValue',
          documentation: 'Deserializes a timestamp union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
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
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [UnionInputOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonDeserializeEnumUnionValue (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonDeserializeEnumUnionValue',
          documentation: 'Deserializes an enum union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "contents": {\n        "enumValue": "Foo"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'enumValue': 'Foo'}
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
        outputSerializers: const [UnionInputOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonDeserializeListUnionValue (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonDeserializeListUnionValue',
          documentation: 'Deserializes a list union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
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
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [UnionInputOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonDeserializeMapUnionValue (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonDeserializeMapUnionValue',
          documentation: 'Deserializes a map union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
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
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [UnionInputOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonDeserializeStructureUnionValue (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonUnionsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonDeserializeStructureUnionValue',
          documentation: 'Deserializes a structure union value',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
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
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [UnionInputOutputRestJson1Serializer()],
      );
    },
  );
}

class UnionInputOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.UnionInputOutput> {
  const UnionInputOutputRestJson1Serializer() : super('UnionInputOutput');

  @override
  Iterable<Type> get types => const [_i5.UnionInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.UnionInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.UnionInputOutputBuilder();
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
