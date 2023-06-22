// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_storage_s3_dart.s3.model.upload_part_copy_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/copy_part_result.dart'
    as _i3;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_charged.dart'
    as _i5;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/server_side_encryption.dart'
    as _i4;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'upload_part_copy_output.g.dart';

abstract class UploadPartCopyOutput
    with _i1.AWSEquatable<UploadPartCopyOutput>
    implements
        Built<UploadPartCopyOutput, UploadPartCopyOutputBuilder>,
        _i2.HasPayload<_i3.CopyPartResult> {
  factory UploadPartCopyOutput({
    String? copySourceVersionId,
    _i3.CopyPartResult? copyPartResult,
    _i4.ServerSideEncryption? serverSideEncryption,
    String? sseCustomerAlgorithm,
    String? sseCustomerKeyMd5,
    String? ssekmsKeyId,
    bool? bucketKeyEnabled,
    _i5.RequestCharged? requestCharged,
  }) {
    return _$UploadPartCopyOutput._(
      copySourceVersionId: copySourceVersionId,
      copyPartResult: copyPartResult,
      serverSideEncryption: serverSideEncryption,
      sseCustomerAlgorithm: sseCustomerAlgorithm,
      sseCustomerKeyMd5: sseCustomerKeyMd5,
      ssekmsKeyId: ssekmsKeyId,
      bucketKeyEnabled: bucketKeyEnabled,
      requestCharged: requestCharged,
    );
  }

  factory UploadPartCopyOutput.build(
          [void Function(UploadPartCopyOutputBuilder) updates]) =
      _$UploadPartCopyOutput;

  const UploadPartCopyOutput._();

  /// Constructs a [UploadPartCopyOutput] from a [payload] and [response].
  factory UploadPartCopyOutput.fromResponse(
    _i3.CopyPartResult? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      UploadPartCopyOutput.build((b) {
        if (payload != null) {
          b.copyPartResult.replace(payload);
        }
        if (response.headers['x-amz-copy-source-version-id'] != null) {
          b.copySourceVersionId =
              response.headers['x-amz-copy-source-version-id']!;
        }
        if (response.headers['x-amz-server-side-encryption'] != null) {
          b.serverSideEncryption = _i4.ServerSideEncryption.values
              .byValue(response.headers['x-amz-server-side-encryption']!);
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
          b.requestCharged = _i5.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer<_i3.CopyPartResult?>> serializers = [
    UploadPartCopyOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UploadPartCopyOutputBuilder b) {}

  /// The version of the source object that was copied, if you have enabled versioning on the source bucket.
  String? get copySourceVersionId;

  /// Container for all response elements.
  _i3.CopyPartResult? get copyPartResult;

  /// The server-side encryption algorithm used when storing this object in Amazon S3 (for example, `AES256`, `aws:kms`).
  _i4.ServerSideEncryption? get serverSideEncryption;

  /// If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
  String? get sseCustomerAlgorithm;

  /// If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round-trip message integrity verification of the customer-provided encryption key.
  String? get sseCustomerKeyMd5;

  /// If present, specifies the ID of the Key Management Service (KMS) symmetric encryption customer managed key that was used for the object.
  String? get ssekmsKeyId;

  /// Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption with Key Management Service (KMS) keys (SSE-KMS).
  bool? get bucketKeyEnabled;

  /// If present, indicates that the requester was successfully charged for the request.
  _i5.RequestCharged? get requestCharged;
  @override
  _i3.CopyPartResult? getPayload() => copyPartResult ?? _i3.CopyPartResult();
  @override
  List<Object?> get props => [
        copySourceVersionId,
        copyPartResult,
        serverSideEncryption,
        sseCustomerAlgorithm,
        sseCustomerKeyMd5,
        ssekmsKeyId,
        bucketKeyEnabled,
        requestCharged,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UploadPartCopyOutput')
      ..add(
        'copySourceVersionId',
        copySourceVersionId,
      )
      ..add(
        'copyPartResult',
        copyPartResult,
      )
      ..add(
        'serverSideEncryption',
        serverSideEncryption,
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

class UploadPartCopyOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<_i3.CopyPartResult> {
  const UploadPartCopyOutputRestXmlSerializer() : super('UploadPartCopyOutput');

  @override
  Iterable<Type> get types => const [
        UploadPartCopyOutput,
        _$UploadPartCopyOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i3.CopyPartResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i3.CopyPartResultBuilder();
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
        case 'LastModified':
          result.lastModified = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i3.CopyPartResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CopyPartResult',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final _i3.CopyPartResult(
      :eTag,
      :lastModified,
      :checksumCrc32,
      :checksumCrc32C,
      :checksumSha1,
      :checksumSha256
    ) = object;
    if (eTag != null) {
      result$
        ..add(const _i2.XmlElementName('ETag'))
        ..add(serializers.serialize(
          eTag,
          specifiedType: const FullType(String),
        ));
    }
    if (lastModified != null) {
      result$
        ..add(const _i2.XmlElementName('LastModified'))
        ..add(serializers.serialize(
          lastModified,
          specifiedType: const FullType.nullable(DateTime),
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
    return result$;
  }
}
