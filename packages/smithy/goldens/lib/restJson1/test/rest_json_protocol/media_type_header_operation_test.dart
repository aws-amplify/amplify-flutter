// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v1.rest_json_protocol.test.media_type_header_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/media_type_header_input.dart'
    as _i5;
import 'package:rest_json1_v1/src/rest_json_protocol/model/media_type_header_output.dart'
    as _i6;
import 'package:rest_json1_v1/src/rest_json_protocol/operation/media_type_header_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'MediaTypeHeaderInputBase64 (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.MediaTypeHeaderOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'MediaTypeHeaderInputBase64',
          documentation:
              'Headers that target strings with a mediaType are base64 encoded',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'json': 'true'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'X-Json': 'dHJ1ZQ=='},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/MediaTypeHeader',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [MediaTypeHeaderInputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'MediaTypeHeaderOutputBase64 (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.MediaTypeHeaderOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'MediaTypeHeaderOutputBase64',
          documentation:
              'Headers that target strings with a mediaType are base64 encoded',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: null,
          bodyMediaType: null,
          params: {'json': 'true'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'X-Json': 'dHJ1ZQ=='},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [MediaTypeHeaderOutputRestJson1Serializer()],
      );
    },
  );
}

class MediaTypeHeaderInputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.MediaTypeHeaderInput> {
  const MediaTypeHeaderInputRestJson1Serializer()
      : super('MediaTypeHeaderInput');

  @override
  Iterable<Type> get types => const [_i5.MediaTypeHeaderInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.MediaTypeHeaderInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.MediaTypeHeaderInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'json':
          if (value != null) {
            result.json = const _i4.EncodedJsonObjectSerializer().deserialize(
              serializers,
              value,
            );
          }
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

class MediaTypeHeaderOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i6.MediaTypeHeaderOutput> {
  const MediaTypeHeaderOutputRestJson1Serializer()
      : super('MediaTypeHeaderOutput');

  @override
  Iterable<Type> get types => const [_i6.MediaTypeHeaderOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i6.MediaTypeHeaderOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i6.MediaTypeHeaderOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'json':
          if (value != null) {
            result.json = const _i4.EncodedJsonObjectSerializer().deserialize(
              serializers,
              value,
            );
          }
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
