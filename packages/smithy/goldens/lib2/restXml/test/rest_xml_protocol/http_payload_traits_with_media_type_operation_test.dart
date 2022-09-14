// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.http_payload_traits_with_media_type_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i6;

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_traits_with_media_type_input_output.dart'
    as _i5;
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/http_payload_traits_with_media_type_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'HttpPayloadTraitsWithMediaTypeWithBlob (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.HttpPayloadTraitsWithMediaTypeOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'HttpPayloadTraitsWithMediaTypeWithBlob',
              documentation:
                  'Serializes a blob in the HTTP payload with a content-type',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body: 'blobby blob blob',
              bodyMediaType: null,
              params: {'foo': 'Foo', 'blob': 'blobby blob blob'},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'X-Foo': 'Foo', 'Content-Type': 'text/plain'},
              forbidHeaders: [],
              requireHeaders: ['Content-Length'],
              tags: [],
              appliesTo: null,
              method: 'POST',
              uri: '/HttpPayloadTraitsWithMediaType',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            HttpPayloadTraitsWithMediaTypeInputOutputRestXmlSerializer()
          ]);
    },
  );
  _i1.test(
    'HttpPayloadTraitsWithMediaTypeWithBlob (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.HttpPayloadTraitsWithMediaTypeOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'HttpPayloadTraitsWithMediaTypeWithBlob',
              documentation:
                  'Serializes a blob in the HTTP payload with a content-type',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body: 'blobby blob blob',
              bodyMediaType: null,
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
            HttpPayloadTraitsWithMediaTypeInputOutputRestXmlSerializer()
          ]);
    },
  );
}

class HttpPayloadTraitsWithMediaTypeInputOutputRestXmlSerializer extends _i4
    .StructuredSmithySerializer<_i5.HttpPayloadTraitsWithMediaTypeInputOutput> {
  const HttpPayloadTraitsWithMediaTypeInputOutputRestXmlSerializer()
      : super('HttpPayloadTraitsWithMediaTypeInputOutput');

  @override
  Iterable<Type> get types =>
      const [_i5.HttpPayloadTraitsWithMediaTypeInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  _i5.HttpPayloadTraitsWithMediaTypeInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.HttpPayloadTraitsWithMediaTypeInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'blob':
          if (value != null) {
            result.blob = (serializers.deserialize(value,
                specifiedType: const FullType(_i6.Uint8List)) as _i6.Uint8List);
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

    result.blob ??= _i6.Uint8List(0);
    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}
