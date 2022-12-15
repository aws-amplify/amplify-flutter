// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.streaming_traits_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i6;

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/streaming_traits_input_output.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_protocol/operation/streaming_traits_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonStreamingTraitsWithBlob (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.StreamingTraitsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonStreamingTraitsWithBlob',
          documentation: 'Serializes a blob in the HTTP payload',
          protocol: _i4.ShapeId(
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
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/StreamingTraits',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          StreamingTraitsInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonStreamingTraitsWithNoBlobBody (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.StreamingTraitsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonStreamingTraitsWithNoBlobBody',
          documentation: 'Serializes an empty blob in the HTTP payload',
          protocol: _i4.ShapeId(
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
          uri: '/StreamingTraits',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          StreamingTraitsInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonStreamingTraitsWithBlob (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.StreamingTraitsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonStreamingTraitsWithBlob',
          documentation: 'Serializes a blob in the HTTP payload',
          protocol: _i4.ShapeId(
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
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          StreamingTraitsInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonStreamingTraitsWithNoBlobBody (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.StreamingTraitsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonStreamingTraitsWithNoBlobBody',
          documentation: 'Serializes an empty blob in the HTTP payload',
          protocol: _i4.ShapeId(
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
          code: 200,
        ),
        outputSerializers: const [
          StreamingTraitsInputOutputRestJson1Serializer()
        ],
      );
    },
  );
}

class StreamingTraitsInputOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.StreamingTraitsInputOutput> {
  const StreamingTraitsInputOutputRestJson1Serializer()
      : super('StreamingTraitsInputOutput');

  @override
  Iterable<Type> get types => const [_i5.StreamingTraitsInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.StreamingTraitsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.StreamingTraitsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'blob':
          if (value != null) {
            result.blob = (serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.Stream,
                [
                  FullType(
                    List,
                    [FullType(int)],
                  )
                ],
              ),
            ) as _i6.Stream<List<int>>);
          }
          break;
        case 'foo':
          if (value != null) {
            result.foo = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    result.blob ??= const _i6.Stream.empty();
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
