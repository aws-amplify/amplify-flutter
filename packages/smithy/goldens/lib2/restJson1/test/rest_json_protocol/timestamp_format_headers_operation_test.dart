// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.timestamp_format_headers_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/timestamp_format_headers_io.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/operation/timestamp_format_headers_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonTimestampFormatHeaders (request)',
    () async {
      await _i2.httpRequestTest(
        operation: TimestampFormatHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonTimestampFormatHeaders',
          documentation: 'Tests how timestamp request headers are serialized',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'memberEpochSeconds': 1576540098,
            'memberHttpDate': 1576540098,
            'memberDateTime': 1576540098,
            'defaultFormat': 1576540098,
            'targetEpochSeconds': 1576540098,
            'targetHttpDate': 1576540098,
            'targetDateTime': 1576540098,
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-memberEpochSeconds': '1576540098',
            'X-memberHttpDate': 'Mon, 16 Dec 2019 23:48:18 GMT',
            'X-memberDateTime': '2019-12-16T23:48:18Z',
            'X-defaultFormat': 'Mon, 16 Dec 2019 23:48:18 GMT',
            'X-targetEpochSeconds': '1576540098',
            'X-targetHttpDate': 'Mon, 16 Dec 2019 23:48:18 GMT',
            'X-targetDateTime': '2019-12-16T23:48:18Z',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/TimestampFormatHeaders',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [TimestampFormatHeadersIoRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonTimestampFormatHeaders (response)',
    () async {
      await _i2.httpResponseTest(
        operation: TimestampFormatHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonTimestampFormatHeaders',
          documentation: 'Tests how timestamp response headers are serialized',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: null,
          bodyMediaType: null,
          params: {
            'memberEpochSeconds': 1576540098,
            'memberHttpDate': 1576540098,
            'memberDateTime': 1576540098,
            'defaultFormat': 1576540098,
            'targetEpochSeconds': 1576540098,
            'targetHttpDate': 1576540098,
            'targetDateTime': 1576540098,
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-memberEpochSeconds': '1576540098',
            'X-memberHttpDate': 'Mon, 16 Dec 2019 23:48:18 GMT',
            'X-memberDateTime': '2019-12-16T23:48:18Z',
            'X-defaultFormat': 'Mon, 16 Dec 2019 23:48:18 GMT',
            'X-targetEpochSeconds': '1576540098',
            'X-targetHttpDate': 'Mon, 16 Dec 2019 23:48:18 GMT',
            'X-targetDateTime': '2019-12-16T23:48:18Z',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          TimestampFormatHeadersIoRestJson1Serializer()
        ],
      );
    },
  );
}

class TimestampFormatHeadersIoRestJson1Serializer
    extends _i3.StructuredSmithySerializer<TimestampFormatHeadersIo> {
  const TimestampFormatHeadersIoRestJson1Serializer()
      : super('TimestampFormatHeadersIo');

  @override
  Iterable<Type> get types => const [TimestampFormatHeadersIo];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  TimestampFormatHeadersIo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimestampFormatHeadersIoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'memberEpochSeconds':
          result.memberEpochSeconds =
              _i3.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'memberHttpDate':
          result.memberHttpDate =
              _i3.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'memberDateTime':
          result.memberDateTime =
              _i3.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'defaultFormat':
          result.defaultFormat =
              _i3.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'targetEpochSeconds':
          result.targetEpochSeconds =
              _i3.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'targetHttpDate':
          result.targetHttpDate =
              _i3.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'targetDateTime':
          result.targetDateTime =
              _i3.TimestampSerializer.epochSeconds.deserialize(
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
    TimestampFormatHeadersIo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
