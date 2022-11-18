// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.http_response_code_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_response_code_output.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_protocol/operation/http_response_code_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonHttpResponseCode (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.HttpResponseCodeOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonHttpResponseCode',
          documentation:
              'Binds the http response code to an output structure. Note that\neven though all members are bound outside of the payload, an\nempty JSON object is serialized in the response. However,\nclients should be able to handle an empty JSON object or an\nempty payload without failing to deserialize a response.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{}',
          bodyMediaType: 'application/json',
          params: {'Status': 201},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 201,
        ),
        outputSerializers: const [HttpResponseCodeOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonHttpResponseCodeWithNoPayload (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.HttpResponseCodeOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonHttpResponseCodeWithNoPayload',
          documentation:
              'This test ensures that clients gracefully handle cases where\nthe service responds with no payload rather than an empty JSON\nobject.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'Status': 201},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 201,
        ),
        outputSerializers: const [HttpResponseCodeOutputRestJson1Serializer()],
      );
    },
  );
}

class HttpResponseCodeOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.HttpResponseCodeOutput> {
  const HttpResponseCodeOutputRestJson1Serializer()
      : super('HttpResponseCodeOutput');

  @override
  Iterable<Type> get types => const [_i5.HttpResponseCodeOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.HttpResponseCodeOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.HttpResponseCodeOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
