// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v1.rest_json_protocol.test.http_request_with_labels_and_timestamp_format_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/http_request_with_labels_and_timestamp_format_input.dart'
    as _i5;
import 'package:rest_json1_v1/src/rest_json_protocol/operation/http_request_with_labels_and_timestamp_format_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonHttpRequestWithLabelsAndTimestampFormat (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.HttpRequestWithLabelsAndTimestampFormatOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonHttpRequestWithLabelsAndTimestampFormat',
          documentation: 'Serializes different timestamp formats in URI labels',
          protocol: _i4.ShapeId(
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
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri:
              '/HttpRequestWithLabelsAndTimestampFormat/1576540098/Mon%2C%2016%20Dec%202019%2023%3A48%3A18%20GMT/2019-12-16T23%3A48%3A18Z/2019-12-16T23%3A48%3A18Z/1576540098/Mon%2C%2016%20Dec%202019%2023%3A48%3A18%20GMT/2019-12-16T23%3A48%3A18Z',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          HttpRequestWithLabelsAndTimestampFormatInputRestJson1Serializer()
        ],
      );
    },
  );
}

class HttpRequestWithLabelsAndTimestampFormatInputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<
        _i5.HttpRequestWithLabelsAndTimestampFormatInput> {
  const HttpRequestWithLabelsAndTimestampFormatInputRestJson1Serializer()
      : super('HttpRequestWithLabelsAndTimestampFormatInput');

  @override
  Iterable<Type> get types =>
      const [_i5.HttpRequestWithLabelsAndTimestampFormatInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.HttpRequestWithLabelsAndTimestampFormatInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.HttpRequestWithLabelsAndTimestampFormatInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'defaultFormat':
          result.defaultFormat =
              _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value!,
          );
          break;
        case 'memberDateTime':
          result.memberDateTime =
              _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value!,
          );
          break;
        case 'memberEpochSeconds':
          result.memberEpochSeconds =
              _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value!,
          );
          break;
        case 'memberHttpDate':
          result.memberHttpDate =
              _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value!,
          );
          break;
        case 'targetDateTime':
          result.targetDateTime =
              _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value!,
          );
          break;
        case 'targetEpochSeconds':
          result.targetEpochSeconds =
              _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value!,
          );
          break;
        case 'targetHttpDate':
          result.targetHttpDate =
              _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value!,
          );
          break;
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
