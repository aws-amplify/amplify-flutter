// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1.rest_json_protocol.test.ignore_query_params_in_response_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json_protocol/model/ignore_query_params_in_response_output.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_protocol/operation/ignore_query_params_in_response_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonIgnoreQueryParamsInResponse (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.IgnoreQueryParamsInResponseOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonIgnoreQueryParamsInResponse',
              documentation:
                  'Query parameters must be ignored when serializing the output\nof an operation. As of January 2021, server implementations\nare expected to respond with a JSON object regardless of\nif the output parameters are empty.',
              protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '{}',
              bodyMediaType: 'application/json',
              params: {},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/json'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [
            IgnoreQueryParamsInResponseOutputRestJson1Serializer()
          ]);
    },
  );
  _i1.test(
    'RestJsonIgnoreQueryParamsInResponseNoPayload (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.IgnoreQueryParamsInResponseOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonIgnoreQueryParamsInResponseNoPayload',
              documentation:
                  'This test is similar to RestJsonIgnoreQueryParamsInResponse,\nbut it ensures that clients gracefully handle responses from\nthe server that do not serialize an empty JSON object.',
              protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
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
              code: 200),
          outputSerializers: const [
            IgnoreQueryParamsInResponseOutputRestJson1Serializer()
          ]);
    },
  );
}

class IgnoreQueryParamsInResponseOutputRestJson1Serializer extends _i4
    .StructuredSmithySerializer<_i5.IgnoreQueryParamsInResponseOutput> {
  const IgnoreQueryParamsInResponseOutputRestJson1Serializer()
      : super('IgnoreQueryParamsInResponseOutput');

  @override
  Iterable<Type> get types => const [_i5.IgnoreQueryParamsInResponseOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i5.IgnoreQueryParamsInResponseOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.IgnoreQueryParamsInResponseOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'baz':
          if (value != null) {
            result.baz = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
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
