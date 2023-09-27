// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_json1_v1.rest_json_protocol.test.constant_query_string_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/constant_query_string_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/constant_query_string_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonConstantQueryString (request)',
    () async {
      await _i2.httpRequestTest(
        operation: ConstantQueryStringOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonConstantQueryString',
          documentation: 'Includes constant query string parameters',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'hello': 'hi'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/ConstantQueryString/hi',
          host: null,
          resolvedHost: null,
          queryParams: [
            'foo=bar',
            'hello',
          ],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [ConstantQueryStringInputRestJson1Serializer()],
      );
    },
  );
}

class ConstantQueryStringInputRestJson1Serializer
    extends _i3.StructuredSmithySerializer<ConstantQueryStringInput> {
  const ConstantQueryStringInputRestJson1Serializer()
      : super('ConstantQueryStringInput');

  @override
  Iterable<Type> get types => const [ConstantQueryStringInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  ConstantQueryStringInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConstantQueryStringInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'hello':
          result.hello = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ConstantQueryStringInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
