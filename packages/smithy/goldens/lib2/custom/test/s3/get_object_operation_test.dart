// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library custom_v2.s3.test.get_object_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i6;

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:custom_v2/src/s3/model/get_object_output.dart';
import 'package:custom_v2/src/s3/model/get_object_request.dart';
import 'package:custom_v2/src/s3/operation/get_object_operation.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smithy_aws/smithy_aws.dart' as _i2;
import 'package:smithy_test/smithy_test.dart' as _i3;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'GetObjectFullResponse (response)',
    () async {
      const s3ClientConfig = _i2.S3ClientConfig();
      await _i3.httpResponseTest(
        operation: GetObjectOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
          s3ClientConfig: s3ClientConfig,
          credentialsProvider:
              const _i4.AWSCredentialsProvider(_i4.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i3.HttpResponseTestCase(
          id: 'GetObjectFullResponse',
          documentation:
              '    S3 clients should properly decode a full response (as indicated by a 200 status code).\n',
          protocol: _i5.ShapeId(
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
        operation: GetObjectOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
          s3ClientConfig: s3ClientConfig,
          credentialsProvider:
              const _i4.AWSCredentialsProvider(_i4.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i3.HttpResponseTestCase(
          id: 'GetObjectPartialResponse',
          documentation:
              '    S3 clients should properly decode a partial response (as indicated by a 206 status code).\n',
          protocol: _i5.ShapeId(
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
    extends _i5.StructuredSmithySerializer<GetObjectRequest> {
  const GetObjectRequestRestXmlSerializer() : super('GetObjectRequest');

  @override
  Iterable<Type> get types => const [GetObjectRequest];

  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  GetObjectRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetObjectRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Bucket':
          result.bucket = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Key':
          result.key = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Range':
          result.range = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetObjectRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class GetObjectOutputRestXmlSerializer
    extends _i5.StructuredSmithySerializer<GetObjectOutput> {
  const GetObjectOutputRestXmlSerializer() : super('GetObjectOutput');

  @override
  Iterable<Type> get types => const [GetObjectOutput];

  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  GetObjectOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetObjectOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Body':
          result.body = (serializers.deserialize(
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
        case 'ContentLength':
          result.contentLength = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ContentRange':
          result.contentRange = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    result.body ??= const _i6.Stream.empty();
    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetObjectOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
