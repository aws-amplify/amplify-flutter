// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

// ignore_for_file: unused_element
library aws_query_v2.query_protocol.test.no_input_and_output_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v2/src/query_protocol/model/no_input_and_output_input.dart'
    as _i5;
import 'package:aws_query_v2/src/query_protocol/model/no_input_and_output_output.dart'
    as _i6;
import 'package:aws_query_v2/src/query_protocol/operation/no_input_and_output_operation.dart'
    as _i3;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QueryNoInputAndOutput (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.NoInputAndOutputOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'QueryNoInputAndOutput',
          documentation: 'No input serializes no payload',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body: 'Action=NoInputAndOutput&Version=2020-01-08',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
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
        inputSerializers: const [NoInputAndOutputInputAwsQuerySerializer()],
      );
    },
  );
  _i1.test(
    'QueryNoInputAndOutput (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.NoInputAndOutputOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryNoInputAndOutput',
          documentation: 'Empty output',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body: null,
          bodyMediaType: null,
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [NoInputAndOutputOutputAwsQuerySerializer()],
      );
    },
  );
}

class NoInputAndOutputInputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i5.NoInputAndOutputInput> {
  const NoInputAndOutputInputAwsQuerySerializer()
      : super('NoInputAndOutputInput');

  @override
  Iterable<Type> get types => const [_i5.NoInputAndOutputInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  _i5.NoInputAndOutputInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _i5.NoInputAndOutputInputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i5.NoInputAndOutputInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class NoInputAndOutputOutputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i6.NoInputAndOutputOutput> {
  const NoInputAndOutputOutputAwsQuerySerializer()
      : super('NoInputAndOutputOutput');

  @override
  Iterable<Type> get types => const [_i6.NoInputAndOutputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  _i6.NoInputAndOutputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _i6.NoInputAndOutputOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i6.NoInputAndOutputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
