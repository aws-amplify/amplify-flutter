// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.put_bucket_encryption_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption_configuration.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption_rule.dart'
    as _i5;

part 'put_bucket_encryption_request.g.dart';

abstract class PutBucketEncryptionRequest
    with
        _i1.HttpInput<_i2.ServerSideEncryptionConfiguration>,
        _i3.AWSEquatable<PutBucketEncryptionRequest>
    implements
        Built<PutBucketEncryptionRequest, PutBucketEncryptionRequestBuilder>,
        _i1.HasPayload<_i2.ServerSideEncryptionConfiguration> {
  factory PutBucketEncryptionRequest({
    required String bucket,
    _i4.ChecksumAlgorithm? checksumAlgorithm,
    String? contentMd5,
    String? expectedBucketOwner,
    required _i2.ServerSideEncryptionConfiguration
        serverSideEncryptionConfiguration,
  }) {
    return _$PutBucketEncryptionRequest._(
      bucket: bucket,
      checksumAlgorithm: checksumAlgorithm,
      contentMd5: contentMd5,
      expectedBucketOwner: expectedBucketOwner,
      serverSideEncryptionConfiguration: serverSideEncryptionConfiguration,
    );
  }

  factory PutBucketEncryptionRequest.build(
          [void Function(PutBucketEncryptionRequestBuilder) updates]) =
      _$PutBucketEncryptionRequest;

  const PutBucketEncryptionRequest._();

  factory PutBucketEncryptionRequest.fromRequest(
    _i2.ServerSideEncryptionConfiguration payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutBucketEncryptionRequest.build((b) {
        b.serverSideEncryptionConfiguration.replace(payload);
        if (request.headers['Content-MD5'] != null) {
          b.contentMd5 = request.headers['Content-MD5']!;
        }
        if (request.headers['x-amz-sdk-checksum-algorithm'] != null) {
          b.checksumAlgorithm = _i4.ChecksumAlgorithm.values
              .byValue(request.headers['x-amz-sdk-checksum-algorithm']!);
        }
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    PutBucketEncryptionRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutBucketEncryptionRequestBuilder b) {}

  /// Specifies default encryption for a bucket using server-side encryption with Amazon S3-managed keys (SSE-S3) or customer managed keys (SSE-KMS). For information about the Amazon S3 default encryption feature, see [Amazon S3 Default Bucket Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any additional functionality if not using the SDK. When sending this header, there must be a corresponding `x-amz-checksum` or `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request with the HTTP status code `400 Bad Request`. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// If you provide an individual checksum, Amazon S3 ignores any provided `ChecksumAlgorithm` parameter.
  _i4.ChecksumAlgorithm? get checksumAlgorithm;

  /// The base64-encoded 128-bit MD5 digest of the server-side encryption configuration.
  ///
  /// For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.
  String? get contentMd5;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// Specifies the default server-side-encryption configuration.
  _i2.ServerSideEncryptionConfiguration get serverSideEncryptionConfiguration;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'Bucket':
        return bucket;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  _i2.ServerSideEncryptionConfiguration getPayload() =>
      serverSideEncryptionConfiguration;
  @override
  List<Object?> get props => [
        bucket,
        checksumAlgorithm,
        contentMd5,
        expectedBucketOwner,
        serverSideEncryptionConfiguration,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutBucketEncryptionRequest');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'checksumAlgorithm',
      checksumAlgorithm,
    );
    helper.add(
      'contentMd5',
      contentMd5,
    );
    helper.add(
      'expectedBucketOwner',
      expectedBucketOwner,
    );
    helper.add(
      'serverSideEncryptionConfiguration',
      serverSideEncryptionConfiguration,
    );
    return helper.toString();
  }
}

class PutBucketEncryptionRequestRestXmlSerializer extends _i1
    .StructuredSmithySerializer<_i2.ServerSideEncryptionConfiguration> {
  const PutBucketEncryptionRequestRestXmlSerializer()
      : super('PutBucketEncryptionRequest');

  @override
  Iterable<Type> get types => const [
        PutBucketEncryptionRequest,
        _$PutBucketEncryptionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.ServerSideEncryptionConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.ServerSideEncryptionConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Rule':
          result.rules.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.ServerSideEncryptionRule),
          ) as _i5.ServerSideEncryptionRule));
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
    final payload = object is PutBucketEncryptionRequest
        ? object.getPayload()
        : (object as _i2.ServerSideEncryptionConfiguration);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ServerSideEncryptionConfiguration',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
        .addAll(const _i1.XmlBuiltListSerializer(memberName: 'Rule').serialize(
      serializers,
      payload.rules,
      specifiedType: const FullType.nullable(
        _i6.BuiltList,
        [FullType(_i5.ServerSideEncryptionRule)],
      ),
    ));
    return result;
  }
}
