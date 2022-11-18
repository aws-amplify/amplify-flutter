// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library aws_json1_1_v2.json_protocol.test.put_and_get_inline_documents_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_1_v2/src/json_protocol/model/put_and_get_inline_documents_input_output.dart'
    as _i6;
import 'package:aws_json1_1_v2/src/json_protocol/operation/put_and_get_inline_documents_operation.dart'
    as _i3;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:built_value/json_object.dart' as _i7;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'PutAndGetInlineDocumentsInput (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.PutAndGetInlineDocumentsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
          credentialsProvider:
              const _i4.AWSCredentialsProvider(_i4.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'PutAndGetInlineDocumentsInput',
          documentation: 'Serializes inline documents in a JSON request.',
          protocol: _i5.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_1',
          ),
          authScheme: null,
          body: '{\n    "inlineDocument": {"foo": "bar"}\n}',
          bodyMediaType: 'application/json',
          params: {
            'inlineDocument': {'foo': 'bar'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.1',
            'X-Amz-Target': 'JsonProtocol.PutAndGetInlineDocuments',
          },
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          PutAndGetInlineDocumentsInputOutputAwsJson11Serializer()
        ],
      );
    },
  );
  _i1.test(
    'PutAndGetInlineDocumentsInput (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.PutAndGetInlineDocumentsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
          credentialsProvider:
              const _i4.AWSCredentialsProvider(_i4.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'PutAndGetInlineDocumentsInput',
          documentation: 'Serializes inline documents in a JSON response.',
          protocol: _i5.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_1',
          ),
          authScheme: null,
          body: '{\n    "inlineDocument": {"foo": "bar"}\n}',
          bodyMediaType: 'application/json',
          params: {
            'inlineDocument': {'foo': 'bar'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          PutAndGetInlineDocumentsInputOutputAwsJson11Serializer()
        ],
      );
    },
  );
}

class PutAndGetInlineDocumentsInputOutputAwsJson11Serializer extends _i5
    .StructuredSmithySerializer<_i6.PutAndGetInlineDocumentsInputOutput> {
  const PutAndGetInlineDocumentsInputOutputAwsJson11Serializer()
      : super('PutAndGetInlineDocumentsInputOutput');

  @override
  Iterable<Type> get types => const [_i6.PutAndGetInlineDocumentsInputOutput];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  _i6.PutAndGetInlineDocumentsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i6.PutAndGetInlineDocumentsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'inlineDocument':
          if (value != null) {
            result.inlineDocument = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.JsonObject),
            ) as _i7.JsonObject);
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
