// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_json1_v1.rest_json_protocol.test.media_type_header_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/media_type_header_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/media_type_header_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/media_type_header_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'MediaTypeHeaderInputBase64 (request)',
    () async {
      await _i2.httpRequestTest(
        operation: MediaTypeHeaderOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'MediaTypeHeaderInputBase64',
          documentation:
              'Headers that target strings with a mediaType are base64 encoded',
          protocol: _i3.ShapeId(
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
        operation: MediaTypeHeaderOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'MediaTypeHeaderOutputBase64',
          documentation:
              'Headers that target strings with a mediaType are base64 encoded',
          protocol: _i3.ShapeId(
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
    extends _i3.StructuredSmithySerializer<MediaTypeHeaderInput> {
  const MediaTypeHeaderInputRestJson1Serializer()
      : super('MediaTypeHeaderInput');

  @override
  Iterable<Type> get types => const [MediaTypeHeaderInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  MediaTypeHeaderInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaTypeHeaderInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'json':
          result.json = const _i3.EncodedJsonObjectSerializer().deserialize(
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
    MediaTypeHeaderInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class MediaTypeHeaderOutputRestJson1Serializer
    extends _i3.StructuredSmithySerializer<MediaTypeHeaderOutput> {
  const MediaTypeHeaderOutputRestJson1Serializer()
      : super('MediaTypeHeaderOutput');

  @override
  Iterable<Type> get types => const [MediaTypeHeaderOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  MediaTypeHeaderOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaTypeHeaderOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'json':
          result.json = const _i3.EncodedJsonObjectSerializer().deserialize(
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
    MediaTypeHeaderOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
