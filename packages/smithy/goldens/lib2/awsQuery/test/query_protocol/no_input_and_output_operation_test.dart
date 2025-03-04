// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library aws_query_v2.query_protocol.test.no_input_and_output_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v2/src/query_protocol/model/no_input_and_output_input.dart';
import 'package:aws_query_v2/src/query_protocol/model/no_input_and_output_output.dart';
import 'package:aws_query_v2/src/query_protocol/operation/no_input_and_output_operation.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QueryNoInputAndOutput (request)',
    () async {
      await _i2.httpRequestTest(
        operation: NoInputAndOutputOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'QueryNoInputAndOutput',
          documentation: 'No input serializes no payload',
          protocol: _i3.ShapeId(
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
        operation: NoInputAndOutputOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryNoInputAndOutput',
          documentation: 'Empty output',
          protocol: _i3.ShapeId(
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
    extends _i3.StructuredSmithySerializer<NoInputAndOutputInput> {
  const NoInputAndOutputInputAwsQuerySerializer()
      : super('NoInputAndOutputInput');

  @override
  Iterable<Type> get types => const [NoInputAndOutputInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];

  @override
  NoInputAndOutputInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return NoInputAndOutputInputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NoInputAndOutputInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class NoInputAndOutputOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<NoInputAndOutputOutput> {
  const NoInputAndOutputOutputAwsQuerySerializer()
      : super('NoInputAndOutputOutput');

  @override
  Iterable<Type> get types => const [NoInputAndOutputOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];

  @override
  NoInputAndOutputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return NoInputAndOutputOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NoInputAndOutputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
