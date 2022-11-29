// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.upload_part_copy_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/copy_part_result.dart'
    as _i3;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_charged.dart'
    as _i4;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/server_side_encryption.dart'
    as _i5;
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
    bool? bucketKeyEnabled,
    _i3.CopyPartResult? copyPartResult,
    String? copySourceVersionId,
    _i4.RequestCharged? requestCharged,
    _i5.ServerSideEncryption? serverSideEncryption,
    String? sseCustomerAlgorithm,
    String? sseCustomerKeyMd5,
    String? ssekmsKeyId,
  }) {
    return _$UploadPartCopyOutput._(
      bucketKeyEnabled: bucketKeyEnabled,
      copyPartResult: copyPartResult,
      copySourceVersionId: copySourceVersionId,
      requestCharged: requestCharged,
      serverSideEncryption: serverSideEncryption,
      sseCustomerAlgorithm: sseCustomerAlgorithm,
      sseCustomerKeyMd5: sseCustomerKeyMd5,
      ssekmsKeyId: ssekmsKeyId,
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
          b.serverSideEncryption = _i5.ServerSideEncryption.values
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
          b.requestCharged = _i4.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    UploadPartCopyOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UploadPartCopyOutputBuilder b) {}

  /// Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption with Amazon Web Services KMS (SSE-KMS).
  bool? get bucketKeyEnabled;

  /// Container for all response elements.
  _i3.CopyPartResult? get copyPartResult;

  /// The version of the source object that was copied, if you have enabled versioning on the source bucket.
  String? get copySourceVersionId;

  /// If present, indicates that the requester was successfully charged for the request.
  _i4.RequestCharged? get requestCharged;

  /// The server-side encryption algorithm used when storing this object in Amazon S3 (for example, AES256, aws:kms).
  _i5.ServerSideEncryption? get serverSideEncryption;

  /// If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
  String? get sseCustomerAlgorithm;

  /// If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round-trip message integrity verification of the customer-provided encryption key.
  String? get sseCustomerKeyMd5;

  /// If present, specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric customer managed key that was used for the object.
  String? get ssekmsKeyId;
  @override
  _i3.CopyPartResult? getPayload() => copyPartResult ?? _i3.CopyPartResult();
  @override
  List<Object?> get props => [
        bucketKeyEnabled,
        copyPartResult,
        copySourceVersionId,
        requestCharged,
        serverSideEncryption,
        sseCustomerAlgorithm,
        sseCustomerKeyMd5,
        ssekmsKeyId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UploadPartCopyOutput');
    helper.add(
      'bucketKeyEnabled',
      bucketKeyEnabled,
    );
    helper.add(
      'copyPartResult',
      copyPartResult,
    );
    helper.add(
      'copySourceVersionId',
      copySourceVersionId,
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
      'sseCustomerAlgorithm',
      sseCustomerAlgorithm,
    );
    helper.add(
      'sseCustomerKeyMd5',
      sseCustomerKeyMd5,
    );
    helper.add(
      'ssekmsKeyId',
      '***SENSITIVE***',
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ETag':
          if (value != null) {
            result.eTag = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LastModified':
          if (value != null) {
            result.lastModified = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
    final payload = object is UploadPartCopyOutput
        ? object.getPayload()
        : (object as _i3.CopyPartResult?);
    final result = <Object?>[
      const _i2.XmlElementName(
        'CopyPartResult',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload == null) {
      return result;
    }
    if (payload.eTag != null) {
      result
        ..add(const _i2.XmlElementName('ETag'))
        ..add(serializers.serialize(
          payload.eTag!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastModified != null) {
      result
        ..add(const _i2.XmlElementName('LastModified'))
        ..add(serializers.serialize(
          payload.lastModified!,
          specifiedType: const FullType.nullable(DateTime),
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
    return result;
  }
}
