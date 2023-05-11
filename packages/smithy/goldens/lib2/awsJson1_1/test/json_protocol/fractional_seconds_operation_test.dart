// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

// ignore_for_file: unused_element
library aws_json1_1_v2.json_protocol.test.fractional_seconds_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_1_v2/src/json_protocol/model/fractional_seconds_output.dart'
    as _i6;
import 'package:aws_json1_1_v2/src/json_protocol/operation/fractional_seconds_operation.dart'
    as _i3;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AwsJson11DateTimeWithFractionalSeconds (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.FractionalSecondsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
          credentialsProvider:
              const _i4.AWSCredentialsProvider(_i4.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson11DateTimeWithFractionalSeconds',
          documentation:
              'Ensures that clients can correctly parse datetime timestamps with fractional seconds',
          protocol: _i5.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_1',
          ),
          authScheme: null,
          body:
              '      {\n          "datetime": "2000-01-02T20:34:56.123Z"\n      }\n',
          bodyMediaType: 'application/json',
          params: {'datetime': 946845296.123},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 200,
        ),
        outputSerializers: const [FractionalSecondsOutputAwsJson11Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson11HttpDateWithFractionalSeconds (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.FractionalSecondsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
          credentialsProvider:
              const _i4.AWSCredentialsProvider(_i4.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson11HttpDateWithFractionalSeconds',
          documentation:
              'Ensures that clients can correctly parse http-date timestamps with fractional seconds',
          protocol: _i5.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_1',
          ),
          authScheme: null,
          body:
              '      {\n          "httpdate": "Sun, 02 Jan 2000 20:34:56.456 GMT"\n      }\n',
          bodyMediaType: 'application/json',
          params: {'httpdate': 946845296.456},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 200,
        ),
        outputSerializers: const [FractionalSecondsOutputAwsJson11Serializer()],
      );
    },
  );
}

class FractionalSecondsOutputAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<_i6.FractionalSecondsOutput> {
  const FractionalSecondsOutputAwsJson11Serializer()
      : super('FractionalSecondsOutput');

  @override
  Iterable<Type> get types => const [_i6.FractionalSecondsOutput];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  _i6.FractionalSecondsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i6.FractionalSecondsOutputBuilder();
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
        case 'httpdate':
          result.httpdate = _i5.TimestampSerializer.epochSeconds.deserialize(
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
    _i6.FractionalSecondsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
