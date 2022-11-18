// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.json_int_enums_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/integer_enum.dart'
    as _i6;
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_int_enums_input_output.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_protocol/operation/json_int_enums_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonJsonIntEnums (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonIntEnumsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonJsonIntEnums',
          documentation: 'Serializes intEnums as integers',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body:
              '{\n    "integerEnum1": 1,\n    "integerEnum2": 2,\n    "integerEnum3": 3,\n    "integerEnumList": [\n        1,\n        2,\n        3\n    ],\n    "integerEnumSet": [\n        1,\n        2\n    ],\n    "integerEnumMap": {\n        "abc": 1,\n        "def": 2\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'integerEnum1': 1,
            'integerEnum2': 2,
            'integerEnum3': 3,
            'integerEnumList': [
              1,
              2,
              3,
            ],
            'integerEnumSet': [
              1,
              2,
            ],
            'integerEnumMap': {
              'abc': 1,
              'def': 2,
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
          uri: '/JsonIntEnums',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [JsonIntEnumsInputOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonJsonIntEnums (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonIntEnumsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonJsonIntEnums',
          documentation: 'Serializes intEnums as integers',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body:
              '{\n    "integerEnum1": 1,\n    "integerEnum2": 2,\n    "integerEnum3": 3,\n    "integerEnumList": [\n        1,\n        2,\n        3\n    ],\n    "integerEnumSet": [\n        1,\n        2\n    ],\n    "integerEnumMap": {\n        "abc": 1,\n        "def": 2\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'integerEnum1': 1,
            'integerEnum2': 2,
            'integerEnum3': 3,
            'integerEnumList': [
              1,
              2,
              3,
            ],
            'integerEnumSet': [
              1,
              2,
            ],
            'integerEnumMap': {
              'abc': 1,
              'def': 2,
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
        outputSerializers: const [JsonIntEnumsInputOutputRestJson1Serializer()],
      );
    },
  );
}

class JsonIntEnumsInputOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.JsonIntEnumsInputOutput> {
  const JsonIntEnumsInputOutputRestJson1Serializer()
      : super('JsonIntEnumsInputOutput');

  @override
  Iterable<Type> get types => const [_i5.JsonIntEnumsInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.JsonIntEnumsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.JsonIntEnumsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'integerEnum1':
          if (value != null) {
            result.integerEnum1 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.IntegerEnum),
            ) as _i6.IntegerEnum);
          }
          break;
        case 'integerEnum2':
          if (value != null) {
            result.integerEnum2 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.IntegerEnum),
            ) as _i6.IntegerEnum);
          }
          break;
        case 'integerEnum3':
          if (value != null) {
            result.integerEnum3 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.IntegerEnum),
            ) as _i6.IntegerEnum);
          }
          break;
        case 'integerEnumList':
          if (value != null) {
            result.integerEnumList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(_i6.IntegerEnum)],
              ),
            ) as _i7.BuiltList<_i6.IntegerEnum>));
          }
          break;
        case 'integerEnumMap':
          if (value != null) {
            result.integerEnumMap.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltMap,
                [
                  FullType(String),
                  FullType(_i6.IntegerEnum),
                ],
              ),
            ) as _i7.BuiltMap<String, _i6.IntegerEnum>));
          }
          break;
        case 'integerEnumSet':
          if (value != null) {
            result.integerEnumSet.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltSet,
                [FullType(_i6.IntegerEnum)],
              ),
            ) as _i7.BuiltSet<_i6.IntegerEnum>));
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
