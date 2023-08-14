// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_json1_v1.rest_json_protocol.test.http_response_code_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/http_response_code_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/http_response_code_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonHttpResponseCode (response)',
    () async {
      await _i2.httpResponseTest(
        operation: HttpResponseCodeOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonHttpResponseCode',
          documentation:
              'Binds the http response code to an output structure. Note that\neven though all members are bound outside of the payload, an\nempty JSON object is serialized in the response. However,\nclients should be able to handle an empty JSON object or an\nempty payload without failing to deserialize a response.',
          protocol: _i3.ShapeId(
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
        operation: HttpResponseCodeOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonHttpResponseCodeWithNoPayload',
          documentation:
              'This test ensures that clients gracefully handle cases where\nthe service responds with no payload rather than an empty JSON\nobject.',
          protocol: _i3.ShapeId(
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
    extends _i3.StructuredSmithySerializer<HttpResponseCodeOutput> {
  const HttpResponseCodeOutputRestJson1Serializer()
      : super('HttpResponseCodeOutput');

  @override
  Iterable<Type> get types => const [HttpResponseCodeOutput];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  HttpResponseCodeOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HttpResponseCodeOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    HttpResponseCodeOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
