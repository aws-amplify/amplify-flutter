// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.put_object_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i2;

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/checksum_algorithm.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_canned_acl.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_lock_legal_hold_status.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_lock_mode.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_payer.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/server_side_encryption.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/storage_class.dart';
import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'put_object_request.g.dart';

abstract class PutObjectRequest
    with
        _i1.HttpInput<_i2.Stream<List<int>>>,
        _i3.AWSEquatable<PutObjectRequest>
    implements
        Built<PutObjectRequest, PutObjectRequestBuilder>,
        _i1.HasPayload<_i2.Stream<List<int>>> {
  factory PutObjectRequest({
    ObjectCannedAcl? acl,
    _i2.Stream<List<int>>? body,
    required String bucket,
    String? cacheControl,
    String? contentDisposition,
    String? contentEncoding,
    String? contentLanguage,
    _i4.Int64? contentLength,
    String? contentMd5,
    String? contentType,
    ChecksumAlgorithm? checksumAlgorithm,
    String? checksumCrc32,
    String? checksumCrc32C,
    String? checksumSha1,
    String? checksumSha256,
    DateTime? expires,
    String? grantFullControl,
    String? grantRead,
    String? grantReadAcp,
    String? grantWriteAcp,
    required String key,
    Map<String, String>? metadata,
    ServerSideEncryption? serverSideEncryption,
    StorageClass? storageClass,
    String? websiteRedirectLocation,
    String? sseCustomerAlgorithm,
    String? sseCustomerKey,
    String? sseCustomerKeyMd5,
    String? ssekmsKeyId,
    String? ssekmsEncryptionContext,
    bool? bucketKeyEnabled,
    RequestPayer? requestPayer,
    String? tagging,
    ObjectLockMode? objectLockMode,
    DateTime? objectLockRetainUntilDate,
    ObjectLockLegalHoldStatus? objectLockLegalHoldStatus,
    String? expectedBucketOwner,
  }) {
    body ??= const _i2.Stream.empty();
    return _$PutObjectRequest._(
      acl: acl,
      body: body,
      bucket: bucket,
      cacheControl: cacheControl,
      contentDisposition: contentDisposition,
      contentEncoding: contentEncoding,
      contentLanguage: contentLanguage,
      contentLength: contentLength,
      contentMd5: contentMd5,
      contentType: contentType,
      checksumAlgorithm: checksumAlgorithm,
      checksumCrc32: checksumCrc32,
      checksumCrc32C: checksumCrc32C,
      checksumSha1: checksumSha1,
      checksumSha256: checksumSha256,
      expires: expires,
      grantFullControl: grantFullControl,
      grantRead: grantRead,
      grantReadAcp: grantReadAcp,
      grantWriteAcp: grantWriteAcp,
      key: key,
      metadata: metadata == null ? null : _i5.BuiltMap(metadata),
      serverSideEncryption: serverSideEncryption,
      storageClass: storageClass,
      websiteRedirectLocation: websiteRedirectLocation,
      sseCustomerAlgorithm: sseCustomerAlgorithm,
      sseCustomerKey: sseCustomerKey,
      sseCustomerKeyMd5: sseCustomerKeyMd5,
      ssekmsKeyId: ssekmsKeyId,
      ssekmsEncryptionContext: ssekmsEncryptionContext,
      bucketKeyEnabled: bucketKeyEnabled,
      requestPayer: requestPayer,
      tagging: tagging,
      objectLockMode: objectLockMode,
      objectLockRetainUntilDate: objectLockRetainUntilDate,
      objectLockLegalHoldStatus: objectLockLegalHoldStatus,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory PutObjectRequest.build([
    void Function(PutObjectRequestBuilder) updates,
  ]) = _$PutObjectRequest;

  const PutObjectRequest._();

  factory PutObjectRequest.fromRequest(
    _i2.Stream<List<int>> payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) => PutObjectRequest.build((b) {
    b.body = payload;
    if (request.headers['x-amz-acl'] != null) {
      b.acl = ObjectCannedAcl.values.byValue(request.headers['x-amz-acl']!);
    }
    if (request.headers['Cache-Control'] != null) {
      b.cacheControl = request.headers['Cache-Control']!;
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
    if (request.headers['Content-Length'] != null) {
      b.contentLength = _i4.Int64.parseInt(request.headers['Content-Length']!);
    }
    if (request.headers['Content-MD5'] != null) {
      b.contentMd5 = request.headers['Content-MD5']!;
    }
    if (request.headers['Content-Type'] != null) {
      b.contentType = request.headers['Content-Type']!;
    }
    if (request.headers['x-amz-sdk-checksum-algorithm'] != null) {
      b.checksumAlgorithm = ChecksumAlgorithm.values.byValue(
        request.headers['x-amz-sdk-checksum-algorithm']!,
      );
    }
    if (request.headers['x-amz-checksum-crc32'] != null) {
      b.checksumCrc32 = request.headers['x-amz-checksum-crc32']!;
    }
    if (request.headers['x-amz-checksum-crc32c'] != null) {
      b.checksumCrc32C = request.headers['x-amz-checksum-crc32c']!;
    }
    if (request.headers['x-amz-checksum-sha1'] != null) {
      b.checksumSha1 = request.headers['x-amz-checksum-sha1']!;
    }
    if (request.headers['x-amz-checksum-sha256'] != null) {
      b.checksumSha256 = request.headers['x-amz-checksum-sha256']!;
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
    if (request.headers['x-amz-server-side-encryption'] != null) {
      b.serverSideEncryption = ServerSideEncryption.values.byValue(
        request.headers['x-amz-server-side-encryption']!,
      );
    }
    if (request.headers['x-amz-storage-class'] != null) {
      b.storageClass = StorageClass.values.byValue(
        request.headers['x-amz-storage-class']!,
      );
    }
    if (request.headers['x-amz-website-redirect-location'] != null) {
      b.websiteRedirectLocation =
          request.headers['x-amz-website-redirect-location']!;
    }
    if (request.headers['x-amz-server-side-encryption-customer-algorithm'] !=
        null) {
      b.sseCustomerAlgorithm =
          request.headers['x-amz-server-side-encryption-customer-algorithm']!;
    }
    if (request.headers['x-amz-server-side-encryption-customer-key'] != null) {
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
    if (request.headers['x-amz-server-side-encryption-bucket-key-enabled'] !=
        null) {
      b.bucketKeyEnabled =
          request.headers['x-amz-server-side-encryption-bucket-key-enabled']! ==
          'true';
    }
    if (request.headers['x-amz-request-payer'] != null) {
      b.requestPayer = RequestPayer.values.byValue(
        request.headers['x-amz-request-payer']!,
      );
    }
    if (request.headers['x-amz-tagging'] != null) {
      b.tagging = request.headers['x-amz-tagging']!;
    }
    if (request.headers['x-amz-object-lock-mode'] != null) {
      b.objectLockMode = ObjectLockMode.values.byValue(
        request.headers['x-amz-object-lock-mode']!,
      );
    }
    if (request.headers['x-amz-object-lock-retain-until-date'] != null) {
      b.objectLockRetainUntilDate = _i1.Timestamp.parse(
        request.headers['x-amz-object-lock-retain-until-date']!,
        format: _i1.TimestampFormat.dateTime,
      ).asDateTime;
    }
    if (request.headers['x-amz-object-lock-legal-hold'] != null) {
      b.objectLockLegalHoldStatus = ObjectLockLegalHoldStatus.values.byValue(
        request.headers['x-amz-object-lock-legal-hold']!,
      );
    }
    if (request.headers['x-amz-expected-bucket-owner'] != null) {
      b.expectedBucketOwner = request.headers['x-amz-expected-bucket-owner']!;
    }
    b.metadata.addEntries(
      request.headers.entries
          .where((el) => el.key.startsWith('x-amz-meta-'))
          .map(
            (el) => MapEntry(el.key.replaceFirst('x-amz-meta-', ''), el.value),
          ),
    );
    if (labels['bucket'] != null) {
      b.bucket = labels['bucket']!;
    }
    if (labels['key'] != null) {
      b.key = labels['key']!;
    }
  });

  static const List<_i1.SmithySerializer<_i2.Stream<List<int>>>> serializers = [
    PutObjectRequestRestXmlSerializer(),
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutObjectRequestBuilder b) {
    b.body = const _i2.Stream.empty();
  }

  /// The canned ACL to apply to the object. For more information, see [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL) in the _Amazon S3 User Guide_.
  ///
  /// When adding a new object, you can use headers to grant ACL-based permissions to individual Amazon Web Services accounts or to predefined groups defined by Amazon S3. These permissions are then added to the ACL on the object. By default, all objects are private. Only the owner has full access control. For more information, see [Access Control List (ACL) Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html) and [Managing ACLs Using the REST API](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-using-rest-api.html) in the _Amazon S3 User Guide_.
  ///
  /// If the bucket that you're uploading objects to uses the bucket owner enforced setting for S3 Object Ownership, ACLs are disabled and no longer affect permissions. Buckets that use this setting only accept PUT requests that don't specify an ACL or PUT requests that specify bucket owner full control ACLs, such as the `bucket-owner-full-control` canned ACL or an equivalent form of this ACL expressed in the XML format. PUT requests that contain other ACLs (for example, custom grants to certain Amazon Web Services accounts) fail and return a `400` error with the error code `AccessControlListNotSupported`. For more information, see [Controlling ownership of objects and disabling ACLs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html) in the _Amazon S3 User Guide_.
  ///
  /// *   This functionality is not supported for directory buckets.
  ///
  /// *   This functionality is not supported for Amazon S3 on Outposts.
  ObjectCannedAcl? get acl;

  /// Object data.
  _i2.Stream<List<int>> get body;

  /// The bucket name to which the PUT action was initiated.
  ///
  /// **Directory buckets** \- When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format `_Bucket_name_.s3express-_az_id_._region_.amazonaws.com`. Path-style requests are not supported. Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format `_bucket\_base\_name_--_az-id_--x-s3` (for example, `_DOC-EXAMPLE-BUCKET_--_usw2-az2_--x-s3`). For information about bucket naming restrictions, see [Directory bucket naming rules](https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html) in the _Amazon S3 User Guide_.
  ///
  /// **Access points** \- When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// Access points and Object Lambda access points are not supported by directory buckets.
  ///
  /// **S3 on Outposts** \- When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [What is S3 on Outposts?](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// Can be used to specify caching behavior along the request/reply chain. For more information, see [http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9).
  String? get cacheControl;

  /// Specifies presentational information for the object. For more information, see [https://www.rfc-editor.org/rfc/rfc6266#section-4](https://www.rfc-editor.org/rfc/rfc6266#section-4).
  String? get contentDisposition;

  /// Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. For more information, see [https://www.rfc-editor.org/rfc/rfc9110.html#field.content-encoding](https://www.rfc-editor.org/rfc/rfc9110.html#field.content-encoding).
  String? get contentEncoding;

  /// The language the content is in.
  String? get contentLanguage;

  /// Size of the body in bytes. This parameter is useful when the size of the body cannot be determined automatically. For more information, see [https://www.rfc-editor.org/rfc/rfc9110.html#name-content-length](https://www.rfc-editor.org/rfc/rfc9110.html#name-content-length).
  _i4.Int64? get contentLength;

  /// The base64-encoded 128-bit MD5 digest of the message (without the headers) according to RFC 1864. This header can be used as a message integrity check to verify that the data is the same data that was originally sent. Although it is optional, we recommend using the Content-MD5 mechanism as an end-to-end integrity check. For more information about REST request authentication, see [REST Authentication](https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html).
  ///
  /// The `Content-MD5` header is required for any request to upload an object with a retention period configured using Amazon S3 Object Lock. For more information about Amazon S3 Object Lock, see [Amazon S3 Object Lock Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html) in the _Amazon S3 User Guide_.
  ///
  /// This functionality is not supported for directory buckets.
  String? get contentMd5;

  /// A standard MIME type describing the format of the contents. For more information, see [https://www.rfc-editor.org/rfc/rfc9110.html#name-content-type](https://www.rfc-editor.org/rfc/rfc9110.html#name-content-type).
  String? get contentType;

  /// Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any additional functionality if you don't use the SDK. When you send this header, there must be a corresponding `x-amz-checksum-_algorithm_` or `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request with the HTTP status code `400 Bad Request`.
  ///
  /// For the `x-amz-checksum-_algorithm_` header, replace `_algorithm_` with the supported algorithm from the following list:
  ///
  /// *   CRC32
  ///
  /// *   CRC32C
  ///
  /// *   SHA1
  ///
  /// *   SHA256
  ///
  ///
  /// For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// If the individual checksum value you provide through `x-amz-checksum-_algorithm_` doesn't match the checksum algorithm you set through `x-amz-sdk-checksum-algorithm`, Amazon S3 ignores any provided `ChecksumAlgorithm` parameter and uses the checksum algorithm that matches the provided value in `x-amz-checksum-_algorithm_` .
  ///
  /// For directory buckets, when you use Amazon Web Services SDKs, `CRC32` is the default checksum algorithm that's used for performance.
  ChecksumAlgorithm? get checksumAlgorithm;

  /// This header can be used as a data integrity check to verify that the data received is the same data that was originally sent. This header specifies the base64-encoded, 32-bit CRC32 checksum of the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get checksumCrc32;

  /// This header can be used as a data integrity check to verify that the data received is the same data that was originally sent. This header specifies the base64-encoded, 32-bit CRC32C checksum of the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get checksumCrc32C;

  /// This header can be used as a data integrity check to verify that the data received is the same data that was originally sent. This header specifies the base64-encoded, 160-bit SHA-1 digest of the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get checksumSha1;

  /// This header can be used as a data integrity check to verify that the data received is the same data that was originally sent. This header specifies the base64-encoded, 256-bit SHA-256 digest of the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get checksumSha256;

  /// The date and time at which the object is no longer cacheable. For more information, see [https://www.rfc-editor.org/rfc/rfc7234#section-5.3](https://www.rfc-editor.org/rfc/rfc7234#section-5.3).
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

  /// Object key for which the PUT action was initiated.
  String get key;

  /// A map of metadata to store with the object in S3.
  _i5.BuiltMap<String, String>? get metadata;

  /// The server-side encryption algorithm that was used when you store this object in Amazon S3 (for example, `AES256`, `aws:kms`, `aws:kms:dsse`).
  ///
  /// **General purpose buckets** \- You have four mutually exclusive options to protect data using server-side encryption in Amazon S3, depending on how you choose to manage the encryption keys. Specifically, the encryption key options are Amazon S3 managed keys (SSE-S3), Amazon Web Services KMS keys (SSE-KMS or DSSE-KMS), and customer-provided keys (SSE-C). Amazon S3 encrypts data with server-side encryption by using Amazon S3 managed keys (SSE-S3) by default. You can optionally tell Amazon S3 to encrypt data at rest by using server-side encryption with other key options. For more information, see [Using Server-Side Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html) in the _Amazon S3 User Guide_.
  ///
  /// **Directory buckets** \- For directory buckets, only the server-side encryption with Amazon S3 managed keys (SSE-S3) (`AES256`) value is supported.
  ServerSideEncryption? get serverSideEncryption;

  /// By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The STANDARD storage class provides high durability and high availability. Depending on performance needs, you can specify a different Storage Class. For more information, see [Storage Classes](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html) in the _Amazon S3 User Guide_.
  ///
  /// *   For directory buckets, only the S3 Express One Zone storage class is supported to store newly created objects.
  ///
  /// *   Amazon S3 on Outposts only uses the OUTPOSTS Storage Class.
  StorageClass? get storageClass;

  /// If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata. For information about object metadata, see [Object Key and Metadata](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html) in the _Amazon S3 User Guide_.
  ///
  /// In the following example, the request header sets the redirect to an object (anotherPage.html) in the same bucket:
  ///
  /// `x-amz-website-redirect-location: /anotherPage.html`
  ///
  /// In the following example, the request header sets the object redirect to another website:
  ///
  /// `x-amz-website-redirect-location: http://www.example.com/`
  ///
  /// For more information about website hosting in Amazon S3, see [Hosting Websites on Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html) and [How to Configure Website Page Redirects](https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html) in the _Amazon S3 User Guide_.
  ///
  /// This functionality is not supported for directory buckets.
  String? get websiteRedirectLocation;

  /// Specifies the algorithm to use when encrypting the object (for example, `AES256`).
  ///
  /// This functionality is not supported for directory buckets.
  String? get sseCustomerAlgorithm;

  /// Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the `x-amz-server-side-encryption-customer-algorithm` header.
  ///
  /// This functionality is not supported for directory buckets.
  String? get sseCustomerKey;

  /// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  ///
  /// This functionality is not supported for directory buckets.
  String? get sseCustomerKeyMd5;

  /// If `x-amz-server-side-encryption` has a valid value of `aws:kms` or `aws:kms:dsse`, this header specifies the ID (Key ID, Key ARN, or Key Alias) of the Key Management Service (KMS) symmetric encryption customer managed key that was used for the object. If you specify `x-amz-server-side-encryption:aws:kms` or `x-amz-server-side-encryption:aws:kms:dsse`, but do not provide `x-amz-server-side-encryption-aws-kms-key-id`, Amazon S3 uses the Amazon Web Services managed key (`aws/s3`) to protect the data. If the KMS key does not exist in the same account that's issuing the command, you must use the full ARN and not just the ID.
  ///
  /// This functionality is not supported for directory buckets.
  String? get ssekmsKeyId;

  /// Specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The value of this header is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs. This value is stored as object metadata and automatically gets passed on to Amazon Web Services KMS for future `GetObject` or `CopyObject` operations on this object. This value must be explicitly added during `CopyObject` operations.
  ///
  /// This functionality is not supported for directory buckets.
  String? get ssekmsEncryptionContext;

  /// Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with server-side encryption using Key Management Service (KMS) keys (SSE-KMS). Setting this header to `true` causes Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS.
  ///
  /// Specifying this header with a PUT action doesn’t affect bucket-level settings for S3 Bucket Key.
  ///
  /// This functionality is not supported for directory buckets.
  bool? get bucketKeyEnabled;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. If either the source or destination S3 bucket has Requester Pays enabled, the requester will pay for corresponding charges to copy the object. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  ///
  /// This functionality is not supported for directory buckets.
  RequestPayer? get requestPayer;

  /// The tag-set for the object. The tag-set must be encoded as URL Query parameters. (For example, "Key1=Value1")
  ///
  /// This functionality is not supported for directory buckets.
  String? get tagging;

  /// The Object Lock mode that you want to apply to this object.
  ///
  /// This functionality is not supported for directory buckets.
  ObjectLockMode? get objectLockMode;

  /// The date and time when you want this object's Object Lock to expire. Must be formatted as a timestamp parameter.
  ///
  /// This functionality is not supported for directory buckets.
  DateTime? get objectLockRetainUntilDate;

  /// Specifies whether a legal hold will be applied to this object. For more information about S3 Object Lock, see [Object Lock](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html) in the _Amazon S3 User Guide_.
  ///
  /// This functionality is not supported for directory buckets.
  ObjectLockLegalHoldStatus? get objectLockLegalHoldStatus;

  /// The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'Bucket':
        return bucket;
      case 'Key':
        return this.key;
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  _i2.Stream<List<int>> getPayload() => body;

  @override
  List<Object?> get props => [
    acl,
    body,
    bucket,
    cacheControl,
    contentDisposition,
    contentEncoding,
    contentLanguage,
    contentLength,
    contentMd5,
    contentType,
    checksumAlgorithm,
    checksumCrc32,
    checksumCrc32C,
    checksumSha1,
    checksumSha256,
    expires,
    grantFullControl,
    grantRead,
    grantReadAcp,
    grantWriteAcp,
    key,
    metadata,
    serverSideEncryption,
    storageClass,
    websiteRedirectLocation,
    sseCustomerAlgorithm,
    sseCustomerKey,
    sseCustomerKeyMd5,
    ssekmsKeyId,
    ssekmsEncryptionContext,
    bucketKeyEnabled,
    requestPayer,
    tagging,
    objectLockMode,
    objectLockRetainUntilDate,
    objectLockLegalHoldStatus,
    expectedBucketOwner,
  ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutObjectRequest')
      ..add('acl', acl)
      ..add('body', body)
      ..add('bucket', bucket)
      ..add('cacheControl', cacheControl)
      ..add('contentDisposition', contentDisposition)
      ..add('contentEncoding', contentEncoding)
      ..add('contentLanguage', contentLanguage)
      ..add('contentLength', contentLength)
      ..add('contentMd5', contentMd5)
      ..add('contentType', contentType)
      ..add('checksumAlgorithm', checksumAlgorithm)
      ..add('checksumCrc32', checksumCrc32)
      ..add('checksumCrc32C', checksumCrc32C)
      ..add('checksumSha1', checksumSha1)
      ..add('checksumSha256', checksumSha256)
      ..add('expires', expires)
      ..add('grantFullControl', grantFullControl)
      ..add('grantRead', grantRead)
      ..add('grantReadAcp', grantReadAcp)
      ..add('grantWriteAcp', grantWriteAcp)
      ..add('key', key)
      ..add('metadata', metadata)
      ..add('serverSideEncryption', serverSideEncryption)
      ..add('storageClass', storageClass)
      ..add('websiteRedirectLocation', websiteRedirectLocation)
      ..add('sseCustomerAlgorithm', sseCustomerAlgorithm)
      ..add('sseCustomerKey', '***SENSITIVE***')
      ..add('sseCustomerKeyMd5', sseCustomerKeyMd5)
      ..add('ssekmsKeyId', '***SENSITIVE***')
      ..add('ssekmsEncryptionContext', '***SENSITIVE***')
      ..add('bucketKeyEnabled', bucketKeyEnabled)
      ..add('requestPayer', requestPayer)
      ..add('tagging', tagging)
      ..add('objectLockMode', objectLockMode)
      ..add('objectLockRetainUntilDate', objectLockRetainUntilDate)
      ..add('objectLockLegalHoldStatus', objectLockLegalHoldStatus)
      ..add('expectedBucketOwner', expectedBucketOwner);
    return helper.toString();
  }
}

class PutObjectRequestRestXmlSerializer
    extends _i1.PrimitiveSmithySerializer<_i2.Stream<List<int>>> {
  const PutObjectRequestRestXmlSerializer() : super('PutObjectRequest');

  @override
  Iterable<Type> get types => const [PutObjectRequest, _$PutObjectRequest];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
    _i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  _i2.Stream<List<int>> deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
          serialized,
          specifiedType: const FullType(_i2.Stream, [
            FullType(List, [FullType(int)]),
          ]),
        )
        as _i2.Stream<List<int>>);
  }

  @override
  Object serialize(
    Serializers serializers,
    _i2.Stream<List<int>> object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'PutObjectRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      ),
    ];

    result$.add(
      serializers.serialize(
        object,
        specifiedType: const FullType(_i2.Stream, [
          FullType(List, [FullType(int)]),
        ]),
      ),
    );
    return result$;
  }
}
