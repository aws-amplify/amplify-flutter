// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.query_params_as_string_list_map_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/query_params_as_string_list_map_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/operation/query_params_as_string_list_map_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonQueryParamsStringListMap (request)',
    () async {
      await _i2.httpRequestTest(
        operation: QueryParamsAsStringListMapOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonQueryParamsStringListMap',
          documentation: 'Serialize query params from map of list strings',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'qux': 'named',
            'foo': {
              'baz': [
                'bar',
                'qux',
              ]
            },
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          method: 'POST',
          uri: '/StringListMap',
          host: null,
          resolvedHost: null,
          queryParams: [
            'corge=named',
            'baz=bar',
            'baz=qux',
          ],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          QueryParamsAsStringListMapInputRestJson1Serializer()
        ],
      );
    },
  );
}

class QueryParamsAsStringListMapInputRestJson1Serializer
    extends _i3.StructuredSmithySerializer<QueryParamsAsStringListMapInput> {
  const QueryParamsAsStringListMapInputRestJson1Serializer()
      : super('QueryParamsAsStringListMapInput');

  @override
  Iterable<Type> get types => const [QueryParamsAsStringListMapInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  QueryParamsAsStringListMapInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryParamsAsStringListMapInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'qux':
          result.qux = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'foo':
          result.foo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltListMultimap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i4.BuiltListMultimap<String, String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    QueryParamsAsStringListMapInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
