// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v1.s3.test.get_bucket_location_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/s3/model/bucket_location_constraint.dart'
    as _i9;
import 'package:rest_xml_v1/src/s3/model/get_bucket_location_output.dart'
    as _i8;
import 'package:rest_xml_v1/src/s3/model/get_bucket_location_request.dart'
    as _i7;
import 'package:rest_xml_v1/src/s3/operation/get_bucket_location_operation.dart'
    as _i4;
import 'package:smithy/smithy.dart' as _i6;
import 'package:smithy_aws/smithy_aws.dart' as _i2;
import 'package:smithy_test/smithy_test.dart' as _i3;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'GetBucketLocationUnwrappedOutput (response)',
    () async {
      const s3ClientConfig = _i2.S3ClientConfig();
      await _i3.httpResponseTest(
        operation: _i4.GetBucketLocationOperation(
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
          id: 'GetBucketLocationUnwrappedOutput',
          documentation:
              '    S3 clients should use the @s3UnwrappedXmlOutput trait to determine\n    that the response shape is not wrapped in a restxml operation-level XML node.\n',
          protocol: _i6.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<?xml version="1.0" encoding="UTF-8"?>\n<LocationConstraint xmlns="http://s3.amazonaws.com/doc/2006-03-01/">us-west-2</LocationConstraint>',
          bodyMediaType: null,
          params: {'LocationConstraint': 'us-west-2'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [GetBucketLocationOutputRestXmlSerializer()],
      );
    },
  );
}

class GetBucketLocationRequestRestXmlSerializer
    extends _i6.StructuredSmithySerializer<_i7.GetBucketLocationRequest> {
  const GetBucketLocationRequestRestXmlSerializer()
      : super('GetBucketLocationRequest');

  @override
  Iterable<Type> get types => const [_i7.GetBucketLocationRequest];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i7.GetBucketLocationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i7.GetBucketLocationRequestBuilder();
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

class GetBucketLocationOutputRestXmlSerializer
    extends _i6.StructuredSmithySerializer<_i8.GetBucketLocationOutput> {
  const GetBucketLocationOutputRestXmlSerializer()
      : super('GetBucketLocationOutput');

  @override
  Iterable<Type> get types => const [_i8.GetBucketLocationOutput];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i8.GetBucketLocationOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i8.GetBucketLocationOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'LocationConstraint':
          if (value != null) {
            result.locationConstraint = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i9.BucketLocationConstraint),
            ) as _i9.BucketLocationConstraint);
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
