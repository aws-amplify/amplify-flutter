// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library custom_v2.s3.test.copy_object_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:custom_v2/src/s3/model/copy_object_error.dart';
import 'package:custom_v2/src/s3/model/copy_object_output.dart';
import 'package:custom_v2/src/s3/model/copy_object_request.dart';
import 'package:custom_v2/src/s3/model/copy_object_result.dart';
import 'package:custom_v2/src/s3/operation/copy_object_operation.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smithy_aws/smithy_aws.dart' as _i2;
import 'package:smithy_test/smithy_test.dart' as _i3;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'CopyObjectSuccess (response)',
    () async {
      const s3ClientConfig = _i2.S3ClientConfig();
      await _i3.httpResponseTest(
        operation: CopyObjectOperation(
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
          id: 'CopyObjectSuccess',
          documentation:
              '    S3 clients should properly decode a successful response.\n',
          protocol: _i5.ShapeId(
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
          CopyObjectRequestPayload,
          CopyObjectRequest,
          CopyObjectResult?,
          CopyObjectOutput,
          CopyObjectError>(
        operation: CopyObjectOperation(
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
          id: 'CopyObjectErrorOnSuccess',
          documentation:
              '    S3 clients should properly decode an error response on a 200 status code.\n',
          protocol: _i5.ShapeId(
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
    extends _i5.StructuredSmithySerializer<CopyObjectRequest> {
  const CopyObjectRequestRestXmlSerializer() : super('CopyObjectRequest');

  @override
  Iterable<Type> get types => const [CopyObjectRequest];

  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  CopyObjectRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CopyObjectRequestBuilder();
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
        case 'CopySource':
          result.copySource = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Key':
          result.key = (serializers.deserialize(
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
    CopyObjectRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class CopyObjectOutputRestXmlSerializer
    extends _i5.StructuredSmithySerializer<CopyObjectOutput> {
  const CopyObjectOutputRestXmlSerializer() : super('CopyObjectOutput');

  @override
  Iterable<Type> get types => const [CopyObjectOutput];

  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  CopyObjectOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CopyObjectOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CopyObjectResult':
          result.copyObjectResult.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CopyObjectResult),
          ) as CopyObjectResult));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CopyObjectOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class CopyObjectResultRestXmlSerializer
    extends _i5.StructuredSmithySerializer<CopyObjectResult> {
  const CopyObjectResultRestXmlSerializer() : super('CopyObjectResult');

  @override
  Iterable<Type> get types => const [CopyObjectResult];

  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  CopyObjectResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CopyObjectResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ETag':
          result.eTag = (serializers.deserialize(
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
    CopyObjectResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class CopyObjectErrorRestXmlSerializer
    extends _i5.StructuredSmithySerializer<CopyObjectError> {
  const CopyObjectErrorRestXmlSerializer() : super('CopyObjectError');

  @override
  Iterable<Type> get types => const [CopyObjectError];

  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  CopyObjectError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return CopyObjectErrorBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CopyObjectError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
