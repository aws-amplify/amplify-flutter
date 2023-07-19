// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.create_multipart_upload_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/checksum_algorithm.dart'
    as _i5;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_charged.dart'
    as _i4;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/server_side_encryption.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i6;
import 'package:smithy/smithy.dart' as _i2;

part 'create_multipart_upload_output.g.dart';

abstract class CreateMultipartUploadOutput
    with _i1.AWSEquatable<CreateMultipartUploadOutput>
    implements
        Built<CreateMultipartUploadOutput, CreateMultipartUploadOutputBuilder>,
        _i2.HasPayload<CreateMultipartUploadOutputPayload> {
  factory CreateMultipartUploadOutput({
    DateTime? abortDate,
    String? abortRuleId,
    String? bucket,
    String? key,
    String? uploadId,
    _i3.ServerSideEncryption? serverSideEncryption,
    String? sseCustomerAlgorithm,
    String? sseCustomerKeyMd5,
    String? ssekmsKeyId,
    String? ssekmsEncryptionContext,
    bool? bucketKeyEnabled,
    _i4.RequestCharged? requestCharged,
    _i5.ChecksumAlgorithm? checksumAlgorithm,
  }) {
    return _$CreateMultipartUploadOutput._(
      abortDate: abortDate,
      abortRuleId: abortRuleId,
      bucket: bucket,
      key: key,
      uploadId: uploadId,
      serverSideEncryption: serverSideEncryption,
      sseCustomerAlgorithm: sseCustomerAlgorithm,
      sseCustomerKeyMd5: sseCustomerKeyMd5,
      ssekmsKeyId: ssekmsKeyId,
      ssekmsEncryptionContext: ssekmsEncryptionContext,
      bucketKeyEnabled: bucketKeyEnabled,
      requestCharged: requestCharged,
      checksumAlgorithm: checksumAlgorithm,
    );
  }

  factory CreateMultipartUploadOutput.build(
          [void Function(CreateMultipartUploadOutputBuilder) updates]) =
      _$CreateMultipartUploadOutput;

  const CreateMultipartUploadOutput._();

  /// Constructs a [CreateMultipartUploadOutput] from a [payload] and [response].
  factory CreateMultipartUploadOutput.fromResponse(
    CreateMultipartUploadOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      CreateMultipartUploadOutput.build((b) {
        b.bucket = payload.bucket;
        b.key = payload.key;
        b.uploadId = payload.uploadId;
        if (response.headers['x-amz-abort-date'] != null) {
          b.abortDate = _i2.Timestamp.parse(
            response.headers['x-amz-abort-date']!,
            format: _i2.TimestampFormat.httpDate,
          ).asDateTime;
        }
        if (response.headers['x-amz-abort-rule-id'] != null) {
          b.abortRuleId = response.headers['x-amz-abort-rule-id']!;
        }
        if (response.headers['x-amz-server-side-encryption'] != null) {
          b.serverSideEncryption = _i3.ServerSideEncryption.values
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
        if (response.headers['x-amz-checksum-algorithm'] != null) {
          b.checksumAlgorithm = _i5.ChecksumAlgorithm.values
              .byValue(response.headers['x-amz-checksum-algorithm']!);
        }
      });

  static const List<_i2.SmithySerializer<CreateMultipartUploadOutputPayload>>
      serializers = [CreateMultipartUploadOutputRestXmlSerializer()];

  /// If the bucket has a lifecycle rule configured with an action to abort incomplete multipart uploads and the prefix in the lifecycle rule matches the object name in the request, the response includes this header. The header indicates when the initiated multipart upload becomes eligible for an abort operation. For more information, see [Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Configuration](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config).
  ///
  /// The response also includes the `x-amz-abort-rule-id` header that provides the ID of the lifecycle configuration rule that defines this action.
  DateTime? get abortDate;

  /// This header is returned along with the `x-amz-abort-date` header. It identifies the applicable lifecycle configuration rule that defines the action to abort incomplete multipart uploads.
  String? get abortRuleId;

  /// The name of the bucket to which the multipart upload was initiated. Does not return the access point ARN or access point alias if used.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [What is S3 on Outposts?](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String? get bucket;

  /// Object key for which the multipart upload was initiated.
  String? get key;

  /// ID for the initiated multipart upload.
  String? get uploadId;

  /// The server-side encryption algorithm used when storing this object in Amazon S3 (for example, `AES256`, `aws:kms`).
  _i3.ServerSideEncryption? get serverSideEncryption;

  /// If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
  String? get sseCustomerAlgorithm;

  /// If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round-trip message integrity verification of the customer-provided encryption key.
  String? get sseCustomerKeyMd5;

  /// If present, specifies the ID of the Key Management Service (KMS) symmetric encryption customer managed key that was used for the object.
  String? get ssekmsKeyId;

  /// If present, specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The value of this header is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs.
  String? get ssekmsEncryptionContext;

  /// Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption with Key Management Service (KMS) keys (SSE-KMS).
  bool? get bucketKeyEnabled;

  /// If present, indicates that the requester was successfully charged for the request.
  _i4.RequestCharged? get requestCharged;

  /// The algorithm that was used to create a checksum of the object.
  _i5.ChecksumAlgorithm? get checksumAlgorithm;
  @override
  CreateMultipartUploadOutputPayload getPayload() =>
      CreateMultipartUploadOutputPayload((b) {
        b.bucket = bucket;
        b.key = key;
        b.uploadId = uploadId;
      });
  @override
  List<Object?> get props => [
        abortDate,
        abortRuleId,
        bucket,
        key,
        uploadId,
        serverSideEncryption,
        sseCustomerAlgorithm,
        sseCustomerKeyMd5,
        ssekmsKeyId,
        ssekmsEncryptionContext,
        bucketKeyEnabled,
        requestCharged,
        checksumAlgorithm,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateMultipartUploadOutput')
      ..add(
        'abortDate',
        abortDate,
      )
      ..add(
        'abortRuleId',
        abortRuleId,
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
        'uploadId',
        uploadId,
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
      )
      ..add(
        'checksumAlgorithm',
        checksumAlgorithm,
      );
    return helper.toString();
  }
}

@_i6.internal
abstract class CreateMultipartUploadOutputPayload
    with
        _i1.AWSEquatable<CreateMultipartUploadOutputPayload>
    implements
        Built<CreateMultipartUploadOutputPayload,
            CreateMultipartUploadOutputPayloadBuilder> {
  factory CreateMultipartUploadOutputPayload(
          [void Function(CreateMultipartUploadOutputPayloadBuilder) updates]) =
      _$CreateMultipartUploadOutputPayload;

  const CreateMultipartUploadOutputPayload._();

  /// The name of the bucket to which the multipart upload was initiated. Does not return the access point ARN or access point alias if used.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [What is S3 on Outposts?](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String? get bucket;

  /// Object key for which the multipart upload was initiated.
  String? get key;

  /// ID for the initiated multipart upload.
  String? get uploadId;
  @override
  List<Object?> get props => [
        bucket,
        key,
        uploadId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateMultipartUploadOutputPayload')
          ..add(
            'bucket',
            bucket,
          )
          ..add(
            'key',
            key,
          )
          ..add(
            'uploadId',
            uploadId,
          );
    return helper.toString();
  }
}

class CreateMultipartUploadOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<CreateMultipartUploadOutputPayload> {
  const CreateMultipartUploadOutputRestXmlSerializer()
      : super('CreateMultipartUploadOutput');

  @override
  Iterable<Type> get types => const [
        CreateMultipartUploadOutput,
        _$CreateMultipartUploadOutput,
        CreateMultipartUploadOutputPayload,
        _$CreateMultipartUploadOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  CreateMultipartUploadOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateMultipartUploadOutputPayloadBuilder();
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
        case 'Key':
          result.key = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'UploadId':
          result.uploadId = (serializers.deserialize(
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
    CreateMultipartUploadOutputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InitiateMultipartUploadResult',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final CreateMultipartUploadOutputPayload(:bucket, :key, :uploadId) = object;
    if (bucket != null) {
      result$
        ..add(const _i2.XmlElementName('Bucket'))
        ..add(serializers.serialize(
          bucket,
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
    if (uploadId != null) {
      result$
        ..add(const _i2.XmlElementName('UploadId'))
        ..add(serializers.serialize(
          uploadId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
