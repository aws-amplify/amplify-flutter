// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_json1_v1.rest_json_protocol.test.streaming_traits_require_length_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/streaming_traits_require_length_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/streaming_traits_require_length_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonStreamingTraitsRequireLengthWithBlob (request)',
    () async {
      await _i2.httpRequestTest(
        operation: StreamingTraitsRequireLengthOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonStreamingTraitsRequireLengthWithBlob',
          documentation:
              'Serializes a blob in the HTTP payload with a required length',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: 'blobby blob blob',
          bodyMediaType: 'application/octet-stream',
          params: {
            'foo': 'Foo',
            'blob': 'blobby blob blob',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-Foo': 'Foo',
            'Content-Type': 'application/octet-stream',
          },
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/StreamingTraitsRequireLength',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          StreamingTraitsRequireLengthInputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonStreamingTraitsRequireLengthWithNoBlobBody (request)',
    () async {
      await _i2.httpRequestTest(
        operation: StreamingTraitsRequireLengthOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonStreamingTraitsRequireLengthWithNoBlobBody',
          documentation: 'Serializes an empty blob in the HTTP payload',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: 'application/octet-stream',
          params: {'foo': 'Foo'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'X-Foo': 'Foo'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/StreamingTraitsRequireLength',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          StreamingTraitsRequireLengthInputRestJson1Serializer()
        ],
      );
    },
  );
}

class StreamingTraitsRequireLengthInputRestJson1Serializer
    extends _i3.StructuredSmithySerializer<StreamingTraitsRequireLengthInput> {
  const StreamingTraitsRequireLengthInputRestJson1Serializer()
      : super('StreamingTraitsRequireLengthInput');

  @override
  Iterable<Type> get types => const [StreamingTraitsRequireLengthInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  StreamingTraitsRequireLengthInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StreamingTraitsRequireLengthInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'foo':
          result.foo = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'blob':
          result.blob = (serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.Stream,
              [
                FullType(
                  List,
                  [FullType(int)],
                )
              ],
            ),
          ) as _i4.Stream<List<int>>);
      }
    }

    result.blob ??= const _i4.Stream.empty();
    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StreamingTraitsRequireLengthInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
