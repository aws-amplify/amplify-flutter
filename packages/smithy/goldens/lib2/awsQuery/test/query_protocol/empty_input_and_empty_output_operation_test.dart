// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

// ignore_for_file: unused_element
library aws_query_v2.query_protocol.test.empty_input_and_empty_output_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v2/src/query_protocol/model/empty_input_and_empty_output_input.dart'
    as _i5;
import 'package:aws_query_v2/src/query_protocol/model/empty_input_and_empty_output_output.dart'
    as _i6;
import 'package:aws_query_v2/src/query_protocol/operation/empty_input_and_empty_output_operation.dart'
    as _i3;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QueryEmptyInputAndEmptyOutput (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.EmptyInputAndEmptyOutputOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'QueryEmptyInputAndEmptyOutput',
          documentation: 'Empty input serializes no extra query params',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body: 'Action=EmptyInputAndEmptyOutput&Version=2020-01-08',
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
        inputSerializers: const [
          EmptyInputAndEmptyOutputInputAwsQuerySerializer()
        ],
      );
    },
  );
  _i1.test(
    'QueryEmptyInputAndEmptyOutput (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.EmptyInputAndEmptyOutputOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryEmptyInputAndEmptyOutput',
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
        outputSerializers: const [
          EmptyInputAndEmptyOutputOutputAwsQuerySerializer()
        ],
      );
    },
  );
}

class EmptyInputAndEmptyOutputInputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i5.EmptyInputAndEmptyOutputInput> {
  const EmptyInputAndEmptyOutputInputAwsQuerySerializer()
      : super('EmptyInputAndEmptyOutputInput');

  @override
  Iterable<Type> get types => const [_i5.EmptyInputAndEmptyOutputInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
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
    _i5.EmptyInputAndEmptyOutputInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class EmptyInputAndEmptyOutputOutputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i6.EmptyInputAndEmptyOutputOutput> {
  const EmptyInputAndEmptyOutputOutputAwsQuerySerializer()
      : super('EmptyInputAndEmptyOutputOutput');

  @override
  Iterable<Type> get types => const [_i6.EmptyInputAndEmptyOutputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
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
    _i6.EmptyInputAndEmptyOutputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
