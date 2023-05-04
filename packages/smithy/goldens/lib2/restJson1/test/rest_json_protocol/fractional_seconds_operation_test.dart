// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.fractional_seconds_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/fractional_seconds_output.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_protocol/operation/fractional_seconds_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonDateTimeWithFractionalSeconds (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.FractionalSecondsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonDateTimeWithFractionalSeconds',
          documentation:
              'Ensures that clients can correctly parse datetime timestamps with fractional seconds',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body:
              '      {\n          "datetime": "2000-01-02T20:34:56.123Z"\n      }\n',
          bodyMediaType: 'application/json',
          params: {'datetime': 946845296.123},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 200,
        ),
        outputSerializers: const [FractionalSecondsOutputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonHttpDateWithFractionalSeconds (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.FractionalSecondsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonHttpDateWithFractionalSeconds',
          documentation:
              'Ensures that clients can correctly parse http-date timestamps with fractional seconds',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body:
              '      {\n          "httpdate": "Sun, 02 Jan 2000 20:34:56.456 GMT"\n      }\n',
          bodyMediaType: 'application/json',
          params: {'httpdate': 946845296.456},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 200,
        ),
        outputSerializers: const [FractionalSecondsOutputRestJson1Serializer()],
      );
    },
  );
}

class FractionalSecondsOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.FractionalSecondsOutput> {
  const FractionalSecondsOutputRestJson1Serializer()
      : super('FractionalSecondsOutput');

  @override
  Iterable<Type> get types => const [_i5.FractionalSecondsOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.FractionalSecondsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.FractionalSecondsOutputBuilder();
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
          result.datetime = _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'httpdate':
          result.httpdate = _i4.TimestampSerializer.epochSeconds.deserialize(
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
