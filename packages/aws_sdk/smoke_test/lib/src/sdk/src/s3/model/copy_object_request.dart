// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.copy_object_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i12;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i13;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/metadata_directive.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/object_canned_acl.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_legal_hold_status.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_mode.dart' as _i10;
import 'package:smoke_test/src/sdk/src/s3/model/request_payer.dart' as _i9;
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/storage_class.dart' as _i8;
import 'package:smoke_test/src/sdk/src/s3/model/tagging_directive.dart' as _i6;

part 'copy_object_request.g.dart';

abstract class CopyObjectRequest
    with
        _i1.HttpInput<CopyObjectRequestPayload>,
        _i2.AWSEquatable<CopyObjectRequest>
    implements
        Built<CopyObjectRequest, CopyObjectRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<CopyObjectRequestPayload> {
  factory CopyObjectRequest({
    _i3.ObjectCannedAcl? acl,
    required String bucket,
    String? cacheControl,
    _i4.ChecksumAlgorithm? checksumAlgorithm,
    String? contentDisposition,
    String? contentEncoding,
    String? contentLanguage,
    String? contentType,
    required String copySource,
    String? copySourceIfMatch,
    DateTime? copySourceIfModifiedSince,
    String? copySourceIfNoneMatch,
    DateTime? copySourceIfUnmodifiedSince,
    DateTime? expires,
    String? grantFullControl,
    String? grantRead,
    String? grantReadAcp,
    String? grantWriteAcp,
    required String key,
    Map<String, String>? metadata,
    _i5.MetadataDirective? metadataDirective,
    _i6.TaggingDirective? taggingDirective,
    _i7.ServerSideEncryption? serverSideEncryption,
    _i8.StorageClass? storageClass,
    String? websiteRedirectLocation,
    String? sseCustomerAlgorithm,
    String? sseCustomerKey,
    String? sseCustomerKeyMd5,
    String? ssekmsKeyId,
    String? ssekmsEncryptionContext,
    bool? bucketKeyEnabled,
    String? copySourceSseCustomerAlgorithm,
    String? copySourceSseCustomerKey,
    String? copySourceSseCustomerKeyMd5,
    _i9.RequestPayer? requestPayer,
    String? tagging,
    _i10.ObjectLockMode? objectLockMode,
    DateTime? objectLockRetainUntilDate,
    _i11.ObjectLockLegalHoldStatus? objectLockLegalHoldStatus,
    String? expectedBucketOwner,
    String? expectedSourceBucketOwner,
  }) {
    return _$CopyObjectRequest._(
      acl: acl,
      bucket: bucket,
      cacheControl: cacheControl,
      checksumAlgorithm: checksumAlgorithm,
      contentDisposition: contentDisposition,
      contentEncoding: contentEncoding,
      contentLanguage: contentLanguage,
      contentType: contentType,
      copySource: copySource,
      copySourceIfMatch: copySourceIfMatch,
      copySourceIfModifiedSince: copySourceIfModifiedSince,
      copySourceIfNoneMatch: copySourceIfNoneMatch,
      copySourceIfUnmodifiedSince: copySourceIfUnmodifiedSince,
      expires: expires,
      grantFullControl: grantFullControl,
      grantRead: grantRead,
      grantReadAcp: grantReadAcp,
      grantWriteAcp: grantWriteAcp,
      key: key,
      metadata: metadata == null ? null : _i12.BuiltMap(metadata),
      metadataDirective: metadataDirective,
      taggingDirective: taggingDirective,
      serverSideEncryption: serverSideEncryption,
      storageClass: storageClass,
      websiteRedirectLocation: websiteRedirectLocation,
      sseCustomerAlgorithm: sseCustomerAlgorithm,
      sseCustomerKey: sseCustomerKey,
      sseCustomerKeyMd5: sseCustomerKeyMd5,
      ssekmsKeyId: ssekmsKeyId,
      ssekmsEncryptionContext: ssekmsEncryptionContext,
      bucketKeyEnabled: bucketKeyEnabled,
      copySourceSseCustomerAlgorithm: copySourceSseCustomerAlgorithm,
      copySourceSseCustomerKey: copySourceSseCustomerKey,
      copySourceSseCustomerKeyMd5: copySourceSseCustomerKeyMd5,
      requestPayer: requestPayer,
      tagging: tagging,
      objectLockMode: objectLockMode,
      objectLockRetainUntilDate: objectLockRetainUntilDate,
      objectLockLegalHoldStatus: objectLockLegalHoldStatus,
      expectedBucketOwner: expectedBucketOwner,
      expectedSourceBucketOwner: expectedSourceBucketOwner,
    );
  }

  factory CopyObjectRequest.build(
      [void Function(CopyObjectRequestBuilder) updates]) = _$CopyObjectRequest;

  const CopyObjectRequest._();

  factory CopyObjectRequest.fromRequest(
    CopyObjectRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      CopyObjectRequest.build((b) {
        if (request.headers['x-amz-acl'] != null) {
          b.acl =
              _i3.ObjectCannedAcl.values.byValue(request.headers['x-amz-acl']!);
        }
        if (request.headers['Cache-Control'] != null) {
          b.cacheControl = request.headers['Cache-Control']!;
        }
        if (request.headers['x-amz-checksum-algorithm'] != null) {
          b.checksumAlgorithm = _i4.ChecksumAlgorithm.values
              .byValue(request.headers['x-amz-checksum-algorithm']!);
        }
        if (request.headers['Content-Disposition'] != null) {
          b.contentDisposition = request.headers['Content-Disposition']!;
        }
        if (request.headers['Content-Encoding'] != null) {
          b.contentEncoding = request.headers['Content-Encoding']!;
        }
        if (request.headers['Content-Language'] != null) {
          b.contentLanguage = request.headers['Content-Language']!;
        }
        if (request.headers['Content-Type'] != null) {
          b.contentType = request.headers['Content-Type']!;
        }
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
        if (request.headers['Expires'] != null) {
          b.expires = _i1.Timestamp.parse(
            request.headers['Expires']!,
            format: _i1.TimestampFormat.httpDate,
          ).asDateTime;
        }
        if (request.headers['x-amz-grant-full-control'] != null) {
          b.grantFullControl = request.headers['x-amz-grant-full-control']!;
        }
        if (request.headers['x-amz-grant-read'] != null) {
          b.grantRead = request.headers['x-amz-grant-read']!;
        }
        if (request.headers['x-amz-grant-read-acp'] != null) {
          b.grantReadAcp = request.headers['x-amz-grant-read-acp']!;
        }
        if (request.headers['x-amz-grant-write-acp'] != null) {
          b.grantWriteAcp = request.headers['x-amz-grant-write-acp']!;
        }
        if (request.headers['x-amz-metadata-directive'] != null) {
          b.metadataDirective = _i5.MetadataDirective.values
              .byValue(request.headers['x-amz-metadata-directive']!);
        }
        if (request.headers['x-amz-tagging-directive'] != null) {
          b.taggingDirective = _i6.TaggingDirective.values
              .byValue(request.headers['x-amz-tagging-directive']!);
        }
        if (request.headers['x-amz-server-side-encryption'] != null) {
          b.serverSideEncryption = _i7.ServerSideEncryption.values
              .byValue(request.headers['x-amz-server-side-encryption']!);
        }
        if (request.headers['x-amz-storage-class'] != null) {
          b.storageClass = _i8.StorageClass.values
              .byValue(request.headers['x-amz-storage-class']!);
        }
        if (request.headers['x-amz-website-redirect-location'] != null) {
          b.websiteRedirectLocation =
              request.headers['x-amz-website-redirect-location']!;
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
        if (request.headers['x-amz-server-side-encryption-aws-kms-key-id'] !=
            null) {
          b.ssekmsKeyId =
              request.headers['x-amz-server-side-encryption-aws-kms-key-id']!;
        }
        if (request.headers['x-amz-server-side-encryption-context'] != null) {
          b.ssekmsEncryptionContext =
              request.headers['x-amz-server-side-encryption-context']!;
        }
        if (request
                .headers['x-amz-server-side-encryption-bucket-key-enabled'] !=
            null) {
          b.bucketKeyEnabled = request.headers[
                  'x-amz-server-side-encryption-bucket-key-enabled']! ==
              'true';
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
          b.requestPayer = _i9.RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
        }
        if (request.headers['x-amz-tagging'] != null) {
          b.tagging = request.headers['x-amz-tagging']!;
        }
        if (request.headers['x-amz-object-lock-mode'] != null) {
          b.objectLockMode = _i10.ObjectLockMode.values
              .byValue(request.headers['x-amz-object-lock-mode']!);
        }
        if (request.headers['x-amz-object-lock-retain-until-date'] != null) {
          b.objectLockRetainUntilDate = _i1.Timestamp.parse(
            request.headers['x-amz-object-lock-retain-until-date']!,
            format: _i1.TimestampFormat.dateTime,
          ).asDateTime;
        }
        if (request.headers['x-amz-object-lock-legal-hold'] != null) {
          b.objectLockLegalHoldStatus = _i11.ObjectLockLegalHoldStatus.values
              .byValue(request.headers['x-amz-object-lock-legal-hold']!);
        }
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (request.headers['x-amz-source-expected-bucket-owner'] != null) {
          b.expectedSourceBucketOwner =
              request.headers['x-amz-source-expected-bucket-owner']!;
        }
        b.metadata.addEntries(request.headers.entries
            .where((el) => el.key.startsWith('x-amz-meta-'))
            .map((el) => MapEntry(
                  el.key.replaceFirst(
                    'x-amz-meta-',
                    '',
                  ),
                  el.value,
                )));
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
        if (labels['key'] != null) {
          b.key = labels['key']!;
        }
      });

  static const List<_i1.SmithySerializer<CopyObjectRequestPayload>>
      serializers = [CopyObjectRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CopyObjectRequestBuilder b) {}

  /// The canned ACL to apply to the object.
  ///
  /// This action is not supported by Amazon S3 on Outposts.
  _i3.ObjectCannedAcl? get acl;

  /// The name of the destination bucket.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [What is S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// Specifies caching behavior along the request/reply chain.
  String? get cacheControl;

  /// Indicates the algorithm you want Amazon S3 to use to create the checksum for the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  _i4.ChecksumAlgorithm? get checksumAlgorithm;

  /// Specifies presentational information for the object.
  String? get contentDisposition;

  /// Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
  String? get contentEncoding;

  /// The language the content is in.
  String? get contentLanguage;

  /// A standard MIME type describing the format of the object data.
  String? get contentType;

  /// Specifies the source object for the copy operation. You specify the value in one of two formats, depending on whether you want to access the source object through an [access point](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html):
  ///
  /// *   For objects not accessed through an access point, specify the name of the source bucket and the key of the source object, separated by a slash (/). For example, to copy the object `reports/january.pdf` from the bucket `awsexamplebucket`, use `awsexamplebucket/reports/january.pdf`. The value must be URL-encoded.
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

  /// The date and time at which the object is no longer cacheable.
  DateTime? get expires;

  /// Gives the grantee READ, READ\_ACP, and WRITE\_ACP permissions on the object.
  ///
  /// This action is not supported by Amazon S3 on Outposts.
  String? get grantFullControl;

  /// Allows grantee to read the object data and its metadata.
  ///
  /// This action is not supported by Amazon S3 on Outposts.
  String? get grantRead;

  /// Allows grantee to read the object ACL.
  ///
  /// This action is not supported by Amazon S3 on Outposts.
  String? get grantReadAcp;

  /// Allows grantee to write the ACL for the applicable object.
  ///
  /// This action is not supported by Amazon S3 on Outposts.
  String? get grantWriteAcp;

  /// The key of the destination object.
  String get key;

  /// A map of metadata to store with the object in S3.
  _i12.BuiltMap<String, String>? get metadata;

  /// Specifies whether the metadata is copied from the source object or replaced with metadata provided in the request.
  _i5.MetadataDirective? get metadataDirective;

  /// Specifies whether the object tag-set are copied from the source object or replaced with tag-set provided in the request.
  _i6.TaggingDirective? get taggingDirective;

  /// The server-side encryption algorithm used when storing this object in Amazon S3 (for example, `AES256`, `aws:kms`, `aws:kms:dsse`).
  _i7.ServerSideEncryption? get serverSideEncryption;

  /// By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The STANDARD storage class provides high durability and high availability. Depending on performance needs, you can specify a different Storage Class. Amazon S3 on Outposts only uses the OUTPOSTS Storage Class. For more information, see [Storage Classes](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html) in the _Amazon S3 User Guide_.
  _i8.StorageClass? get storageClass;

  /// If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata. This value is unique to each object and is not copied when using the `x-amz-metadata-directive` header. Instead, you may opt to provide this header in combination with the directive.
  String? get websiteRedirectLocation;

  /// Specifies the algorithm to use to when encrypting the object (for example, AES256).
  String? get sseCustomerAlgorithm;

  /// Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the `x-amz-server-side-encryption-customer-algorithm` header.
  String? get sseCustomerKey;

  /// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  String? get sseCustomerKeyMd5;

  /// Specifies the KMS key ID to use for object encryption. All GET and PUT requests for an object protected by KMS will fail if they're not made via SSL or using SigV4. For information about configuring any of the officially supported Amazon Web Services SDKs and Amazon Web Services CLI, see [Specifying the Signature Version in Request Authentication](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version) in the _Amazon S3 User Guide_.
  String? get ssekmsKeyId;

  /// Specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The value of this header is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs.
  String? get ssekmsEncryptionContext;

  /// Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with server-side encryption using Key Management Service (KMS) keys (SSE-KMS). Setting this header to `true` causes Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS.
  ///
  /// Specifying this header with a COPY action doesn’t affect bucket-level settings for S3 Bucket Key.
  bool? get bucketKeyEnabled;

  /// Specifies the algorithm to use when decrypting the source object (for example, AES256).
  String? get copySourceSseCustomerAlgorithm;

  /// Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be one that was used when the source object was created.
  String? get copySourceSseCustomerKey;

  /// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  String? get copySourceSseCustomerKeyMd5;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  _i9.RequestPayer? get requestPayer;

  /// The tag-set for the object destination object this value must be used in conjunction with the `TaggingDirective`. The tag-set must be encoded as URL Query parameters.
  String? get tagging;

  /// The Object Lock mode that you want to apply to the copied object.
  _i10.ObjectLockMode? get objectLockMode;

  /// The date and time when you want the copied object's Object Lock to expire.
  DateTime? get objectLockRetainUntilDate;

  /// Specifies whether you want to apply a legal hold to the copied object.
  _i11.ObjectLockLegalHoldStatus? get objectLockLegalHoldStatus;

  /// The account ID of the expected destination bucket owner. If the destination bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// The account ID of the expected source bucket owner. If the source bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
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
  CopyObjectRequestPayload getPayload() => CopyObjectRequestPayload();
  @override
  List<Object?> get props => [
        acl,
        bucket,
        cacheControl,
        checksumAlgorithm,
        contentDisposition,
        contentEncoding,
        contentLanguage,
        contentType,
        copySource,
        copySourceIfMatch,
        copySourceIfModifiedSince,
        copySourceIfNoneMatch,
        copySourceIfUnmodifiedSince,
        expires,
        grantFullControl,
        grantRead,
        grantReadAcp,
        grantWriteAcp,
        key,
        metadata,
        metadataDirective,
        taggingDirective,
        serverSideEncryption,
        storageClass,
        websiteRedirectLocation,
        sseCustomerAlgorithm,
        sseCustomerKey,
        sseCustomerKeyMd5,
        ssekmsKeyId,
        ssekmsEncryptionContext,
        bucketKeyEnabled,
        copySourceSseCustomerAlgorithm,
        copySourceSseCustomerKey,
        copySourceSseCustomerKeyMd5,
        requestPayer,
        tagging,
        objectLockMode,
        objectLockRetainUntilDate,
        objectLockLegalHoldStatus,
        expectedBucketOwner,
        expectedSourceBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CopyObjectRequest')
      ..add(
        'acl',
        acl,
      )
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'cacheControl',
        cacheControl,
      )
      ..add(
        'checksumAlgorithm',
        checksumAlgorithm,
      )
      ..add(
        'contentDisposition',
        contentDisposition,
      )
      ..add(
        'contentEncoding',
        contentEncoding,
      )
      ..add(
        'contentLanguage',
        contentLanguage,
      )
      ..add(
        'contentType',
        contentType,
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
        'expires',
        expires,
      )
      ..add(
        'grantFullControl',
        grantFullControl,
      )
      ..add(
        'grantRead',
        grantRead,
      )
      ..add(
        'grantReadAcp',
        grantReadAcp,
      )
      ..add(
        'grantWriteAcp',
        grantWriteAcp,
      )
      ..add(
        'key',
        key,
      )
      ..add(
        'metadata',
        metadata,
      )
      ..add(
        'metadataDirective',
        metadataDirective,
      )
      ..add(
        'taggingDirective',
        taggingDirective,
      )
      ..add(
        'serverSideEncryption',
        serverSideEncryption,
      )
      ..add(
        'storageClass',
        storageClass,
      )
      ..add(
        'websiteRedirectLocation',
        websiteRedirectLocation,
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
        'tagging',
        tagging,
      )
      ..add(
        'objectLockMode',
        objectLockMode,
      )
      ..add(
        'objectLockRetainUntilDate',
        objectLockRetainUntilDate,
      )
      ..add(
        'objectLockLegalHoldStatus',
        objectLockLegalHoldStatus,
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

@_i13.internal
abstract class CopyObjectRequestPayload
    with _i2.AWSEquatable<CopyObjectRequestPayload>
    implements
        Built<CopyObjectRequestPayload, CopyObjectRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory CopyObjectRequestPayload(
          [void Function(CopyObjectRequestPayloadBuilder) updates]) =
      _$CopyObjectRequestPayload;

  const CopyObjectRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CopyObjectRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CopyObjectRequestPayload');
    return helper.toString();
  }
}

class CopyObjectRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<CopyObjectRequestPayload> {
  const CopyObjectRequestRestXmlSerializer() : super('CopyObjectRequest');

  @override
  Iterable<Type> get types => const [
        CopyObjectRequest,
        _$CopyObjectRequest,
        CopyObjectRequestPayload,
        _$CopyObjectRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  CopyObjectRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return CopyObjectRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CopyObjectRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CopyObjectRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
