// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library aws_query_v2.query_protocol.test.query_timestamps_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v2/src/query_protocol/model/query_timestamps_input.dart';
import 'package:aws_query_v2/src/query_protocol/operation/query_timestamps_operation.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QueryTimestampsInput (request)',
    () async {
      await _i2.httpRequestTest(
        operation: QueryTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'QueryTimestampsInput',
          documentation: 'Serializes timestamps',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              'Action=QueryTimestamps&Version=2020-01-08&normalFormat=2015-01-25T08%3A00%3A00Z&epochMember=1422172800&epochTarget=1422172800',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {
            'normalFormat': 1422172800,
            'epochMember': 1422172800,
            'epochTarget': 1422172800,
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
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
        inputSerializers: const [QueryTimestampsInputAwsQuerySerializer()],
      );
    },
  );
}

class QueryTimestampsInputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<QueryTimestampsInput> {
  const QueryTimestampsInputAwsQuerySerializer()
      : super('QueryTimestampsInput');

  @override
  Iterable<Type> get types => const [QueryTimestampsInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];

  @override
  QueryTimestampsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryTimestampsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'normalFormat':
          result.normalFormat =
              _i3.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'epochMember':
          result.epochMember = _i3.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'epochTarget':
          result.epochTarget = _i3.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    QueryTimestampsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
