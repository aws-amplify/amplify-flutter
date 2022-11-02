// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library custom_v2.s3.test.get_object_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:built_value/serializer.dart';
import 'package:custom_v2/src/s3/model/get_object_output.dart' as _i8;
import 'package:custom_v2/src/s3/model/get_object_request.dart' as _i7;
import 'package:custom_v2/src/s3/operation/get_object_operation.dart' as _i4;
import 'package:smithy/smithy.dart' as _i6;
import 'package:smithy_aws/smithy_aws.dart' as _i2;
import 'package:smithy_test/smithy_test.dart' as _i3;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'GetObjectFullResponse (response)',
    () async {
      const s3ClientConfig = _i2.S3ClientConfig();
      await _i3.httpResponseTest(
        operation: _i4.GetObjectOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
          s3ClientConfig: s3ClientConfig,
          credentialsProvider:
              const _i5.AWSCredentialsProvider(_i5.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i3.HttpResponseTestCase(
          id: 'GetObjectFullResponse',
          documentation:
              '    S3 clients should properly decode a full response (as indicated by a 200 status code).\n',
          protocol: _i6.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: 'hello, world',
          bodyMediaType: null,
          params: {
            'Body': 'aGVsbG8sIHdvcmxk',
            'ContentLength': 12,
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Length': '12'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [GetObjectOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'GetObjectPartialResponse (response)',
    () async {
      const s3ClientConfig = _i2.S3ClientConfig();
      await _i3.httpResponseTest(
        operation: _i4.GetObjectOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
          s3ClientConfig: s3ClientConfig,
          credentialsProvider:
              const _i5.AWSCredentialsProvider(_i5.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i3.HttpResponseTestCase(
          id: 'GetObjectPartialResponse',
          documentation:
              '    S3 clients should properly decode a partial response (as indicated by a 206 status code).\n',
          protocol: _i6.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: 'hello',
          bodyMediaType: null,
          params: {
            'Body': 'aGVsbG8=',
            'ContentLength': 5,
            'ContentRange': 'bytes 0-5/12',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Length': '5',
            'Content-Range': 'bytes 0-5/12',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 206,
        ),
        outputSerializers: const [GetObjectOutputRestXmlSerializer()],
      );
    },
  );
}

class GetObjectRequestRestXmlSerializer
    extends _i6.StructuredSmithySerializer<_i7.GetObjectRequest> {
  const GetObjectRequestRestXmlSerializer() : super('GetObjectRequest');

  @override
  Iterable<Type> get types => const [_i7.GetObjectRequest];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i7.GetObjectRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i7.GetObjectRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Bucket':
          result.bucket = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Key':
          result.key = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Range':
          if (value != null) {
            result.range = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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

class GetObjectOutputRestXmlSerializer
    extends _i6.StructuredSmithySerializer<_i8.GetObjectOutput> {
  const GetObjectOutputRestXmlSerializer() : super('GetObjectOutput');

  @override
  Iterable<Type> get types => const [_i8.GetObjectOutput];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i8.GetObjectOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i8.GetObjectOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Body':
          if (value != null) {
            result.body = (serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i9.Stream,
                [
                  FullType(
                    List,
                    [FullType(int)],
                  )
                ],
              ),
            ) as _i9.Stream<List<int>>);
          }
          break;
        case 'ContentLength':
          if (value != null) {
            result.contentLength = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'ContentRange':
          if (value != null) {
            result.contentRange = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    result.body ??= const _i9.Stream.empty();
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
