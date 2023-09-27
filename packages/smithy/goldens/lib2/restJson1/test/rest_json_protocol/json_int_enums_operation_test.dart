// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.json_int_enums_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/integer_enum.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_int_enums_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/operation/json_int_enums_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonJsonIntEnums (request)',
    () async {
      await _i2.httpRequestTest(
        operation: JsonIntEnumsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonJsonIntEnums',
          documentation: 'Serializes intEnums as integers',
          protocol: _i3.ShapeId(
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
        operation: JsonIntEnumsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonJsonIntEnums',
          documentation: 'Serializes intEnums as integers',
          protocol: _i3.ShapeId(
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
    extends _i3.StructuredSmithySerializer<JsonIntEnumsInputOutput> {
  const JsonIntEnumsInputOutputRestJson1Serializer()
      : super('JsonIntEnumsInputOutput');

  @override
  Iterable<Type> get types => const [JsonIntEnumsInputOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  JsonIntEnumsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonIntEnumsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'integerEnum1':
          result.integerEnum1 = (serializers.deserialize(
            value,
            specifiedType: const FullType(IntegerEnum),
          ) as IntegerEnum);
        case 'integerEnum2':
          result.integerEnum2 = (serializers.deserialize(
            value,
            specifiedType: const FullType(IntegerEnum),
          ) as IntegerEnum);
        case 'integerEnum3':
          result.integerEnum3 = (serializers.deserialize(
            value,
            specifiedType: const FullType(IntegerEnum),
          ) as IntegerEnum);
        case 'integerEnumList':
          result.integerEnumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(IntegerEnum)],
            ),
          ) as _i4.BuiltList<IntegerEnum>));
        case 'integerEnumSet':
          result.integerEnumSet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltSet,
              [FullType(IntegerEnum)],
            ),
          ) as _i4.BuiltSet<IntegerEnum>));
        case 'integerEnumMap':
          result.integerEnumMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(IntegerEnum),
              ],
            ),
          ) as _i4.BuiltMap<String, IntegerEnum>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    JsonIntEnumsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
