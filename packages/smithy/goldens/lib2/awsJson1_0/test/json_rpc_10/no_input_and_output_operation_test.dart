// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library aws_json1_0_v2.json_rpc_10.test.no_input_and_output_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_0_v2/src/json_rpc_10/model/no_input_and_output_output.dart'
    as _i5;
import 'package:aws_json1_0_v2/src/json_rpc_10/operation/no_input_and_output_operation.dart'
    as _i3;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AwsJson10NoInputAndOutput (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.NoInputAndOutputOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsJson10NoInputAndOutput',
          documentation:
              'A client should always send and empty JSON object payload.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.NoInputAndOutput',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/',
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
    'AwsJson10NoInputAndOutput (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.NoInputAndOutputOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10NoInputAndOutput',
          documentation:
              'Empty output always serializes an empty object payload.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [NoInputAndOutputOutputAwsJson10Serializer()],
      );
    },
  );
}

class NoInputAndOutputOutputAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<_i5.NoInputAndOutputOutput> {
  const NoInputAndOutputOutputAwsJson10Serializer()
      : super('NoInputAndOutputOutput');

  @override
  Iterable<Type> get types => const [_i5.NoInputAndOutputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
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
