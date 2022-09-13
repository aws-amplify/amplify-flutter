// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1.rest_json_protocol.test.streaming_traits_with_media_type_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i6;

import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json_protocol/model/streaming_traits_with_media_type_input_output.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_protocol/operation/streaming_traits_with_media_type_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonStreamingTraitsWithMediaTypeWithBlob (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.StreamingTraitsWithMediaTypeOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestJsonStreamingTraitsWithMediaTypeWithBlob',
              documentation:
                  'Serializes a blob in the HTTP payload with a content-type',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: 'blobby blob blob',
              bodyMediaType: 'application/octet-stream',
              params: {'foo': 'Foo', 'blob': 'blobby blob blob'},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'X-Foo': 'Foo', 'Content-Type': 'text/plain'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'POST',
              uri: '/StreamingTraitsWithMediaType',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            StreamingTraitsWithMediaTypeInputOutputRestJson1Serializer()
          ]);
    },
  );
  _i1.test(
    'RestJsonStreamingTraitsWithMediaTypeWithBlob (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.StreamingTraitsWithMediaTypeOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonStreamingTraitsWithMediaTypeWithBlob',
              documentation:
                  'Serializes a blob in the HTTP payload with a content-type',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: 'blobby blob blob',
              bodyMediaType: 'application/octet-stream',
              params: {'foo': 'Foo', 'blob': 'blobby blob blob'},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'X-Foo': 'Foo', 'Content-Type': 'text/plain'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [
            StreamingTraitsWithMediaTypeInputOutputRestJson1Serializer()
          ]);
    },
  );
}

class StreamingTraitsWithMediaTypeInputOutputRestJson1Serializer extends _i4
    .StructuredSmithySerializer<_i5.StreamingTraitsWithMediaTypeInputOutput> {
  const StreamingTraitsWithMediaTypeInputOutputRestJson1Serializer()
      : super('StreamingTraitsWithMediaTypeInputOutput');

  @override
  Iterable<Type> get types =>
      const [_i5.StreamingTraitsWithMediaTypeInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i5.StreamingTraitsWithMediaTypeInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.StreamingTraitsWithMediaTypeInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'blob':
          if (value != null) {
            result.blob = (serializers.deserialize(value,
                specifiedType: const FullType(_i6.Stream, [
                  FullType(List, [FullType(int)])
                ])) as _i6.Stream<List<int>>);
          }
          break;
        case 'foo':
          if (value != null) {
            result.foo = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    result.blob ??= const _i6.Stream.empty();
    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}
