// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_storage_s3_dart.s3.model.upload_part_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_charged.dart'
    as _i4;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/server_side_encryption.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i2;

part 'upload_part_output.g.dart';

abstract class UploadPartOutput
    with _i1.AWSEquatable<UploadPartOutput>
    implements
        Built<UploadPartOutput, UploadPartOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<UploadPartOutputPayload> {
  factory UploadPartOutput({
    _i3.ServerSideEncryption? serverSideEncryption,
    String? eTag,
    String? checksumCrc32,
    String? checksumCrc32C,
    String? checksumSha1,
    String? checksumSha256,
    String? sseCustomerAlgorithm,
    String? sseCustomerKeyMd5,
    String? ssekmsKeyId,
    bool? bucketKeyEnabled,
    _i4.RequestCharged? requestCharged,
  }) {
    return _$UploadPartOutput._(
      serverSideEncryption: serverSideEncryption,
      eTag: eTag,
      checksumCrc32: checksumCrc32,
      checksumCrc32C: checksumCrc32C,
      checksumSha1: checksumSha1,
      checksumSha256: checksumSha256,
      sseCustomerAlgorithm: sseCustomerAlgorithm,
      sseCustomerKeyMd5: sseCustomerKeyMd5,
      ssekmsKeyId: ssekmsKeyId,
      bucketKeyEnabled: bucketKeyEnabled,
      requestCharged: requestCharged,
    );
  }

  factory UploadPartOutput.build(
      [void Function(UploadPartOutputBuilder) updates]) = _$UploadPartOutput;

  const UploadPartOutput._();

  /// Constructs a [UploadPartOutput] from a [payload] and [response].
  factory UploadPartOutput.fromResponse(
    UploadPartOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      UploadPartOutput.build((b) {
        if (response.headers['x-amz-server-side-encryption'] != null) {
          b.serverSideEncryption = _i3.ServerSideEncryption.values
              .byValue(response.headers['x-amz-server-side-encryption']!);
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

  static const List<_i2.SmithySerializer<UploadPartOutputPayload>> serializers =
      [UploadPartOutputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UploadPartOutputBuilder b) {}

  /// The server-side encryption algorithm used when storing this object in Amazon S3 (for example, `AES256`, `aws:kms`).
  _i3.ServerSideEncryption? get serverSideEncryption;

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

  /// If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
  String? get sseCustomerAlgorithm;

  /// If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round-trip message integrity verification of the customer-provided encryption key.
  String? get sseCustomerKeyMd5;

  /// If present, specifies the ID of the Key Management Service (KMS) symmetric encryption customer managed key was used for the object.
  String? get ssekmsKeyId;

  /// Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption with Key Management Service (KMS) keys (SSE-KMS).
  bool? get bucketKeyEnabled;

  /// If present, indicates that the requester was successfully charged for the request.
  _i4.RequestCharged? get requestCharged;
  @override
  UploadPartOutputPayload getPayload() => UploadPartOutputPayload();
  @override
  List<Object?> get props => [
        serverSideEncryption,
        eTag,
        checksumCrc32,
        checksumCrc32C,
        checksumSha1,
        checksumSha256,
        sseCustomerAlgorithm,
        sseCustomerKeyMd5,
        ssekmsKeyId,
        bucketKeyEnabled,
        requestCharged,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UploadPartOutput')
      ..add(
        'serverSideEncryption',
        serverSideEncryption,
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
abstract class UploadPartOutputPayload
    with _i1.AWSEquatable<UploadPartOutputPayload>
    implements
        Built<UploadPartOutputPayload, UploadPartOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory UploadPartOutputPayload(
          [void Function(UploadPartOutputPayloadBuilder) updates]) =
      _$UploadPartOutputPayload;

  const UploadPartOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UploadPartOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UploadPartOutputPayload');
    return helper.toString();
  }
}

class UploadPartOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<UploadPartOutputPayload> {
  const UploadPartOutputRestXmlSerializer() : super('UploadPartOutput');

  @override
  Iterable<Type> get types => const [
        UploadPartOutput,
        _$UploadPartOutput,
        UploadPartOutputPayload,
        _$UploadPartOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  UploadPartOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return UploadPartOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UploadPartOutputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'UploadPartOutput',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
