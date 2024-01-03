// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.copy_object_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/checksum_algorithm.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/metadata_directive.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_canned_acl.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_lock_legal_hold_status.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_lock_mode.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_payer.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/server_side_encryption.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/storage_class.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/tagging_directive.dart';
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

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
    ObjectCannedAcl? acl,
    required String bucket,
    String? cacheControl,
    ChecksumAlgorithm? checksumAlgorithm,
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
    MetadataDirective? metadataDirective,
    TaggingDirective? taggingDirective,
    ServerSideEncryption? serverSideEncryption,
    StorageClass? storageClass,
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
    RequestPayer? requestPayer,
    String? tagging,
    ObjectLockMode? objectLockMode,
    DateTime? objectLockRetainUntilDate,
    ObjectLockLegalHoldStatus? objectLockLegalHoldStatus,
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
      metadata: metadata == null ? null : _i3.BuiltMap(metadata),
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
          b.acl = ObjectCannedAcl.values.byValue(request.headers['x-amz-acl']!);
        }
        if (request.headers['Cache-Control'] != null) {
          b.cacheControl = request.headers['Cache-Control']!;
        }
        if (request.headers['x-amz-checksum-algorithm'] != null) {
          b.checksumAlgorithm = ChecksumAlgorithm.values
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
          b.metadataDirective = MetadataDirective.values
              .byValue(request.headers['x-amz-metadata-directive']!);
        }
        if (request.headers['x-amz-tagging-directive'] != null) {
          b.taggingDirective = TaggingDirective.values
              .byValue(request.headers['x-amz-tagging-directive']!);
        }
        if (request.headers['x-amz-server-side-encryption'] != null) {
          b.serverSideEncryption = ServerSideEncryption.values
              .byValue(request.headers['x-amz-server-side-encryption']!);
        }
        if (request.headers['x-amz-storage-class'] != null) {
          b.storageClass = StorageClass.values
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
          b.requestPayer = RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
        }
        if (request.headers['x-amz-tagging'] != null) {
          b.tagging = request.headers['x-amz-tagging']!;
        }
        if (request.headers['x-amz-object-lock-mode'] != null) {
          b.objectLockMode = ObjectLockMode.values
              .byValue(request.headers['x-amz-object-lock-mode']!);
        }
        if (request.headers['x-amz-object-lock-retain-until-date'] != null) {
          b.objectLockRetainUntilDate = _i1.Timestamp.parse(
            request.headers['x-amz-object-lock-retain-until-date']!,
            format: _i1.TimestampFormat.dateTime,
          ).asDateTime;
        }
        if (request.headers['x-amz-object-lock-legal-hold'] != null) {
          b.objectLockLegalHoldStatus = ObjectLockLegalHoldStatus.values
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

  /// The canned access control list (ACL) to apply to the object.
  ///
  /// When you copy an object, the ACL metadata is not preserved and is set to `private` by default. Only the owner has full access control. To override the default ACL setting, specify a new ACL when you generate a copy request. For more information, see [Using ACLs](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html).
  ///
  /// If the destination bucket that you're copying objects to uses the bucket owner enforced setting for S3 Object Ownership, ACLs are disabled and no longer affect permissions. Buckets that use this setting only accept `PUT` requests that don't specify an ACL or `PUT` requests that specify bucket owner full control ACLs, such as the `bucket-owner-full-control` canned ACL or an equivalent form of this ACL expressed in the XML format. For more information, see [Controlling ownership of objects and disabling ACLs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html) in the _Amazon S3 User Guide_.
  ///
  /// *   If your destination bucket uses the bucket owner enforced setting for Object Ownership, all objects written to the bucket by any account will be owned by the bucket owner.
  ///
  /// *   This functionality is not supported for directory buckets.
  ///
  /// *   This functionality is not supported for Amazon S3 on Outposts.
  ObjectCannedAcl? get acl;

  /// The name of the destination bucket.
  ///
  /// **Directory buckets** \- When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format `_Bucket_name_.s3express-_az_id_._region_.amazonaws.com`. Path-style requests are not supported. Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format `_bucket\_base\_name_--_az-id_--x-s3` (for example, `_DOC-EXAMPLE-BUCKET_--_usw2-az2_--x-s3`). For information about bucket naming restrictions, see [Directory bucket naming rules](https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html) in the _Amazon S3 User Guide_.
  ///
  /// **Access points** \- When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// Access points and Object Lambda access points are not supported by directory buckets.
  ///
  /// **S3 on Outposts** \- When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [What is S3 on Outposts?](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// Specifies the caching behavior along the request/reply chain.
  String? get cacheControl;

  /// Indicates the algorithm that you want Amazon S3 to use to create the checksum for the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// When you copy an object, if the source object has a checksum, that checksum value will be copied to the new object by default. If the `CopyObject` request does not include this `x-amz-checksum-algorithm` header, the checksum algorithm will be copied from the source object to the destination object (if it's present on the source object). You can optionally specify a different checksum algorithm to use with the `x-amz-checksum-algorithm` header. Unrecognized or unsupported values will respond with the HTTP status code `400 Bad Request`.
  ///
  /// For directory buckets, when you use Amazon Web Services SDKs, `CRC32` is the default checksum algorithm that's used for performance.
  ChecksumAlgorithm? get checksumAlgorithm;

  /// Specifies presentational information for the object. Indicates whether an object should be displayed in a web browser or downloaded as a file. It allows specifying the desired filename for the downloaded file.
  String? get contentDisposition;

  /// Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
  ///
  /// For directory buckets, only the `aws-chunked` value is supported in this header field.
  String? get contentEncoding;

  /// The language the content is in.
  String? get contentLanguage;

  /// A standard MIME type that describes the format of the object data.
  String? get contentType;

  /// Specifies the source object for the copy operation. The source object can be up to 5 GB. If the source object is an object that was uploaded by using a multipart upload, the object copy will be a single part object after the source object is copied to the destination bucket.
  ///
  /// You specify the value of the copy source in one of two formats, depending on whether you want to access the source object through an [access point](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html):
  ///
  /// *   For objects not accessed through an access point, specify the name of the source bucket and the key of the source object, separated by a slash (/). For example, to copy the object `reports/january.pdf` from the general purpose bucket `awsexamplebucket`, use `awsexamplebucket/reports/january.pdf`. The value must be URL-encoded. To copy the object `reports/january.pdf` from the directory bucket `awsexamplebucket--use1-az5--x-s3`, use `awsexamplebucket--use1-az5--x-s3/reports/january.pdf`. The value must be URL-encoded.
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
  /// If your source bucket versioning is enabled, the `x-amz-copy-source` header by default identifies the current version of an object to copy. If the current version is a delete marker, Amazon S3 behaves as if the object was deleted. To copy a different version, use the `versionId` query parameter. Specifically, append `?versionId=` to the value (for example, `awsexamplebucket/reports/january.pdf?versionId=QUpfdndhfd8438MNFDN93jdnJFkdmqnh893`). If you don't specify a version ID, Amazon S3 copies the latest version of the source object.
  ///
  /// If you enable versioning on the destination bucket, Amazon S3 generates a unique version ID for the copied object. This version ID is different from the version ID of the source object. Amazon S3 returns the version ID of the copied object in the `x-amz-version-id` response header in the response.
  ///
  /// If you do not enable versioning or suspend it on the destination bucket, the version ID that Amazon S3 generates in the `x-amz-version-id` response header is always null.
  ///
  /// **Directory buckets** \- S3 Versioning isn't enabled and supported for directory buckets.
  String get copySource;

  /// Copies the object if its entity tag (ETag) matches the specified tag.
  ///
  /// If both the `x-amz-copy-source-if-match` and `x-amz-copy-source-if-unmodified-since` headers are present in the request and evaluate as follows, Amazon S3 returns `200 OK` and copies the data:
  ///
  /// *   `x-amz-copy-source-if-match` condition evaluates to true
  ///
  /// *   `x-amz-copy-source-if-unmodified-since` condition evaluates to false
  String? get copySourceIfMatch;

  /// Copies the object if it has been modified since the specified time.
  ///
  /// If both the `x-amz-copy-source-if-none-match` and `x-amz-copy-source-if-modified-since` headers are present in the request and evaluate as follows, Amazon S3 returns the `412 Precondition Failed` response code:
  ///
  /// *   `x-amz-copy-source-if-none-match` condition evaluates to false
  ///
  /// *   `x-amz-copy-source-if-modified-since` condition evaluates to true
  DateTime? get copySourceIfModifiedSince;

  /// Copies the object if its entity tag (ETag) is different than the specified ETag.
  ///
  /// If both the `x-amz-copy-source-if-none-match` and `x-amz-copy-source-if-modified-since` headers are present in the request and evaluate as follows, Amazon S3 returns the `412 Precondition Failed` response code:
  ///
  /// *   `x-amz-copy-source-if-none-match` condition evaluates to false
  ///
  /// *   `x-amz-copy-source-if-modified-since` condition evaluates to true
  String? get copySourceIfNoneMatch;

  /// Copies the object if it hasn't been modified since the specified time.
  ///
  /// If both the `x-amz-copy-source-if-match` and `x-amz-copy-source-if-unmodified-since` headers are present in the request and evaluate as follows, Amazon S3 returns `200 OK` and copies the data:
  ///
  /// *   `x-amz-copy-source-if-match` condition evaluates to true
  ///
  /// *   `x-amz-copy-source-if-unmodified-since` condition evaluates to false
  DateTime? get copySourceIfUnmodifiedSince;

  /// The date and time at which the object is no longer cacheable.
  DateTime? get expires;

  /// Gives the grantee READ, READ\_ACP, and WRITE\_ACP permissions on the object.
  ///
  /// *   This functionality is not supported for directory buckets.
  ///
  /// *   This functionality is not supported for Amazon S3 on Outposts.
  String? get grantFullControl;

  /// Allows grantee to read the object data and its metadata.
  ///
  /// *   This functionality is not supported for directory buckets.
  ///
  /// *   This functionality is not supported for Amazon S3 on Outposts.
  String? get grantRead;

  /// Allows grantee to read the object ACL.
  ///
  /// *   This functionality is not supported for directory buckets.
  ///
  /// *   This functionality is not supported for Amazon S3 on Outposts.
  String? get grantReadAcp;

  /// Allows grantee to write the ACL for the applicable object.
  ///
  /// *   This functionality is not supported for directory buckets.
  ///
  /// *   This functionality is not supported for Amazon S3 on Outposts.
  String? get grantWriteAcp;

  /// The key of the destination object.
  String get key;

  /// A map of metadata to store with the object in S3.
  _i3.BuiltMap<String, String>? get metadata;

  /// Specifies whether the metadata is copied from the source object or replaced with metadata that's provided in the request. When copying an object, you can preserve all metadata (the default) or specify new metadata. If this header isn’t specified, `COPY` is the default behavior.
  ///
  /// **General purpose bucket** \- For general purpose buckets, when you grant permissions, you can use the `s3:x-amz-metadata-directive` condition key to enforce certain metadata behavior when objects are uploaded. For more information, see [Amazon S3 condition key examples](https://docs.aws.amazon.com/AmazonS3/latest/dev/amazon-s3-policy-keys.html) in the _Amazon S3 User Guide_.
  ///
  /// `x-amz-website-redirect-location` is unique to each object and is not copied when using the `x-amz-metadata-directive` header. To copy the value, you must specify `x-amz-website-redirect-location` in the request header.
  MetadataDirective? get metadataDirective;

  /// Specifies whether the object tag-set is copied from the source object or replaced with the tag-set that's provided in the request.
  ///
  /// The default value is `COPY`.
  ///
  /// **Directory buckets** \- For directory buckets in a `CopyObject` operation, only the empty tag-set is supported. Any requests that attempt to write non-empty tags into directory buckets will receive a `501 Not Implemented` status code. When the destination bucket is a directory bucket, you will receive a `501 Not Implemented` response in any of the following situations:
  ///
  /// *   When you attempt to `COPY` the tag-set from an S3 source object that has non-empty tags.
  ///
  /// *   When you attempt to `REPLACE` the tag-set of a source object and set a non-empty value to `x-amz-tagging`.
  ///
  /// *   When you don't set the `x-amz-tagging-directive` header and the source object has non-empty tags. This is because the default value of `x-amz-tagging-directive` is `COPY`.
  ///
  ///
  /// Because only the empty tag-set is supported for directory buckets in a `CopyObject` operation, the following situations are allowed:
  ///
  /// *   When you attempt to `COPY` the tag-set from a directory bucket source object that has no tags to a general purpose bucket. It copies an empty tag-set to the destination object.
  ///
  /// *   When you attempt to `REPLACE` the tag-set of a directory bucket source object and set the `x-amz-tagging` value of the directory bucket destination object to empty.
  ///
  /// *   When you attempt to `REPLACE` the tag-set of a general purpose bucket source object that has non-empty tags and set the `x-amz-tagging` value of the directory bucket destination object to empty.
  ///
  /// *   When you attempt to `REPLACE` the tag-set of a directory bucket source object and don't set the `x-amz-tagging` value of the directory bucket destination object. This is because the default value of `x-amz-tagging` is the empty value.
  TaggingDirective? get taggingDirective;

  /// The server-side encryption algorithm used when storing this object in Amazon S3 (for example, `AES256`, `aws:kms`, `aws:kms:dsse`). Unrecognized or unsupported values won’t write a destination object and will receive a `400 Bad Request` response.
  ///
  /// Amazon S3 automatically encrypts all new objects that are copied to an S3 bucket. When copying an object, if you don't specify encryption information in your copy request, the encryption setting of the target object is set to the default encryption configuration of the destination bucket. By default, all buckets have a base level of encryption configuration that uses server-side encryption with Amazon S3 managed keys (SSE-S3). If the destination bucket has a default encryption configuration that uses server-side encryption with Key Management Service (KMS) keys (SSE-KMS), dual-layer server-side encryption with Amazon Web Services KMS keys (DSSE-KMS), or server-side encryption with customer-provided encryption keys (SSE-C), Amazon S3 uses the corresponding KMS key, or a customer-provided key to encrypt the target object copy.
  ///
  /// When you perform a `CopyObject` operation, if you want to use a different type of encryption setting for the target object, you can specify appropriate encryption-related headers to encrypt the target object with an Amazon S3 managed key, a KMS key, or a customer-provided key. If the encryption setting in your request is different from the default encryption configuration of the destination bucket, the encryption setting in your request takes precedence.
  ///
  /// With server-side encryption, Amazon S3 encrypts your data as it writes your data to disks in its data centers and decrypts the data when you access it. For more information about server-side encryption, see [Using Server-Side Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html) in the _Amazon S3 User Guide_.
  ///
  /// For directory buckets, only server-side encryption with Amazon S3 managed keys (SSE-S3) (`AES256`) is supported.
  ServerSideEncryption? get serverSideEncryption;

  /// If the `x-amz-storage-class` header is not used, the copied object will be stored in the `STANDARD` Storage Class by default. The `STANDARD` storage class provides high durability and high availability. Depending on performance needs, you can specify a different Storage Class.
  ///
  /// *   **Directory buckets** \- For directory buckets, only the S3 Express One Zone storage class is supported to store newly created objects. Unsupported storage class values won't write a destination object and will respond with the HTTP status code `400 Bad Request`.
  ///
  /// *   **Amazon S3 on Outposts** \- S3 on Outposts only uses the `OUTPOSTS` Storage Class.
  ///
  ///
  /// You can use the `CopyObject` action to change the storage class of an object that is already stored in Amazon S3 by using the `x-amz-storage-class` header. For more information, see [Storage Classes](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html) in the _Amazon S3 User Guide_.
  ///
  /// Before using an object as a source object for the copy operation, you must restore a copy of it if it meets any of the following conditions:
  ///
  /// *   The storage class of the source object is `GLACIER` or `DEEP_ARCHIVE`.
  ///
  /// *   The storage class of the source object is `INTELLIGENT_TIERING` and it's [S3 Intelligent-Tiering access tier](https://docs.aws.amazon.com/AmazonS3/latest/userguide/intelligent-tiering-overview.html#intel-tiering-tier-definition) is `Archive Access` or `Deep Archive Access`.
  ///
  ///
  /// For more information, see [RestoreObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html) and [Copying Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/CopyingObjectsExamples.html) in the _Amazon S3 User Guide_.
  StorageClass? get storageClass;

  /// If the destination bucket is configured as a website, redirects requests for this object copy to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata. This value is unique to each object and is not copied when using the `x-amz-metadata-directive` header. Instead, you may opt to provide this header in combination with the `x-amz-metadata-directive` header.
  ///
  /// This functionality is not supported for directory buckets.
  String? get websiteRedirectLocation;

  /// Specifies the algorithm to use when encrypting the object (for example, `AES256`).
  ///
  /// When you perform a `CopyObject` operation, if you want to use a different type of encryption setting for the target object, you can specify appropriate encryption-related headers to encrypt the target object with an Amazon S3 managed key, a KMS key, or a customer-provided key. If the encryption setting in your request is different from the default encryption configuration of the destination bucket, the encryption setting in your request takes precedence.
  ///
  /// This functionality is not supported when the destination bucket is a directory bucket.
  String? get sseCustomerAlgorithm;

  /// Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded. Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the `x-amz-server-side-encryption-customer-algorithm` header.
  ///
  /// This functionality is not supported when the destination bucket is a directory bucket.
  String? get sseCustomerKey;

  /// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  ///
  /// This functionality is not supported when the destination bucket is a directory bucket.
  String? get sseCustomerKeyMd5;

  /// Specifies the KMS ID (Key ID, Key ARN, or Key Alias) to use for object encryption. All GET and PUT requests for an object protected by KMS will fail if they're not made via SSL or using SigV4. For information about configuring any of the officially supported Amazon Web Services SDKs and Amazon Web Services CLI, see [Specifying the Signature Version in Request Authentication](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version) in the _Amazon S3 User Guide_.
  ///
  /// This functionality is not supported when the destination bucket is a directory bucket.
  String? get ssekmsKeyId;

  /// Specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The value of this header is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs. This value must be explicitly added to specify encryption context for `CopyObject` requests.
  ///
  /// This functionality is not supported when the destination bucket is a directory bucket.
  String? get ssekmsEncryptionContext;

  /// Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with server-side encryption using Key Management Service (KMS) keys (SSE-KMS). If a target object uses SSE-KMS, you can enable an S3 Bucket Key for the object.
  ///
  /// Setting this header to `true` causes Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS. Specifying this header with a COPY action doesn’t affect bucket-level settings for S3 Bucket Key.
  ///
  /// For more information, see [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) in the _Amazon S3 User Guide_.
  ///
  /// This functionality is not supported when the destination bucket is a directory bucket.
  bool? get bucketKeyEnabled;

  /// Specifies the algorithm to use when decrypting the source object (for example, `AES256`).
  ///
  /// If the source object for the copy is stored in Amazon S3 using SSE-C, you must provide the necessary encryption information in your request so that Amazon S3 can decrypt the object for copying.
  ///
  /// This functionality is not supported when the source object is in a directory bucket.
  String? get copySourceSseCustomerAlgorithm;

  /// Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be the same one that was used when the source object was created.
  ///
  /// If the source object for the copy is stored in Amazon S3 using SSE-C, you must provide the necessary encryption information in your request so that Amazon S3 can decrypt the object for copying.
  ///
  /// This functionality is not supported when the source object is in a directory bucket.
  String? get copySourceSseCustomerKey;

  /// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  ///
  /// If the source object for the copy is stored in Amazon S3 using SSE-C, you must provide the necessary encryption information in your request so that Amazon S3 can decrypt the object for copying.
  ///
  /// This functionality is not supported when the source object is in a directory bucket.
  String? get copySourceSseCustomerKeyMd5;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. If either the source or destination S3 bucket has Requester Pays enabled, the requester will pay for corresponding charges to copy the object. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  ///
  /// This functionality is not supported for directory buckets.
  RequestPayer? get requestPayer;

  /// The tag-set for the object copy in the destination bucket. This value must be used in conjunction with the `x-amz-tagging-directive` if you choose `REPLACE` for the `x-amz-tagging-directive`. If you choose `COPY` for the `x-amz-tagging-directive`, you don't need to set the `x-amz-tagging` header, because the tag-set will be copied from the source object directly. The tag-set must be encoded as URL Query parameters.
  ///
  /// The default value is the empty value.
  ///
  /// **Directory buckets** \- For directory buckets in a `CopyObject` operation, only the empty tag-set is supported. Any requests that attempt to write non-empty tags into directory buckets will receive a `501 Not Implemented` status code. When the destination bucket is a directory bucket, you will receive a `501 Not Implemented` response in any of the following situations:
  ///
  /// *   When you attempt to `COPY` the tag-set from an S3 source object that has non-empty tags.
  ///
  /// *   When you attempt to `REPLACE` the tag-set of a source object and set a non-empty value to `x-amz-tagging`.
  ///
  /// *   When you don't set the `x-amz-tagging-directive` header and the source object has non-empty tags. This is because the default value of `x-amz-tagging-directive` is `COPY`.
  ///
  ///
  /// Because only the empty tag-set is supported for directory buckets in a `CopyObject` operation, the following situations are allowed:
  ///
  /// *   When you attempt to `COPY` the tag-set from a directory bucket source object that has no tags to a general purpose bucket. It copies an empty tag-set to the destination object.
  ///
  /// *   When you attempt to `REPLACE` the tag-set of a directory bucket source object and set the `x-amz-tagging` value of the directory bucket destination object to empty.
  ///
  /// *   When you attempt to `REPLACE` the tag-set of a general purpose bucket source object that has non-empty tags and set the `x-amz-tagging` value of the directory bucket destination object to empty.
  ///
  /// *   When you attempt to `REPLACE` the tag-set of a directory bucket source object and don't set the `x-amz-tagging` value of the directory bucket destination object. This is because the default value of `x-amz-tagging` is the empty value.
  String? get tagging;

  /// The Object Lock mode that you want to apply to the object copy.
  ///
  /// This functionality is not supported for directory buckets.
  ObjectLockMode? get objectLockMode;

  /// The date and time when you want the Object Lock of the object copy to expire.
  ///
  /// This functionality is not supported for directory buckets.
  DateTime? get objectLockRetainUntilDate;

  /// Specifies whether you want to apply a legal hold to the object copy.
  ///
  /// This functionality is not supported for directory buckets.
  ObjectLockLegalHoldStatus? get objectLockLegalHoldStatus;

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

@_i4.internal
abstract class CopyObjectRequestPayload
    with _i2.AWSEquatable<CopyObjectRequestPayload>
    implements
        Built<CopyObjectRequestPayload, CopyObjectRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory CopyObjectRequestPayload(
          [void Function(CopyObjectRequestPayloadBuilder) updates]) =
      _$CopyObjectRequestPayload;

  const CopyObjectRequestPayload._();

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
