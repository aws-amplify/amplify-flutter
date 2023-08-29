// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.put_bucket_encryption_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart';
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption_rule.dart';

part 'put_bucket_encryption_request.g.dart';

abstract class PutBucketEncryptionRequest
    with
        _i1.HttpInput<ServerSideEncryptionConfiguration>,
        _i2.AWSEquatable<PutBucketEncryptionRequest>
    implements
        Built<PutBucketEncryptionRequest, PutBucketEncryptionRequestBuilder>,
        _i1.HasPayload<ServerSideEncryptionConfiguration> {
  factory PutBucketEncryptionRequest({
    required String bucket,
    String? contentMd5,
    ChecksumAlgorithm? checksumAlgorithm,
    required ServerSideEncryptionConfiguration
        serverSideEncryptionConfiguration,
    String? expectedBucketOwner,
  }) {
    return _$PutBucketEncryptionRequest._(
      bucket: bucket,
      contentMd5: contentMd5,
      checksumAlgorithm: checksumAlgorithm,
      serverSideEncryptionConfiguration: serverSideEncryptionConfiguration,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory PutBucketEncryptionRequest.build(
          [void Function(PutBucketEncryptionRequestBuilder) updates]) =
      _$PutBucketEncryptionRequest;

  const PutBucketEncryptionRequest._();

  factory PutBucketEncryptionRequest.fromRequest(
    ServerSideEncryptionConfiguration payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutBucketEncryptionRequest.build((b) {
        b.serverSideEncryptionConfiguration.replace(payload);
        if (request.headers['Content-MD5'] != null) {
          b.contentMd5 = request.headers['Content-MD5']!;
        }
        if (request.headers['x-amz-sdk-checksum-algorithm'] != null) {
          b.checksumAlgorithm = ChecksumAlgorithm.values
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

  static const List<_i1.SmithySerializer<ServerSideEncryptionConfiguration>>
      serializers = [PutBucketEncryptionRequestRestXmlSerializer()];

  /// Specifies default encryption for a bucket using server-side encryption with different key options. By default, all buckets have a default encryption configuration that uses server-side encryption with Amazon S3 managed keys (SSE-S3). You can optionally configure default encryption for a bucket by using server-side encryption with an Amazon Web Services KMS key (SSE-KMS) or a customer-provided key (SSE-C). For information about the bucket default encryption feature, see [Amazon S3 Bucket Default Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// The base64-encoded 128-bit MD5 digest of the server-side encryption configuration.
  ///
  /// For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.
  String? get contentMd5;

  /// Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any additional functionality if not using the SDK. When sending this header, there must be a corresponding `x-amz-checksum` or `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request with the HTTP status code `400 Bad Request`. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// If you provide an individual checksum, Amazon S3 ignores any provided `ChecksumAlgorithm` parameter.
  ChecksumAlgorithm? get checksumAlgorithm;

  /// Specifies the default server-side-encryption configuration.
  ServerSideEncryptionConfiguration get serverSideEncryptionConfiguration;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;
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
  ServerSideEncryptionConfiguration getPayload() =>
      serverSideEncryptionConfiguration;
  @override
  List<Object?> get props => [
        bucket,
        contentMd5,
        checksumAlgorithm,
        serverSideEncryptionConfiguration,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutBucketEncryptionRequest')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'contentMd5',
        contentMd5,
      )
      ..add(
        'checksumAlgorithm',
        checksumAlgorithm,
      )
      ..add(
        'serverSideEncryptionConfiguration',
        serverSideEncryptionConfiguration,
      )
      ..add(
        'expectedBucketOwner',
        expectedBucketOwner,
      );
    return helper.toString();
  }
}

class PutBucketEncryptionRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<ServerSideEncryptionConfiguration> {
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
  ServerSideEncryptionConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServerSideEncryptionConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Rule':
          result.rules.add((serializers.deserialize(
            value,
            specifiedType: const FullType(ServerSideEncryptionRule),
          ) as ServerSideEncryptionRule));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ServerSideEncryptionConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ServerSideEncryptionConfiguration',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ServerSideEncryptionConfiguration(:rules) = object;
    result$
        .addAll(const _i1.XmlBuiltListSerializer(memberName: 'Rule').serialize(
      serializers,
      rules,
      specifiedType: const FullType.nullable(
        _i3.BuiltList,
        [FullType(ServerSideEncryptionRule)],
      ),
    ));
    return result$;
  }
}
