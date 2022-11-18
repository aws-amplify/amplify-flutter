// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v1.rest_json_protocol.test.empty_input_and_empty_output_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/empty_input_and_empty_output_input.dart'
    as _i5;
import 'package:rest_json1_v1/src/rest_json_protocol/model/empty_input_and_empty_output_output.dart'
    as _i6;
import 'package:rest_json1_v1/src/rest_json_protocol/operation/empty_input_and_empty_output_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonEmptyInputAndEmptyOutput (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.EmptyInputAndEmptyOutputOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonEmptyInputAndEmptyOutput',
          documentation:
              'Clients should not serialize a JSON payload when no parameters\nare given that are sent in the body. A service will tolerate\nclients that omit a payload or that send a JSON object.',
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
          uri: '/EmptyInputAndEmptyOutput',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          EmptyInputAndEmptyOutputInputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonEmptyInputAndEmptyOutput (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.EmptyInputAndEmptyOutputOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonEmptyInputAndEmptyOutput',
          documentation:
              'As of January 2021, server implementations are expected to\nrespond with a JSON object regardless of if the output\nparameters are empty.',
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
        outputSerializers: const [
          EmptyInputAndEmptyOutputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonEmptyInputAndEmptyOutputJsonObjectOutput (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.EmptyInputAndEmptyOutputOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonEmptyInputAndEmptyOutputJsonObjectOutput',
          documentation:
              'This test ensures that clients can gracefully handle\nsituations where a service omits a JSON payload entirely.',
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
        outputSerializers: const [
          EmptyInputAndEmptyOutputOutputRestJson1Serializer()
        ],
      );
    },
  );
}

class EmptyInputAndEmptyOutputInputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.EmptyInputAndEmptyOutputInput> {
  const EmptyInputAndEmptyOutputInputRestJson1Serializer()
      : super('EmptyInputAndEmptyOutputInput');

  @override
  Iterable<Type> get types => const [_i5.EmptyInputAndEmptyOutputInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.EmptyInputAndEmptyOutputInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _i5.EmptyInputAndEmptyOutputInputBuilder().build();
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

class EmptyInputAndEmptyOutputOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i6.EmptyInputAndEmptyOutputOutput> {
  const EmptyInputAndEmptyOutputOutputRestJson1Serializer()
      : super('EmptyInputAndEmptyOutputOutput');

  @override
  Iterable<Type> get types => const [_i6.EmptyInputAndEmptyOutputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i6.EmptyInputAndEmptyOutputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _i6.EmptyInputAndEmptyOutputOutputBuilder().build();
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
