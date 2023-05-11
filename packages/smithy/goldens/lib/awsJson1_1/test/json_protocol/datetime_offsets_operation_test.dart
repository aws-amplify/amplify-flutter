// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

// ignore_for_file: unused_element
library aws_json1_1_v1.json_protocol.test.datetime_offsets_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_1_v1/src/json_protocol/model/datetime_offsets_output.dart'
    as _i6;
import 'package:aws_json1_1_v1/src/json_protocol/operation/datetime_offsets_operation.dart'
    as _i3;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AwsJson11DateTimeWithNegativeOffset (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.DatetimeOffsetsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
          credentialsProvider:
              const _i4.AWSCredentialsProvider(_i4.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson11DateTimeWithNegativeOffset',
          documentation:
              'Ensures that clients can correctly parse datetime (timestamps) with offsets',
          protocol: _i5.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_1',
          ),
          authScheme: null,
          body:
              '      {\n          "datetime": "2019-12-16T22:48:18-01:00"\n      }\n',
          bodyMediaType: 'application/json',
          params: {'datetime': 1576540098},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 200,
        ),
        outputSerializers: const [DatetimeOffsetsOutputAwsJson11Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson11DateTimeWithPositiveOffset (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.DatetimeOffsetsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
          credentialsProvider:
              const _i4.AWSCredentialsProvider(_i4.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson11DateTimeWithPositiveOffset',
          documentation:
              'Ensures that clients can correctly parse datetime (timestamps) with offsets',
          protocol: _i5.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_1',
          ),
          authScheme: null,
          body:
              '      {\n          "datetime": "2019-12-17T00:48:18+01:00"\n      }\n',
          bodyMediaType: 'application/json',
          params: {'datetime': 1576540098},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 200,
        ),
        outputSerializers: const [DatetimeOffsetsOutputAwsJson11Serializer()],
      );
    },
  );
}

class DatetimeOffsetsOutputAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<_i6.DatetimeOffsetsOutput> {
  const DatetimeOffsetsOutputAwsJson11Serializer()
      : super('DatetimeOffsetsOutput');

  @override
  Iterable<Type> get types => const [_i6.DatetimeOffsetsOutput];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  _i6.DatetimeOffsetsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i6.DatetimeOffsetsOutputBuilder();
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
          result.datetime = _i5.TimestampSerializer.epochSeconds.deserialize(
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
    _i6.DatetimeOffsetsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
