// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library custom_v2.s3.test.copy_object_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:built_value/serializer.dart';
import 'package:custom_v2/src/s3/model/copy_object_error.dart' as _i10;
import 'package:custom_v2/src/s3/model/copy_object_output.dart' as _i9;
import 'package:custom_v2/src/s3/model/copy_object_request.dart' as _i7;
import 'package:custom_v2/src/s3/model/copy_object_result.dart' as _i8;
import 'package:custom_v2/src/s3/operation/copy_object_operation.dart' as _i4;
import 'package:smithy/smithy.dart' as _i6;
import 'package:smithy_aws/smithy_aws.dart' as _i2;
import 'package:smithy_test/smithy_test.dart' as _i3;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'CopyObjectSuccess (response)',
    () async {
      const s3ClientConfig = _i2.S3ClientConfig();
      await _i3.httpResponseTest(
        operation: _i4.CopyObjectOperation(
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
          id: 'CopyObjectSuccess',
          documentation:
              '    S3 clients should properly decode a successful response.\n',
          protocol: _i6.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<?xml version="1.0" encoding="UTF-8"?><CopyObjectResult><ETag>123</ETag></CopyObjectResult>',
          bodyMediaType: null,
          params: {
            'CopyObjectResult': {'ETag': '123'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          CopyObjectOutputRestXmlSerializer(),
          CopyObjectResultRestXmlSerializer(),
        ],
      );
    },
  );
  _i1.test(
    'CopyObjectErrorOnSuccess (error)',
    () async {
      const s3ClientConfig = _i2.S3ClientConfig();
      await _i3.httpErrorResponseTest<
          _i7.CopyObjectRequestPayload,
          _i7.CopyObjectRequest,
          _i8.CopyObjectResult?,
          _i9.CopyObjectOutput,
          _i10.CopyObjectError>(
        operation: _i4.CopyObjectOperation(
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
          id: 'CopyObjectErrorOnSuccess',
          documentation:
              '    S3 clients should properly decode an error response on a 200 status code.\n',
          protocol: _i6.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<?xml version="1.0" encoding="UTF-8"?><Error><Code>CopyObjectError</Code></Error>',
          bodyMediaType: null,
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        errorSerializers: const [CopyObjectErrorRestXmlSerializer()],
      );
    },
  );
}

class CopyObjectRequestRestXmlSerializer
    extends _i6.StructuredSmithySerializer<_i7.CopyObjectRequest> {
  const CopyObjectRequestRestXmlSerializer() : super('CopyObjectRequest');

  @override
  Iterable<Type> get types => const [_i7.CopyObjectRequest];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i7.CopyObjectRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i7.CopyObjectRequestBuilder();
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
        case 'CopySource':
          result.copySource = (serializers.deserialize(
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

class CopyObjectOutputRestXmlSerializer
    extends _i6.StructuredSmithySerializer<_i9.CopyObjectOutput> {
  const CopyObjectOutputRestXmlSerializer() : super('CopyObjectOutput');

  @override
  Iterable<Type> get types => const [_i9.CopyObjectOutput];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i9.CopyObjectOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i9.CopyObjectOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'CopyObjectResult':
          if (value != null) {
            result.copyObjectResult.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.CopyObjectResult),
            ) as _i8.CopyObjectResult));
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

class CopyObjectResultRestXmlSerializer
    extends _i6.StructuredSmithySerializer<_i8.CopyObjectResult> {
  const CopyObjectResultRestXmlSerializer() : super('CopyObjectResult');

  @override
  Iterable<Type> get types => const [_i8.CopyObjectResult];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i8.CopyObjectResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i8.CopyObjectResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ETag':
          if (value != null) {
            result.eTag = (serializers.deserialize(
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

class CopyObjectErrorRestXmlSerializer
    extends _i6.StructuredSmithySerializer<_i10.CopyObjectError> {
  const CopyObjectErrorRestXmlSerializer() : super('CopyObjectError');

  @override
  Iterable<Type> get types => const [_i10.CopyObjectError];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i10.CopyObjectError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _i10.CopyObjectErrorBuilder().build();
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
