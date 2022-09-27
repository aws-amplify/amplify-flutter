// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.no_input_and_output_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/no_input_and_output_output.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_protocol/operation/no_input_and_output_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonNoInputAndOutput (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.NoInputAndOutputOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonNoInputAndOutput',
          documentation:
              'No input serializes no payload. When clients do not need to\nserialize any data in the payload, they should omit a payload\naltogether.',
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
          appliesTo: null,
          method: 'POST',
          uri: '/NoInputAndOutputOutput',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [],
      );
    },
  );
  _i1.test(
    'RestJsonNoInputAndOutputWithJson (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.NoInputAndOutputOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonNoInputAndOutputWithJson',
          documentation:
              'Operations that define output and do not bind anything to\nthe payload return a JSON object in the response.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
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
          code: 200,
        ),
        outputSerializers: const [NoInputAndOutputOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonNoInputAndOutputNoPayload (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.NoInputAndOutputOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonNoInputAndOutputNoPayload',
          documentation:
              'This test is similar to RestJsonNoInputAndOutputWithJson, but\nit ensures that clients can gracefully handle responses that\nomit a JSON payload.',
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
          code: 200,
        ),
        outputSerializers: const [NoInputAndOutputOutputRestJson1Serializer()],
      );
    },
  );
}

class NoInputAndOutputOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.NoInputAndOutputOutput> {
  const NoInputAndOutputOutputRestJson1Serializer()
      : super('NoInputAndOutputOutput');

  @override
  Iterable<Type> get types => const [_i5.NoInputAndOutputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.NoInputAndOutputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _i5.NoInputAndOutputOutputBuilder().build();
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
