// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

// ignore_for_file: unused_element
library rest_json1_v1.rest_json_protocol.test.http_payload_traits_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i6;

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/http_payload_traits_input_output.dart'
    as _i5;
import 'package:rest_json1_v1/src/rest_json_protocol/operation/http_payload_traits_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonHttpPayloadTraitsWithBlob (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.HttpPayloadTraitsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonHttpPayloadTraitsWithBlob',
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
            'Content-Type': 'application/octet-stream',
            'X-Foo': 'Foo',
          },
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/HttpPayloadTraits',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          HttpPayloadTraitsInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonHttpPayloadTraitsWithNoBlobBody (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.HttpPayloadTraitsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonHttpPayloadTraitsWithNoBlobBody',
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
          uri: '/HttpPayloadTraits',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          HttpPayloadTraitsInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonHttpPayloadTraitsWithBlob (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.HttpPayloadTraitsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonHttpPayloadTraitsWithBlob',
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
          headers: {'X-Foo': 'Foo'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          HttpPayloadTraitsInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonHttpPayloadTraitsWithNoBlobBody (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.HttpPayloadTraitsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonHttpPayloadTraitsWithNoBlobBody',
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
          HttpPayloadTraitsInputOutputRestJson1Serializer()
        ],
      );
    },
  );
}

class HttpPayloadTraitsInputOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.HttpPayloadTraitsInputOutput> {
  const HttpPayloadTraitsInputOutputRestJson1Serializer()
      : super('HttpPayloadTraitsInputOutput');

  @override
  Iterable<Type> get types => const [_i5.HttpPayloadTraitsInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.HttpPayloadTraitsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.HttpPayloadTraitsInputOutputBuilder();
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
            specifiedType: const FullType(_i6.Uint8List),
          ) as _i6.Uint8List);
      }
    }

    result.blob ??= _i6.Uint8List(0);
    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i5.HttpPayloadTraitsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
