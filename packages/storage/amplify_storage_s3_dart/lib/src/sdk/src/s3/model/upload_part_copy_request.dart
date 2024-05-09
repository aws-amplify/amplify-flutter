// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.upload_part_copy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_payer.dart';
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'upload_part_copy_request.g.dart';

abstract class UploadPartCopyRequest
    with
        _i1.HttpInput<UploadPartCopyRequestPayload>,
        _i2.AWSEquatable<UploadPartCopyRequest>
    implements
        Built<UploadPartCopyRequest, UploadPartCopyRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<UploadPartCopyRequestPayload> {
  factory UploadPartCopyRequest({
    required String bucket,
    required String copySource,
    String? copySourceIfMatch,
    DateTime? copySourceIfModifiedSince,
    String? copySourceIfNoneMatch,
    DateTime? copySourceIfUnmodifiedSince,
    String? copySourceRange,
    required String key,
    int? partNumber,
    required String uploadId,
    String? sseCustomerAlgorithm,
    String? sseCustomerKey,
    String? sseCustomerKeyMd5,
    String? copySourceSseCustomerAlgorithm,
    String? copySourceSseCustomerKey,
    String? copySourceSseCustomerKeyMd5,
    RequestPayer? requestPayer,
    String? expectedBucketOwner,
    String? expectedSourceBucketOwner,
  }) {
    return _$UploadPartCopyRequest._(
      bucket: bucket,
      copySource: copySource,
      copySourceIfMatch: copySourceIfMatch,
      copySourceIfModifiedSince: copySourceIfModifiedSince,
      copySourceIfNoneMatch: copySourceIfNoneMatch,
      copySourceIfUnmodifiedSince: copySourceIfUnmodifiedSince,
      copySourceRange: copySourceRange,
      key: key,
      partNumber: partNumber,
      uploadId: uploadId,
      sseCustomerAlgorithm: sseCustomerAlgorithm,
      sseCustomerKey: sseCustomerKey,
      sseCustomerKeyMd5: sseCustomerKeyMd5,
      copySourceSseCustomerAlgorithm: copySourceSseCustomerAlgorithm,
      copySourceSseCustomerKey: copySourceSseCustomerKey,
      copySourceSseCustomerKeyMd5: copySourceSseCustomerKeyMd5,
      requestPayer: requestPayer,
      expectedBucketOwner: expectedBucketOwner,
      expectedSourceBucketOwner: expectedSourceBucketOwner,
    );
  }

  factory UploadPartCopyRequest.build(
          [void Function(UploadPartCopyRequestBuilder) updates]) =
      _$UploadPartCopyRequest;

  const UploadPartCopyRequest._();

  factory UploadPartCopyRequest.fromRequest(
    UploadPartCopyRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UploadPartCopyRequest.build((b) {
        if (request.headers['x-amz-copy-source'] != null) {
          b.copySource = request.headers['x-amz-copy-source']!;
        }
        if (request.headers['x-amz-copy-source-if-match'] != null) {
          b.copySourceIfMatch = request.headers['x-amz-copy-source-if-match']!;
        }
        if (request.headers['x-amz-copy-source-if-modified-since'] != null) {
          b.copySourceIfModifiedSince = _i1.Timestamp.parse(
            request.headers['x-amz-copy-source-if-modified-since']!,
            format: _i1.TimestampFormat.httpDate,
          ).asDateTime;
        }
        if (request.headers['x-amz-copy-source-if-none-match'] != null) {
          b.copySourceIfNoneMatch =
              request.headers['x-amz-copy-source-if-none-match']!;
        }
        if (request.headers['x-amz-copy-source-if-unmodified-since'] != null) {
          b.copySourceIfUnmodifiedSince = _i1.Timestamp.parse(
            request.headers['x-amz-copy-source-if-unmodified-since']!,
            format: _i1.TimestampFormat.httpDate,
          ).asDateTime;
        }
        if (request.headers['x-amz-copy-source-range'] != null) {
          b.copySourceRange = request.headers['x-amz-copy-source-range']!;
        }
        if (request
                .headers['x-amz-server-side-encryption-customer-algorithm'] !=
            null) {
          b.sseCustomerAlgorithm = request
              .headers['x-amz-server-side-encryption-customer-algorithm']!;
        }
        if (request.headers['x-amz-server-side-encryption-customer-key'] !=
            null) {
          b.sseCustomerKey =
              request.headers['x-amz-server-side-encryption-customer-key']!;
        }
        if (request.headers['x-amz-server-side-encryption-customer-key-MD5'] !=
            null) {
          b.sseCustomerKeyMd5 =
              request.headers['x-amz-server-side-encryption-customer-key-MD5']!;
        }
        if (request.headers[
                'x-amz-copy-source-server-side-encryption-customer-algorithm'] !=
            null) {
          b.copySourceSseCustomerAlgorithm = request.headers[
              'x-amz-copy-source-server-side-encryption-customer-algorithm']!;
        }
        if (request.headers[
                'x-amz-copy-source-server-side-encryption-customer-key'] !=
            null) {
          b.copySourceSseCustomerKey = request.headers[
              'x-amz-copy-source-server-side-encryption-customer-key']!;
        }
        if (request.headers[
                'x-amz-copy-source-server-side-encryption-customer-key-MD5'] !=
            null) {
          b.copySourceSseCustomerKeyMd5 = request.headers[
              'x-amz-copy-source-server-side-encryption-customer-key-MD5']!;
        }
        if (request.headers['x-amz-request-payer'] != null) {
          b.requestPayer = RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
        }
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (request.headers['x-amz-source-expected-bucket-owner'] != null) {
          b.expectedSourceBucketOwner =
              request.headers['x-amz-source-expected-bucket-owner']!;
        }
        if (request.queryParameters['partNumber'] != null) {
          b.partNumber = int.parse(request.queryParameters['partNumber']!);
        }
        if (request.queryParameters['uploadId'] != null) {
          b.uploadId = request.queryParameters['uploadId']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
        if (labels['key'] != null) {
          b.key = labels['key']!;
        }
      });

  static const List<_i1.SmithySerializer<UploadPartCopyRequestPayload>>
      serializers = [UploadPartCopyRequestRestXmlSerializer()];

  /// The bucket name.
  ///
  /// **Directory buckets** \- When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format `_Bucket_name_.s3express-_az_id_._region_.amazonaws.com`. Path-style requests are not supported. Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format `_bucket\_base\_name_--_az-id_--x-s3` (for example, `_DOC-EXAMPLE-BUCKET_--_usw2-az2_--x-s3`). For information about bucket naming restrictions, see [Directory bucket naming rules](https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html) in the _Amazon S3 User Guide_.
  ///
  /// **Access points** \- When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// Access points and Object Lambda access points are not supported by directory buckets.
  ///
  /// **S3 on Outposts** \- When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [What is S3 on Outposts?](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// Specifies the source object for the copy operation. You specify the value in one of two formats, depending on whether you want to access the source object through an [access point](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html):
  ///
  /// *   For objects not accessed through an access point, specify the name of the source bucket and key of the source object, separated by a slash (/). For example, to copy the object `reports/january.pdf` from the bucket `awsexamplebucket`, use `awsexamplebucket/reports/january.pdf`. The value must be URL-encoded.
  ///
  /// *   For objects accessed through access points, specify the Amazon Resource Name (ARN) of the object as accessed through the access point, in the format `arn:aws:s3:::accesspoint//object/`. For example, to copy the object `reports/january.pdf` through access point `my-access-point` owned by account `123456789012` in Region `us-west-2`, use the URL encoding of `arn:aws:s3:us-west-2:123456789012:accesspoint/my-access-point/object/reports/january.pdf`. The value must be URL encoded.
  ///
  ///     *   Amazon S3 supports copy operations using Access points only when the source and destination buckets are in the same Amazon Web Services Region.
  ///
  ///     *   Access points are not supported by directory buckets.
  ///
  ///
  ///     Alternatively, for objects accessed through Amazon S3 on Outposts, specify the ARN of the object as accessed in the format `arn:aws:s3-outposts:::outpost//object/`. For example, to copy the object `reports/january.pdf` through outpost `my-outpost` owned by account `123456789012` in Region `us-west-2`, use the URL encoding of `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/object/reports/january.pdf`. The value must be URL-encoded.
  ///
  ///
  /// If your bucket has versioning enabled, you could have multiple versions of the same object. By default, `x-amz-copy-source` identifies the current version of the source object to copy. To copy a specific version of the source object to copy, append `?versionId=` to the `x-amz-copy-source` request header (for example, `x-amz-copy-source: /awsexamplebucket/reports/january.pdf?versionId=QUpfdndhfd8438MNFDN93jdnJFkdmqnh893`).
  ///
  /// If the current version is a delete marker and you don't specify a versionId in the `x-amz-copy-source` request header, Amazon S3 returns a `404 Not Found` error, because the object does not exist. If you specify versionId in the `x-amz-copy-source` and the versionId is a delete marker, Amazon S3 returns an HTTP `400 Bad Request` error, because you are not allowed to specify a delete marker as a version for the `x-amz-copy-source`.
  ///
  /// **Directory buckets** \- S3 Versioning isn't enabled and supported for directory buckets.
  String get copySource;

  /// Copies the object if its entity tag (ETag) matches the specified tag.
  ///
  /// If both of the `x-amz-copy-source-if-match` and `x-amz-copy-source-if-unmodified-since` headers are present in the request as follows:
  ///
  /// `x-amz-copy-source-if-match` condition evaluates to `true`, and;
  ///
  /// `x-amz-copy-source-if-unmodified-since` condition evaluates to `false`;
  ///
  /// Amazon S3 returns `200 OK` and copies the data.
  String? get copySourceIfMatch;

  /// Copies the object if it has been modified since the specified time.
  ///
  /// If both of the `x-amz-copy-source-if-none-match` and `x-amz-copy-source-if-modified-since` headers are present in the request as follows:
  ///
  /// `x-amz-copy-source-if-none-match` condition evaluates to `false`, and;
  ///
  /// `x-amz-copy-source-if-modified-since` condition evaluates to `true`;
  ///
  /// Amazon S3 returns `412 Precondition Failed` response code.
  DateTime? get copySourceIfModifiedSince;

  /// Copies the object if its entity tag (ETag) is different than the specified ETag.
  ///
  /// If both of the `x-amz-copy-source-if-none-match` and `x-amz-copy-source-if-modified-since` headers are present in the request as follows:
  ///
  /// `x-amz-copy-source-if-none-match` condition evaluates to `false`, and;
  ///
  /// `x-amz-copy-source-if-modified-since` condition evaluates to `true`;
  ///
  /// Amazon S3 returns `412 Precondition Failed` response code.
  String? get copySourceIfNoneMatch;

  /// Copies the object if it hasn't been modified since the specified time.
  ///
  /// If both of the `x-amz-copy-source-if-match` and `x-amz-copy-source-if-unmodified-since` headers are present in the request as follows:
  ///
  /// `x-amz-copy-source-if-match` condition evaluates to `true`, and;
  ///
  /// `x-amz-copy-source-if-unmodified-since` condition evaluates to `false`;
  ///
  /// Amazon S3 returns `200 OK` and copies the data.
  DateTime? get copySourceIfUnmodifiedSince;

  /// The range of bytes to copy from the source object. The range value must use the form bytes=first-last, where the first and last are the zero-based byte offsets to copy. For example, bytes=0-9 indicates that you want to copy the first 10 bytes of the source. You can copy a range only if the source object is greater than 5 MB.
  String? get copySourceRange;

  /// Object key for which the multipart upload was initiated.
  String get key;

  /// Part number of part being copied. This is a positive integer between 1 and 10,000.
  int? get partNumber;

  /// Upload ID identifying the multipart upload whose part is being copied.
  String get uploadId;

  /// Specifies the algorithm to use when encrypting the object (for example, AES256).
  ///
  /// This functionality is not supported when the destination bucket is a directory bucket.
  String? get sseCustomerAlgorithm;

  /// Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the `x-amz-server-side-encryption-customer-algorithm` header. This must be the same encryption key specified in the initiate multipart upload request.
  ///
  /// This functionality is not supported when the destination bucket is a directory bucket.
  String? get sseCustomerKey;

  /// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  ///
  /// This functionality is not supported when the destination bucket is a directory bucket.
  String? get sseCustomerKeyMd5;

  /// Specifies the algorithm to use when decrypting the source object (for example, `AES256`).
  ///
  /// This functionality is not supported when the source object is in a directory bucket.
  String? get copySourceSseCustomerAlgorithm;

  /// Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be one that was used when the source object was created.
  ///
  /// This functionality is not supported when the source object is in a directory bucket.
  String? get copySourceSseCustomerKey;

  /// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  ///
  /// This functionality is not supported when the source object is in a directory bucket.
  String? get copySourceSseCustomerKeyMd5;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. If either the source or destination S3 bucket has Requester Pays enabled, the requester will pay for corresponding charges to copy the object. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  ///
  /// This functionality is not supported for directory buckets.
  RequestPayer? get requestPayer;

  /// The account ID of the expected destination bucket owner. If the account ID that you provide does not match the actual owner of the destination bucket, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// The account ID of the expected source bucket owner. If the account ID that you provide does not match the actual owner of the source bucket, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedSourceBucketOwner;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'Bucket':
        return bucket;
      case 'Key':
        return this.key;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  UploadPartCopyRequestPayload getPayload() => UploadPartCopyRequestPayload();

  @override
  List<Object?> get props => [
        bucket,
        copySource,
        copySourceIfMatch,
        copySourceIfModifiedSince,
        copySourceIfNoneMatch,
        copySourceIfUnmodifiedSince,
        copySourceRange,
        key,
        partNumber,
        uploadId,
        sseCustomerAlgorithm,
        sseCustomerKey,
        sseCustomerKeyMd5,
        copySourceSseCustomerAlgorithm,
        copySourceSseCustomerKey,
        copySourceSseCustomerKeyMd5,
        requestPayer,
        expectedBucketOwner,
        expectedSourceBucketOwner,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UploadPartCopyRequest')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'copySource',
        copySource,
      )
      ..add(
        'copySourceIfMatch',
        copySourceIfMatch,
      )
      ..add(
        'copySourceIfModifiedSince',
        copySourceIfModifiedSince,
      )
      ..add(
        'copySourceIfNoneMatch',
        copySourceIfNoneMatch,
      )
      ..add(
        'copySourceIfUnmodifiedSince',
        copySourceIfUnmodifiedSince,
      )
      ..add(
        'copySourceRange',
        copySourceRange,
      )
      ..add(
        'key',
        key,
      )
      ..add(
        'partNumber',
        partNumber,
      )
      ..add(
        'uploadId',
        uploadId,
      )
      ..add(
        'sseCustomerAlgorithm',
        sseCustomerAlgorithm,
      )
      ..add(
        'sseCustomerKey',
        '***SENSITIVE***',
      )
      ..add(
        'sseCustomerKeyMd5',
        sseCustomerKeyMd5,
      )
      ..add(
        'copySourceSseCustomerAlgorithm',
        copySourceSseCustomerAlgorithm,
      )
      ..add(
        'copySourceSseCustomerKey',
        '***SENSITIVE***',
      )
      ..add(
        'copySourceSseCustomerKeyMd5',
        copySourceSseCustomerKeyMd5,
      )
      ..add(
        'requestPayer',
        requestPayer,
      )
      ..add(
        'expectedBucketOwner',
        expectedBucketOwner,
      )
      ..add(
        'expectedSourceBucketOwner',
        expectedSourceBucketOwner,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class UploadPartCopyRequestPayload
    with
        _i2.AWSEquatable<UploadPartCopyRequestPayload>
    implements
        Built<UploadPartCopyRequestPayload,
            UploadPartCopyRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory UploadPartCopyRequestPayload(
          [void Function(UploadPartCopyRequestPayloadBuilder) updates]) =
      _$UploadPartCopyRequestPayload;

  const UploadPartCopyRequestPayload._();

  @override
  List<Object?> get props => [];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UploadPartCopyRequestPayload');
    return helper.toString();
  }
}

class UploadPartCopyRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<UploadPartCopyRequestPayload> {
  const UploadPartCopyRequestRestXmlSerializer()
      : super('UploadPartCopyRequest');

  @override
  Iterable<Type> get types => const [
        UploadPartCopyRequest,
        _$UploadPartCopyRequest,
        UploadPartCopyRequestPayload,
        _$UploadPartCopyRequestPayload,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  UploadPartCopyRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return UploadPartCopyRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UploadPartCopyRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UploadPartCopyRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
