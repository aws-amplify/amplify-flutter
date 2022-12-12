// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.document_type_as_payload_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/json_object.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/document_type_as_payload_input_output.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_protocol/operation/document_type_as_payload_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'DocumentTypeAsPayloadInput (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.DocumentTypeAsPayloadOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'DocumentTypeAsPayloadInput',
          documentation:
              'Serializes a document as the target of the httpPayload trait.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "foo": "bar"\n}',
          bodyMediaType: 'application/json',
          params: {
            'documentValue': {'foo': 'bar'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/DocumentTypeAsPayload',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          DocumentTypeAsPayloadInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'DocumentTypeAsPayloadInputString (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.DocumentTypeAsPayloadOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'DocumentTypeAsPayloadInputString',
          documentation:
              'Serializes a document as the target of the httpPayload trait using a string.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '"hello"',
          bodyMediaType: 'application/json',
          params: {'documentValue': 'hello'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/DocumentTypeAsPayload',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          DocumentTypeAsPayloadInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'DocumentTypeAsPayloadOutput (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.DocumentTypeAsPayloadOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'DocumentTypeAsPayloadOutput',
          documentation:
              'Serializes a document as the target of the httpPayload trait.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "foo": "bar"\n}',
          bodyMediaType: 'application/json',
          params: {
            'documentValue': {'foo': 'bar'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          DocumentTypeAsPayloadInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'DocumentTypeAsPayloadOutputString (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.DocumentTypeAsPayloadOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'DocumentTypeAsPayloadOutputString',
          documentation: 'Serializes a document as a payload string.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '"hello"',
          bodyMediaType: 'application/json',
          params: {'documentValue': 'hello'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          DocumentTypeAsPayloadInputOutputRestJson1Serializer()
        ],
      );
    },
  );
}

class DocumentTypeAsPayloadInputOutputRestJson1Serializer extends _i4
    .StructuredSmithySerializer<_i5.DocumentTypeAsPayloadInputOutput> {
  const DocumentTypeAsPayloadInputOutputRestJson1Serializer()
      : super('DocumentTypeAsPayloadInputOutput');

  @override
  Iterable<Type> get types => const [_i5.DocumentTypeAsPayloadInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.DocumentTypeAsPayloadInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.DocumentTypeAsPayloadInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'documentValue':
          if (value != null) {
            result.documentValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.JsonObject),
            ) as _i6.JsonObject);
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
