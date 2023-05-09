// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.timestamp_format_headers_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/timestamp_format_headers_io.dart'
    as _i5;
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/timestamp_format_headers_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'TimestampFormatHeaders (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.TimestampFormatHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'TimestampFormatHeaders',
          documentation: 'Tests how timestamp request headers are serialized',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
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
        inputSerializers: const [TimestampFormatHeadersIoRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'TimestampFormatHeaders (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.TimestampFormatHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'TimestampFormatHeaders',
          documentation: 'Tests how timestamp response headers are serialized',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
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
          code: 200,
        ),
        outputSerializers: const [TimestampFormatHeadersIoRestXmlSerializer()],
      );
    },
  );
}

class TimestampFormatHeadersIoRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i5.TimestampFormatHeadersIo> {
  const TimestampFormatHeadersIoRestXmlSerializer()
      : super('TimestampFormatHeadersIo');

  @override
  Iterable<Type> get types => const [_i5.TimestampFormatHeadersIo];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i5.TimestampFormatHeadersIo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.TimestampFormatHeadersIoBuilder();
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
              _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'memberHttpDate':
          result.memberHttpDate =
              _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'memberDateTime':
          result.memberDateTime =
              _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'defaultFormat':
          result.defaultFormat =
              _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'targetEpochSeconds':
          result.targetEpochSeconds =
              _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'targetHttpDate':
          result.targetHttpDate =
              _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'targetDateTime':
          result.targetDateTime =
              _i4.TimestampSerializer.epochSeconds.deserialize(
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
    _i5.TimestampFormatHeadersIo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
