// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v1.rest_json_protocol.test.query_idempotency_token_auto_fill_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/query_idempotency_token_auto_fill_input.dart'
    as _i5;
import 'package:rest_json1_v1/src/rest_json_protocol/operation/query_idempotency_token_auto_fill_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('RestJsonQueryIdempotencyTokenAutoFill (request)', () async {
    await _i2.httpRequestTest(
      operation: _i3.QueryIdempotencyTokenAutoFillOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'RestJsonQueryIdempotencyTokenAutoFill',
        documentation: 'Automatically adds idempotency token when not set',
        protocol: _i4.ShapeId(
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
        operation: _i3.QueryIdempotencyTokenAutoFillOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonQueryIdempotencyTokenAutoFillIsSet',
          documentation: 'Uses the given idempotency token as-is',
          protocol: _i4.ShapeId(
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

class QueryIdempotencyTokenAutoFillInputRestJson1Serializer extends _i4
    .StructuredSmithySerializer<_i5.QueryIdempotencyTokenAutoFillInput> {
  const QueryIdempotencyTokenAutoFillInputRestJson1Serializer()
      : super('QueryIdempotencyTokenAutoFillInput');

  @override
  Iterable<Type> get types => const [_i5.QueryIdempotencyTokenAutoFillInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.QueryIdempotencyTokenAutoFillInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.QueryIdempotencyTokenAutoFillInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'token':
          if (value != null) {
            result.token = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
