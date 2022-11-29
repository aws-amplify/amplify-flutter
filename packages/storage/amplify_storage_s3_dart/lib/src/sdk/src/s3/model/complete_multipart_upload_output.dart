// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.complete_multipart_upload_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_charged.dart'
    as _i3;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/server_side_encryption.dart'
    as _i4;
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
    String? bucket,
    bool? bucketKeyEnabled,
    String? checksumCrc32,
    String? checksumCrc32C,
    String? checksumSha1,
    String? checksumSha256,
    String? eTag,
    String? expiration,
    String? key,
    String? location,
    _i3.RequestCharged? requestCharged,
    _i4.ServerSideEncryption? serverSideEncryption,
    String? ssekmsKeyId,
    String? versionId,
  }) {
    return _$CompleteMultipartUploadOutput._(
      bucket: bucket,
      bucketKeyEnabled: bucketKeyEnabled,
      checksumCrc32: checksumCrc32,
      checksumCrc32C: checksumCrc32C,
      checksumSha1: checksumSha1,
      checksumSha256: checksumSha256,
      eTag: eTag,
      expiration: expiration,
      key: key,
      location: location,
      requestCharged: requestCharged,
      serverSideEncryption: serverSideEncryption,
      ssekmsKeyId: ssekmsKeyId,
      versionId: versionId,
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
          b.serverSideEncryption = _i4.ServerSideEncryption.values
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
          b.requestCharged = _i3.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    CompleteMultipartUploadOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CompleteMultipartUploadOutputBuilder b) {}

  /// The name of the bucket that contains the newly created object. Does not return the access point ARN or access point alias if used.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When using this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String? get bucket;

  /// Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption with Amazon Web Services KMS (SSE-KMS).
  bool? get bucketKeyEnabled;

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

  /// If the object expiration is configured, this will contain the expiration date (`expiry-date`) and rule ID (`rule-id`). The value of `rule-id` is URL-encoded.
  String? get expiration;

  /// The object key of the newly created object.
  String? get key;

  /// The URI that identifies the newly created object.
  String? get location;

  /// If present, indicates that the requester was successfully charged for the request.
  _i3.RequestCharged? get requestCharged;

  /// If you specified server-side encryption either with an Amazon S3-managed encryption key or an Amazon Web Services KMS key in your initiate multipart upload request, the response includes this header. It confirms the encryption algorithm that Amazon S3 used to encrypt the object.
  _i4.ServerSideEncryption? get serverSideEncryption;

  /// If present, specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric customer managed key that was used for the object.
  String? get ssekmsKeyId;

  /// Version ID of the newly created object, in case the bucket has versioning turned on.
  String? get versionId;
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
        bucket,
        bucketKeyEnabled,
        checksumCrc32,
        checksumCrc32C,
        checksumSha1,
        checksumSha256,
        eTag,
        expiration,
        key,
        location,
        requestCharged,
        serverSideEncryption,
        ssekmsKeyId,
        versionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CompleteMultipartUploadOutput');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'bucketKeyEnabled',
      bucketKeyEnabled,
    );
    helper.add(
      'checksumCrc32',
      checksumCrc32,
    );
    helper.add(
      'checksumCrc32C',
      checksumCrc32C,
    );
    helper.add(
      'checksumSha1',
      checksumSha1,
    );
    helper.add(
      'checksumSha256',
      checksumSha256,
    );
    helper.add(
      'eTag',
      eTag,
    );
    helper.add(
      'expiration',
      expiration,
    );
    helper.add(
      'key',
      key,
    );
    helper.add(
      'location',
      location,
    );
    helper.add(
      'requestCharged',
      requestCharged,
    );
    helper.add(
      'serverSideEncryption',
      serverSideEncryption,
    );
    helper.add(
      'ssekmsKeyId',
      '***SENSITIVE***',
    );
    helper.add(
      'versionId',
      versionId,
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
  /// When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When using this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
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
        newBuiltValueToStringHelper('CompleteMultipartUploadOutputPayload');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'checksumCrc32',
      checksumCrc32,
    );
    helper.add(
      'checksumCrc32C',
      checksumCrc32C,
    );
    helper.add(
      'checksumSha1',
      checksumSha1,
    );
    helper.add(
      'checksumSha256',
      checksumSha256,
    );
    helper.add(
      'eTag',
      eTag,
    );
    helper.add(
      'key',
      key,
    );
    helper.add(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Bucket':
          if (value != null) {
            result.bucket = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ChecksumCRC32':
          if (value != null) {
            result.checksumCrc32 = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ChecksumCRC32C':
          if (value != null) {
            result.checksumCrc32C = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ChecksumSHA1':
          if (value != null) {
            result.checksumSha1 = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ChecksumSHA256':
          if (value != null) {
            result.checksumSha256 = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ETag':
          if (value != null) {
            result.eTag = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Key':
          if (value != null) {
            result.key = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Location':
          if (value != null) {
            result.location = (serializers.deserialize(
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
    final payload = object is CompleteMultipartUploadOutput
        ? object.getPayload()
        : (object as CompleteMultipartUploadOutputPayload);
    final result = <Object?>[
      const _i2.XmlElementName(
        'CompleteMultipartUploadResult',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.bucket != null) {
      result
        ..add(const _i2.XmlElementName('Bucket'))
        ..add(serializers.serialize(
          payload.bucket!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.checksumCrc32 != null) {
      result
        ..add(const _i2.XmlElementName('ChecksumCRC32'))
        ..add(serializers.serialize(
          payload.checksumCrc32!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.checksumCrc32C != null) {
      result
        ..add(const _i2.XmlElementName('ChecksumCRC32C'))
        ..add(serializers.serialize(
          payload.checksumCrc32C!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.checksumSha1 != null) {
      result
        ..add(const _i2.XmlElementName('ChecksumSHA1'))
        ..add(serializers.serialize(
          payload.checksumSha1!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.checksumSha256 != null) {
      result
        ..add(const _i2.XmlElementName('ChecksumSHA256'))
        ..add(serializers.serialize(
          payload.checksumSha256!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.eTag != null) {
      result
        ..add(const _i2.XmlElementName('ETag'))
        ..add(serializers.serialize(
          payload.eTag!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.key != null) {
      result
        ..add(const _i2.XmlElementName('Key'))
        ..add(serializers.serialize(
          payload.key!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.location != null) {
      result
        ..add(const _i2.XmlElementName('Location'))
        ..add(serializers.serialize(
          payload.location!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
