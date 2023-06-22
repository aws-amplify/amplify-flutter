// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_storage_s3_dart.s3.model.complete_multipart_upload_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_charged.dart'
    as _i4;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/server_side_encryption.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i2;

part 'complete_multipart_upload_output.g.dart';

abstract class CompleteMultipartUploadOutput
    with
        _i1.AWSEquatable<CompleteMultipartUploadOutput>
    implements
        Built<CompleteMultipartUploadOutput,
            CompleteMultipartUploadOutputBuilder>,
        _i2.HasPayload<CompleteMultipartUploadOutputPayload> {
  factory CompleteMultipartUploadOutput({
    String? location,
    String? bucket,
    String? key,
    String? expiration,
    String? eTag,
    String? checksumCrc32,
    String? checksumCrc32C,
    String? checksumSha1,
    String? checksumSha256,
    _i3.ServerSideEncryption? serverSideEncryption,
    String? versionId,
    String? ssekmsKeyId,
    bool? bucketKeyEnabled,
    _i4.RequestCharged? requestCharged,
  }) {
    return _$CompleteMultipartUploadOutput._(
      location: location,
      bucket: bucket,
      key: key,
      expiration: expiration,
      eTag: eTag,
      checksumCrc32: checksumCrc32,
      checksumCrc32C: checksumCrc32C,
      checksumSha1: checksumSha1,
      checksumSha256: checksumSha256,
      serverSideEncryption: serverSideEncryption,
      versionId: versionId,
      ssekmsKeyId: ssekmsKeyId,
      bucketKeyEnabled: bucketKeyEnabled,
      requestCharged: requestCharged,
    );
  }

  factory CompleteMultipartUploadOutput.build(
          [void Function(CompleteMultipartUploadOutputBuilder) updates]) =
      _$CompleteMultipartUploadOutput;

  const CompleteMultipartUploadOutput._();

  /// Constructs a [CompleteMultipartUploadOutput] from a [payload] and [response].
  factory CompleteMultipartUploadOutput.fromResponse(
    CompleteMultipartUploadOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      CompleteMultipartUploadOutput.build((b) {
        b.bucket = payload.bucket;
        b.checksumCrc32 = payload.checksumCrc32;
        b.checksumCrc32C = payload.checksumCrc32C;
        b.checksumSha1 = payload.checksumSha1;
        b.checksumSha256 = payload.checksumSha256;
        b.eTag = payload.eTag;
        b.key = payload.key;
        b.location = payload.location;
        if (response.headers['x-amz-expiration'] != null) {
          b.expiration = response.headers['x-amz-expiration']!;
        }
        if (response.headers['x-amz-server-side-encryption'] != null) {
          b.serverSideEncryption = _i3.ServerSideEncryption.values
              .byValue(response.headers['x-amz-server-side-encryption']!);
        }
        if (response.headers['x-amz-version-id'] != null) {
          b.versionId = response.headers['x-amz-version-id']!;
        }
        if (response.headers['x-amz-server-side-encryption-aws-kms-key-id'] !=
            null) {
          b.ssekmsKeyId =
              response.headers['x-amz-server-side-encryption-aws-kms-key-id']!;
        }
        if (response
                .headers['x-amz-server-side-encryption-bucket-key-enabled'] !=
            null) {
          b.bucketKeyEnabled = response.headers[
                  'x-amz-server-side-encryption-bucket-key-enabled']! ==
              'true';
        }
        if (response.headers['x-amz-request-charged'] != null) {
          b.requestCharged = _i4.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer<CompleteMultipartUploadOutputPayload>>
      serializers = [CompleteMultipartUploadOutputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CompleteMultipartUploadOutputBuilder b) {}

  /// The URI that identifies the newly created object.
  String? get location;

  /// The name of the bucket that contains the newly created object. Does not return the access point ARN or access point alias if used.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [What is S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String? get bucket;

  /// The object key of the newly created object.
  String? get key;

  /// If the object expiration is configured, this will contain the expiration date (`expiry-date`) and rule ID (`rule-id`). The value of `rule-id` is URL-encoded.
  String? get expiration;

  /// Entity tag that identifies the newly created object's data. Objects with different object data will have different entity tags. The entity tag is an opaque string. The entity tag may or may not be an MD5 digest of the object data. If the entity tag is not an MD5 digest of the object data, it will contain one or more nonhexadecimal characters and/or will consist of less than 32 or more than 32 hexadecimal digits. For more information about how the entity tag is calculated, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get eTag;

  /// The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumCrc32;

  /// The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumCrc32C;

  /// The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumSha1;

  /// The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumSha256;

  /// The server-side encryption algorithm used when storing this object in Amazon S3 (for example, `AES256`, `aws:kms`).
  _i3.ServerSideEncryption? get serverSideEncryption;

  /// Version ID of the newly created object, in case the bucket has versioning turned on.
  String? get versionId;

  /// If present, specifies the ID of the Key Management Service (KMS) symmetric encryption customer managed key that was used for the object.
  String? get ssekmsKeyId;

  /// Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption with Key Management Service (KMS) keys (SSE-KMS).
  bool? get bucketKeyEnabled;

  /// If present, indicates that the requester was successfully charged for the request.
  _i4.RequestCharged? get requestCharged;
  @override
  CompleteMultipartUploadOutputPayload getPayload() =>
      CompleteMultipartUploadOutputPayload((b) {
        b.bucket = bucket;
        b.checksumCrc32 = checksumCrc32;
        b.checksumCrc32C = checksumCrc32C;
        b.checksumSha1 = checksumSha1;
        b.checksumSha256 = checksumSha256;
        b.eTag = eTag;
        b.key = key;
        b.location = location;
      });
  @override
  List<Object?> get props => [
        location,
        bucket,
        key,
        expiration,
        eTag,
        checksumCrc32,
        checksumCrc32C,
        checksumSha1,
        checksumSha256,
        serverSideEncryption,
        versionId,
        ssekmsKeyId,
        bucketKeyEnabled,
        requestCharged,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CompleteMultipartUploadOutput')
      ..add(
        'location',
        location,
      )
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'key',
        key,
      )
      ..add(
        'expiration',
        expiration,
      )
      ..add(
        'eTag',
        eTag,
      )
      ..add(
        'checksumCrc32',
        checksumCrc32,
      )
      ..add(
        'checksumCrc32C',
        checksumCrc32C,
      )
      ..add(
        'checksumSha1',
        checksumSha1,
      )
      ..add(
        'checksumSha256',
        checksumSha256,
      )
      ..add(
        'serverSideEncryption',
        serverSideEncryption,
      )
      ..add(
        'versionId',
        versionId,
      )
      ..add(
        'ssekmsKeyId',
        '***SENSITIVE***',
      )
      ..add(
        'bucketKeyEnabled',
        bucketKeyEnabled,
      )
      ..add(
        'requestCharged',
        requestCharged,
      );
    return helper.toString();
  }
}

@_i5.internal
abstract class CompleteMultipartUploadOutputPayload
    with
        _i1.AWSEquatable<CompleteMultipartUploadOutputPayload>
    implements
        Built<CompleteMultipartUploadOutputPayload,
            CompleteMultipartUploadOutputPayloadBuilder> {
  factory CompleteMultipartUploadOutputPayload(
      [void Function(CompleteMultipartUploadOutputPayloadBuilder)
          updates]) = _$CompleteMultipartUploadOutputPayload;

  const CompleteMultipartUploadOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CompleteMultipartUploadOutputPayloadBuilder b) {}

  /// The name of the bucket that contains the newly created object. Does not return the access point ARN or access point alias if used.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [What is S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String? get bucket;

  /// The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumCrc32;

  /// The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumCrc32C;

  /// The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumSha1;

  /// The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumSha256;

  /// Entity tag that identifies the newly created object's data. Objects with different object data will have different entity tags. The entity tag is an opaque string. The entity tag may or may not be an MD5 digest of the object data. If the entity tag is not an MD5 digest of the object data, it will contain one or more nonhexadecimal characters and/or will consist of less than 32 or more than 32 hexadecimal digits. For more information about how the entity tag is calculated, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get eTag;

  /// The object key of the newly created object.
  String? get key;

  /// The URI that identifies the newly created object.
  String? get location;
  @override
  List<Object?> get props => [
        bucket,
        checksumCrc32,
        checksumCrc32C,
        checksumSha1,
        checksumSha256,
        eTag,
        key,
        location,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CompleteMultipartUploadOutputPayload')
          ..add(
            'bucket',
            bucket,
          )
          ..add(
            'checksumCrc32',
            checksumCrc32,
          )
          ..add(
            'checksumCrc32C',
            checksumCrc32C,
          )
          ..add(
            'checksumSha1',
            checksumSha1,
          )
          ..add(
            'checksumSha256',
            checksumSha256,
          )
          ..add(
            'eTag',
            eTag,
          )
          ..add(
            'key',
            key,
          )
          ..add(
            'location',
            location,
          );
    return helper.toString();
  }
}

class CompleteMultipartUploadOutputRestXmlSerializer extends _i2
    .StructuredSmithySerializer<CompleteMultipartUploadOutputPayload> {
  const CompleteMultipartUploadOutputRestXmlSerializer()
      : super('CompleteMultipartUploadOutput');

  @override
  Iterable<Type> get types => const [
        CompleteMultipartUploadOutput,
        _$CompleteMultipartUploadOutput,
        CompleteMultipartUploadOutputPayload,
        _$CompleteMultipartUploadOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  CompleteMultipartUploadOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CompleteMultipartUploadOutputPayloadBuilder();
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
        case 'ChecksumCRC32':
          result.checksumCrc32 = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ChecksumCRC32C':
          result.checksumCrc32C = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ChecksumSHA1':
          result.checksumSha1 = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ChecksumSHA256':
          result.checksumSha256 = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ETag':
          result.eTag = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Key':
          result.key = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Location':
          result.location = (serializers.deserialize(
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
    CompleteMultipartUploadOutputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CompleteMultipartUploadResult',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final CompleteMultipartUploadOutputPayload(
      :bucket,
      :checksumCrc32,
      :checksumCrc32C,
      :checksumSha1,
      :checksumSha256,
      :eTag,
      :key,
      :location
    ) = object;
    if (bucket != null) {
      result$
        ..add(const _i2.XmlElementName('Bucket'))
        ..add(serializers.serialize(
          bucket,
          specifiedType: const FullType(String),
        ));
    }
    if (checksumCrc32 != null) {
      result$
        ..add(const _i2.XmlElementName('ChecksumCRC32'))
        ..add(serializers.serialize(
          checksumCrc32,
          specifiedType: const FullType(String),
        ));
    }
    if (checksumCrc32C != null) {
      result$
        ..add(const _i2.XmlElementName('ChecksumCRC32C'))
        ..add(serializers.serialize(
          checksumCrc32C,
          specifiedType: const FullType(String),
        ));
    }
    if (checksumSha1 != null) {
      result$
        ..add(const _i2.XmlElementName('ChecksumSHA1'))
        ..add(serializers.serialize(
          checksumSha1,
          specifiedType: const FullType(String),
        ));
    }
    if (checksumSha256 != null) {
      result$
        ..add(const _i2.XmlElementName('ChecksumSHA256'))
        ..add(serializers.serialize(
          checksumSha256,
          specifiedType: const FullType(String),
        ));
    }
    if (eTag != null) {
      result$
        ..add(const _i2.XmlElementName('ETag'))
        ..add(serializers.serialize(
          eTag,
          specifiedType: const FullType(String),
        ));
    }
    if (key != null) {
      result$
        ..add(const _i2.XmlElementName('Key'))
        ..add(serializers.serialize(
          key,
          specifiedType: const FullType(String),
        ));
    }
    if (location != null) {
      result$
        ..add(const _i2.XmlElementName('Location'))
        ..add(serializers.serialize(
          location,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
