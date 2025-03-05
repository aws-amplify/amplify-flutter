// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_json1_v1.rest_json_protocol.test.query_idempotency_token_auto_fill_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/query_idempotency_token_auto_fill_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/query_idempotency_token_auto_fill_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('RestJsonQueryIdempotencyTokenAutoFill (request)', () async {
    await _i2.httpRequestTest(
      operation: QueryIdempotencyTokenAutoFillOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'RestJsonQueryIdempotencyTokenAutoFill',
        documentation: 'Automatically adds idempotency token when not set',
        protocol: _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        ),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        method: 'POST',
        uri: '/QueryIdempotencyTokenAutoFill',
        host: null,
        resolvedHost: null,
        queryParams: ['token=00000000-0000-4000-8000-000000000000'],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        QueryIdempotencyTokenAutoFillInputRestJson1Serializer()
      ],
    );
  }, skip: 'bool.fromEnvironment is not working in tests for some reason');
  _i1.test(
    'RestJsonQueryIdempotencyTokenAutoFillIsSet (request)',
    () async {
      await _i2.httpRequestTest(
        operation: QueryIdempotencyTokenAutoFillOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonQueryIdempotencyTokenAutoFillIsSet',
          documentation: 'Uses the given idempotency token as-is',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'token': '00000000-0000-4000-8000-000000000000'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          method: 'POST',
          uri: '/QueryIdempotencyTokenAutoFill',
          host: null,
          resolvedHost: null,
          queryParams: ['token=00000000-0000-4000-8000-000000000000'],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          QueryIdempotencyTokenAutoFillInputRestJson1Serializer()
        ],
      );
    },
  );
}

class QueryIdempotencyTokenAutoFillInputRestJson1Serializer
    extends _i3.StructuredSmithySerializer<QueryIdempotencyTokenAutoFillInput> {
  const QueryIdempotencyTokenAutoFillInputRestJson1Serializer()
      : super('QueryIdempotencyTokenAutoFillInput');

  @override
  Iterable<Type> get types => const [QueryIdempotencyTokenAutoFillInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  QueryIdempotencyTokenAutoFillInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryIdempotencyTokenAutoFillInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'token':
          result.token = (serializers.deserialize(
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
    QueryIdempotencyTokenAutoFillInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
