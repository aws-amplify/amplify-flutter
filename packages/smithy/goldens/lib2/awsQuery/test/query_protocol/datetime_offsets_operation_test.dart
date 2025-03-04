// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library aws_query_v2.query_protocol.test.datetime_offsets_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v2/src/query_protocol/model/datetime_offsets_output.dart';
import 'package:aws_query_v2/src/query_protocol/operation/datetime_offsets_operation.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AwsQueryDateTimeWithNegativeOffset (response)',
    () async {
      await _i2.httpResponseTest(
        operation: DatetimeOffsetsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsQueryDateTimeWithNegativeOffset',
          documentation:
              'Ensures that clients can correctly parse datetime (timestamps) with offsets',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<DatetimeOffsetsResponse xmlns="https://example.com/">\n    <DatetimeOffsetsResult>\n        <datetime>2019-12-16T22:48:18-01:00</datetime>\n    </DatetimeOffsetsResult>\n</DatetimeOffsetsResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'datetime': 1576540098},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 200,
        ),
        outputSerializers: const [DatetimeOffsetsOutputAwsQuerySerializer()],
      );
    },
  );
  _i1.test(
    'AwsQueryDateTimeWithPositiveOffset (response)',
    () async {
      await _i2.httpResponseTest(
        operation: DatetimeOffsetsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsQueryDateTimeWithPositiveOffset',
          documentation:
              'Ensures that clients can correctly parse datetime (timestamps) with offsets',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<DatetimeOffsetsResponse xmlns="https://example.com/">\n    <DatetimeOffsetsResult>\n        <datetime>2019-12-17T00:48:18+01:00</datetime>\n    </DatetimeOffsetsResult>\n</DatetimeOffsetsResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'datetime': 1576540098},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 200,
        ),
        outputSerializers: const [DatetimeOffsetsOutputAwsQuerySerializer()],
      );
    },
  );
}

class DatetimeOffsetsOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<DatetimeOffsetsOutput> {
  const DatetimeOffsetsOutputAwsQuerySerializer()
      : super('DatetimeOffsetsOutput');

  @override
  Iterable<Type> get types => const [DatetimeOffsetsOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];

  @override
  DatetimeOffsetsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DatetimeOffsetsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'datetime':
          result.datetime = _i3.TimestampSerializer.epochSeconds.deserialize(
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
    DatetimeOffsetsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
