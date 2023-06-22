// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.put_object_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption.dart'
    as _i3;

part 'put_object_output.g.dart';

abstract class PutObjectOutput
    with _i1.AWSEquatable<PutObjectOutput>
    implements
        Built<PutObjectOutput, PutObjectOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<PutObjectOutputPayload> {
  factory PutObjectOutput({
    String? expiration,
    String? eTag,
    String? checksumCrc32,
    String? checksumCrc32C,
    String? checksumSha1,
    String? checksumSha256,
    _i3.ServerSideEncryption? serverSideEncryption,
    String? versionId,
    String? sseCustomerAlgorithm,
    String? sseCustomerKeyMd5,
    String? ssekmsKeyId,
    String? ssekmsEncryptionContext,
    bool? bucketKeyEnabled,
    _i4.RequestCharged? requestCharged,
  }) {
    return _$PutObjectOutput._(
      expiration: expiration,
      eTag: eTag,
      checksumCrc32: checksumCrc32,
      checksumCrc32C: checksumCrc32C,
      checksumSha1: checksumSha1,
      checksumSha256: checksumSha256,
      serverSideEncryption: serverSideEncryption,
      versionId: versionId,
      sseCustomerAlgorithm: sseCustomerAlgorithm,
      sseCustomerKeyMd5: sseCustomerKeyMd5,
      ssekmsKeyId: ssekmsKeyId,
      ssekmsEncryptionContext: ssekmsEncryptionContext,
      bucketKeyEnabled: bucketKeyEnabled,
      requestCharged: requestCharged,
    );
  }

  factory PutObjectOutput.build(
      [void Function(PutObjectOutputBuilder) updates]) = _$PutObjectOutput;

  const PutObjectOutput._();

  /// Constructs a [PutObjectOutput] from a [payload] and [response].
  factory PutObjectOutput.fromResponse(
    PutObjectOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      PutObjectOutput.build((b) {
        if (response.headers['x-amz-expiration'] != null) {
          b.expiration = response.headers['x-amz-expiration']!;
        }
        if (response.headers['ETag'] != null) {
          b.eTag = response.headers['ETag']!;
        }
        if (response.headers['x-amz-checksum-crc32'] != null) {
          b.checksumCrc32 = response.headers['x-amz-checksum-crc32']!;
        }
        if (response.headers['x-amz-checksum-crc32c'] != null) {
          b.checksumCrc32C = response.headers['x-amz-checksum-crc32c']!;
        }
        if (response.headers['x-amz-checksum-sha1'] != null) {
          b.checksumSha1 = response.headers['x-amz-checksum-sha1']!;
        }
        if (response.headers['x-amz-checksum-sha256'] != null) {
          b.checksumSha256 = response.headers['x-amz-checksum-sha256']!;
        }
        if (response.headers['x-amz-server-side-encryption'] != null) {
          b.serverSideEncryption = _i3.ServerSideEncryption.values
              .byValue(response.headers['x-amz-server-side-encryption']!);
        }
        if (response.headers['x-amz-version-id'] != null) {
          b.versionId = response.headers['x-amz-version-id']!;
        }
        if (response
                .headers['x-amz-server-side-encryption-customer-algorithm'] !=
            null) {
          b.sseCustomerAlgorithm = response
              .headers['x-amz-server-side-encryption-customer-algorithm']!;
        }
        if (response.headers['x-amz-server-side-encryption-customer-key-MD5'] !=
            null) {
          b.sseCustomerKeyMd5 = response
              .headers['x-amz-server-side-encryption-customer-key-MD5']!;
        }
        if (response.headers['x-amz-server-side-encryption-aws-kms-key-id'] !=
            null) {
          b.ssekmsKeyId =
              response.headers['x-amz-server-side-encryption-aws-kms-key-id']!;
        }
        if (response.headers['x-amz-server-side-encryption-context'] != null) {
          b.ssekmsEncryptionContext =
              response.headers['x-amz-server-side-encryption-context']!;
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

  static const List<_i2.SmithySerializer<PutObjectOutputPayload>> serializers =
      [PutObjectOutputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutObjectOutputBuilder b) {}

  /// If the expiration is configured for the object (see [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html)), the response includes this header. It includes the `expiry-date` and `rule-id` key-value pairs that provide information about object expiration. The value of the `rule-id` is URL-encoded.
  String? get expiration;

  /// Entity tag for the uploaded object.
  String? get eTag;

  /// The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumCrc32;

  /// The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumCrc32C;

  /// The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumSha1;

  /// The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumSha256;

  /// The server-side encryption algorithm used when storing this object in Amazon S3 (for example, `AES256`, `aws:kms`, `aws:kms:dsse`).
  _i3.ServerSideEncryption? get serverSideEncryption;

  /// Version of the object.
  String? get versionId;

  /// If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
  String? get sseCustomerAlgorithm;

  /// If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round-trip message integrity verification of the customer-provided encryption key.
  String? get sseCustomerKeyMd5;

  /// If `x-amz-server-side-encryption` has a valid value of `aws:kms` or `aws:kms:dsse`, this header specifies the ID of the Key Management Service (KMS) symmetric encryption customer managed key that was used for the object.
  String? get ssekmsKeyId;

  /// If present, specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The value of this header is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs. This value is stored as object metadata and automatically gets passed on to Amazon Web Services KMS for future `GetObject` or `CopyObject` operations on this object.
  String? get ssekmsEncryptionContext;

  /// Indicates whether the uploaded object uses an S3 Bucket Key for server-side encryption with Key Management Service (KMS) keys (SSE-KMS).
  bool? get bucketKeyEnabled;

  /// If present, indicates that the requester was successfully charged for the request.
  _i4.RequestCharged? get requestCharged;
  @override
  PutObjectOutputPayload getPayload() => PutObjectOutputPayload();
  @override
  List<Object?> get props => [
        expiration,
        eTag,
        checksumCrc32,
        checksumCrc32C,
        checksumSha1,
        checksumSha256,
        serverSideEncryption,
        versionId,
        sseCustomerAlgorithm,
        sseCustomerKeyMd5,
        ssekmsKeyId,
        ssekmsEncryptionContext,
        bucketKeyEnabled,
        requestCharged,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutObjectOutput')
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
        'sseCustomerAlgorithm',
        sseCustomerAlgorithm,
      )
      ..add(
        'sseCustomerKeyMd5',
        sseCustomerKeyMd5,
      )
      ..add(
        'ssekmsKeyId',
        '***SENSITIVE***',
      )
      ..add(
        'ssekmsEncryptionContext',
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
abstract class PutObjectOutputPayload
    with _i1.AWSEquatable<PutObjectOutputPayload>
    implements
        Built<PutObjectOutputPayload, PutObjectOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory PutObjectOutputPayload(
          [void Function(PutObjectOutputPayloadBuilder) updates]) =
      _$PutObjectOutputPayload;

  const PutObjectOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutObjectOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutObjectOutputPayload');
    return helper.toString();
  }
}

class PutObjectOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<PutObjectOutputPayload> {
  const PutObjectOutputRestXmlSerializer() : super('PutObjectOutput');

  @override
  Iterable<Type> get types => const [
        PutObjectOutput,
        _$PutObjectOutput,
        PutObjectOutputPayload,
        _$PutObjectOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  PutObjectOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return PutObjectOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutObjectOutputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PutObjectOutput',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
