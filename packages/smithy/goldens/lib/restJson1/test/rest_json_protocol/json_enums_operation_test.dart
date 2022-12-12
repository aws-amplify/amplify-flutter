// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v1.rest_json_protocol.test.json_enums_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/foo_enum.dart'
    as _i6;
import 'package:rest_json1_v1/src/rest_json_protocol/model/json_enums_input_output.dart'
    as _i5;
import 'package:rest_json1_v1/src/rest_json_protocol/operation/json_enums_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonJsonEnums (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonEnumsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonJsonEnums',
          documentation: 'Serializes simple scalar properties',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body:
              '{\n    "fooEnum1": "Foo",\n    "fooEnum2": "0",\n    "fooEnum3": "1",\n    "fooEnumList": [\n        "Foo",\n        "0"\n    ],\n    "fooEnumSet": [\n        "Foo",\n        "0"\n    ],\n    "fooEnumMap": {\n        "hi": "Foo",\n        "zero": "0"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'fooEnum1': 'Foo',
            'fooEnum2': '0',
            'fooEnum3': '1',
            'fooEnumList': [
              'Foo',
              '0',
            ],
            'fooEnumSet': [
              'Foo',
              '0',
            ],
            'fooEnumMap': {
              'hi': 'Foo',
              'zero': '0',
            },
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/JsonEnums',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [JsonEnumsInputOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonJsonEnums (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonEnumsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonJsonEnums',
          documentation: 'Serializes simple scalar properties',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body:
              '{\n    "fooEnum1": "Foo",\n    "fooEnum2": "0",\n    "fooEnum3": "1",\n    "fooEnumList": [\n        "Foo",\n        "0"\n    ],\n    "fooEnumSet": [\n        "Foo",\n        "0"\n    ],\n    "fooEnumMap": {\n        "hi": "Foo",\n        "zero": "0"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'fooEnum1': 'Foo',
            'fooEnum2': '0',
            'fooEnum3': '1',
            'fooEnumList': [
              'Foo',
              '0',
            ],
            'fooEnumSet': [
              'Foo',
              '0',
            ],
            'fooEnumMap': {
              'hi': 'Foo',
              'zero': '0',
            },
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
        outputSerializers: const [JsonEnumsInputOutputRestJson1Serializer()],
      );
    },
  );
}

class JsonEnumsInputOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.JsonEnumsInputOutput> {
  const JsonEnumsInputOutputRestJson1Serializer()
      : super('JsonEnumsInputOutput');

  @override
  Iterable<Type> get types => const [_i5.JsonEnumsInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.JsonEnumsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.JsonEnumsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'fooEnum1':
          if (value != null) {
            result.fooEnum1 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.FooEnum),
            ) as _i6.FooEnum);
          }
          break;
        case 'fooEnum2':
          if (value != null) {
            result.fooEnum2 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.FooEnum),
            ) as _i6.FooEnum);
          }
          break;
        case 'fooEnum3':
          if (value != null) {
            result.fooEnum3 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.FooEnum),
            ) as _i6.FooEnum);
          }
          break;
        case 'fooEnumList':
          if (value != null) {
            result.fooEnumList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(_i6.FooEnum)],
              ),
            ) as _i7.BuiltList<_i6.FooEnum>));
          }
          break;
        case 'fooEnumMap':
          if (value != null) {
            result.fooEnumMap.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltMap,
                [
                  FullType(String),
                  FullType(_i6.FooEnum),
                ],
              ),
            ) as _i7.BuiltMap<String, _i6.FooEnum>));
          }
          break;
        case 'fooEnumSet':
          if (value != null) {
            result.fooEnumSet.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltSet,
                [FullType(_i6.FooEnum)],
              ),
            ) as _i7.BuiltSet<_i6.FooEnum>));
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
