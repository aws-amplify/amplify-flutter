// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.upload_part_copy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/request_payer.dart' as _i3;

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
    String? copySourceSseCustomerAlgorithm,
    String? copySourceSseCustomerKey,
    String? copySourceSseCustomerKeyMd5,
    String? expectedBucketOwner,
    String? expectedSourceBucketOwner,
    required String key,
    int? partNumber,
    _i3.RequestPayer? requestPayer,
    String? sseCustomerAlgorithm,
    String? sseCustomerKey,
    String? sseCustomerKeyMd5,
    required String uploadId,
  }) {
    partNumber ??= 0;
    return _$UploadPartCopyRequest._(
      bucket: bucket,
      copySource: copySource,
      copySourceIfMatch: copySourceIfMatch,
      copySourceIfModifiedSince: copySourceIfModifiedSince,
      copySourceIfNoneMatch: copySourceIfNoneMatch,
      copySourceIfUnmodifiedSince: copySourceIfUnmodifiedSince,
      copySourceRange: copySourceRange,
      copySourceSseCustomerAlgorithm: copySourceSseCustomerAlgorithm,
      copySourceSseCustomerKey: copySourceSseCustomerKey,
      copySourceSseCustomerKeyMd5: copySourceSseCustomerKeyMd5,
      expectedBucketOwner: expectedBucketOwner,
      expectedSourceBucketOwner: expectedSourceBucketOwner,
      key: key,
      partNumber: partNumber,
      requestPayer: requestPayer,
      sseCustomerAlgorithm: sseCustomerAlgorithm,
      sseCustomerKey: sseCustomerKey,
      sseCustomerKeyMd5: sseCustomerKeyMd5,
      uploadId: uploadId,
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
          b.requestPayer = _i3.RequestPayer.values
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

  static const List<_i1.SmithySerializer> serializers = [
    UploadPartCopyRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UploadPartCopyRequestBuilder b) {
    b.partNumber = 0;
  }

  /// The bucket name.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When using this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// Specifies the source object for the copy operation. You specify the value in one of two formats, depending on whether you want to access the source object through an [access point](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html):
  ///
  /// *   For objects not accessed through an access point, specify the name of the source bucket and key of the source object, separated by a slash (/). For example, to copy the object `reports/january.pdf` from the bucket `awsexamplebucket`, use `awsexamplebucket/reports/january.pdf`. The value must be URL-encoded.
  ///
  /// *   For objects accessed through access points, specify the Amazon Resource Name (ARN) of the object as accessed through the access point, in the format `arn:aws:s3:::accesspoint//object/`. For example, to copy the object `reports/january.pdf` through access point `my-access-point` owned by account `123456789012` in Region `us-west-2`, use the URL encoding of `arn:aws:s3:us-west-2:123456789012:accesspoint/my-access-point/object/reports/january.pdf`. The value must be URL encoded.
  ///
  ///     Amazon S3 supports copy operations using access points only when the source and destination buckets are in the same Amazon Web Services Region.
  ///
  ///     Alternatively, for objects accessed through Amazon S3 on Outposts, specify the ARN of the object as accessed in the format `arn:aws:s3-outposts:::outpost//object/`. For example, to copy the object `reports/january.pdf` through outpost `my-outpost` owned by account `123456789012` in Region `us-west-2`, use the URL encoding of `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/object/reports/january.pdf`. The value must be URL-encoded.
  ///
  ///
  /// To copy a specific version of an object, append `?versionId=` to the value (for example, `awsexamplebucket/reports/january.pdf?versionId=QUpfdndhfd8438MNFDN93jdnJFkdmqnh893`). If you don't specify a version ID, Amazon S3 copies the latest version of the source object.
  String get copySource;

  /// Copies the object if its entity tag (ETag) matches the specified tag.
  String? get copySourceIfMatch;

  /// Copies the object if it has been modified since the specified time.
  DateTime? get copySourceIfModifiedSince;

  /// Copies the object if its entity tag (ETag) is different than the specified ETag.
  String? get copySourceIfNoneMatch;

  /// Copies the object if it hasn't been modified since the specified time.
  DateTime? get copySourceIfUnmodifiedSince;

  /// The range of bytes to copy from the source object. The range value must use the form bytes=first-last, where the first and last are the zero-based byte offsets to copy. For example, bytes=0-9 indicates that you want to copy the first 10 bytes of the source. You can copy a range only if the source object is greater than 5 MB.
  String? get copySourceRange;

  /// Specifies the algorithm to use when decrypting the source object (for example, AES256).
  String? get copySourceSseCustomerAlgorithm;

  /// Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be one that was used when the source object was created.
  String? get copySourceSseCustomerKey;

  /// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  String? get copySourceSseCustomerKeyMd5;

  /// The account ID of the expected destination bucket owner. If the destination bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// The account ID of the expected source bucket owner. If the source bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedSourceBucketOwner;

  /// Object key for which the multipart upload was initiated.
  String get key;

  /// Part number of part being copied. This is a positive integer between 1 and 10,000.
  int get partNumber;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  _i3.RequestPayer? get requestPayer;

  /// Specifies the algorithm to use to when encrypting the object (for example, AES256).
  String? get sseCustomerAlgorithm;

  /// Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the `x-amz-server-side-encryption-customer-algorithm` header. This must be the same encryption key specified in the initiate multipart upload request.
  String? get sseCustomerKey;

  /// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  String? get sseCustomerKeyMd5;

  /// Upload ID identifying the multipart upload whose part is being copied.
  String get uploadId;
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
        copySourceSseCustomerAlgorithm,
        copySourceSseCustomerKey,
        copySourceSseCustomerKeyMd5,
        expectedBucketOwner,
        expectedSourceBucketOwner,
        key,
        partNumber,
        requestPayer,
        sseCustomerAlgorithm,
        sseCustomerKey,
        sseCustomerKeyMd5,
        uploadId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UploadPartCopyRequest');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'copySource',
      copySource,
    );
    helper.add(
      'copySourceIfMatch',
      copySourceIfMatch,
    );
    helper.add(
      'copySourceIfModifiedSince',
      copySourceIfModifiedSince,
    );
    helper.add(
      'copySourceIfNoneMatch',
      copySourceIfNoneMatch,
    );
    helper.add(
      'copySourceIfUnmodifiedSince',
      copySourceIfUnmodifiedSince,
    );
    helper.add(
      'copySourceRange',
      copySourceRange,
    );
    helper.add(
      'copySourceSseCustomerAlgorithm',
      copySourceSseCustomerAlgorithm,
    );
    helper.add(
      'copySourceSseCustomerKey',
      '***SENSITIVE***',
    );
    helper.add(
      'copySourceSseCustomerKeyMd5',
      copySourceSseCustomerKeyMd5,
    );
    helper.add(
      'expectedBucketOwner',
      expectedBucketOwner,
    );
    helper.add(
      'expectedSourceBucketOwner',
      expectedSourceBucketOwner,
    );
    helper.add(
      'key',
      key,
    );
    helper.add(
      'partNumber',
      partNumber,
    );
    helper.add(
      'requestPayer',
      requestPayer,
    );
    helper.add(
      'sseCustomerAlgorithm',
      sseCustomerAlgorithm,
    );
    helper.add(
      'sseCustomerKey',
      '***SENSITIVE***',
    );
    helper.add(
      'sseCustomerKeyMd5',
      sseCustomerKeyMd5,
    );
    helper.add(
      'uploadId',
      uploadId,
    );
    return helper.toString();
  }
}

@_i4.internal
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

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UploadPartCopyRequestPayloadBuilder b) {}
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'UploadPartCopyRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
