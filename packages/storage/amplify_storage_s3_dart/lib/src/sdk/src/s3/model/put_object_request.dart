// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.put_object_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i2;

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/checksum_algorithm.dart'
    as _i5;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_canned_acl.dart'
    as _i4;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_lock_legal_hold_status.dart'
    as _i7;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_lock_mode.dart'
    as _i8;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_payer.dart'
    as _i9;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/server_side_encryption.dart'
    as _i10;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/storage_class.dart'
    as _i11;
import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i12;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i6;
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
    _i4.ObjectCannedAcl? acl,
    _i2.Stream<List<int>>? body,
    required String bucket,
    bool? bucketKeyEnabled,
    String? cacheControl,
    _i5.ChecksumAlgorithm? checksumAlgorithm,
    String? checksumCrc32,
    String? checksumCrc32C,
    String? checksumSha1,
    String? checksumSha256,
    String? contentDisposition,
    String? contentEncoding,
    String? contentLanguage,
    _i6.Int64? contentLength,
    String? contentMd5,
    String? contentType,
    String? expectedBucketOwner,
    DateTime? expires,
    String? grantFullControl,
    String? grantRead,
    String? grantReadAcp,
    String? grantWriteAcp,
    required String key,
    Map<String, String>? metadata,
    _i7.ObjectLockLegalHoldStatus? objectLockLegalHoldStatus,
    _i8.ObjectLockMode? objectLockMode,
    DateTime? objectLockRetainUntilDate,
    _i9.RequestPayer? requestPayer,
    _i10.ServerSideEncryption? serverSideEncryption,
    String? sseCustomerAlgorithm,
    String? sseCustomerKey,
    String? sseCustomerKeyMd5,
    String? ssekmsEncryptionContext,
    String? ssekmsKeyId,
    _i11.StorageClass? storageClass,
    String? tagging,
    String? websiteRedirectLocation,
  }) {
    return _$PutObjectRequest._(
      acl: acl,
      body: body,
      bucket: bucket,
      bucketKeyEnabled: bucketKeyEnabled,
      cacheControl: cacheControl,
      checksumAlgorithm: checksumAlgorithm,
      checksumCrc32: checksumCrc32,
      checksumCrc32C: checksumCrc32C,
      checksumSha1: checksumSha1,
      checksumSha256: checksumSha256,
      contentDisposition: contentDisposition,
      contentEncoding: contentEncoding,
      contentLanguage: contentLanguage,
      contentLength: contentLength,
      contentMd5: contentMd5,
      contentType: contentType,
      expectedBucketOwner: expectedBucketOwner,
      expires: expires,
      grantFullControl: grantFullControl,
      grantRead: grantRead,
      grantReadAcp: grantReadAcp,
      grantWriteAcp: grantWriteAcp,
      key: key,
      metadata: metadata == null ? null : _i12.BuiltMap(metadata),
      objectLockLegalHoldStatus: objectLockLegalHoldStatus,
      objectLockMode: objectLockMode,
      objectLockRetainUntilDate: objectLockRetainUntilDate,
      requestPayer: requestPayer,
      serverSideEncryption: serverSideEncryption,
      sseCustomerAlgorithm: sseCustomerAlgorithm,
      sseCustomerKey: sseCustomerKey,
      sseCustomerKeyMd5: sseCustomerKeyMd5,
      ssekmsEncryptionContext: ssekmsEncryptionContext,
      ssekmsKeyId: ssekmsKeyId,
      storageClass: storageClass,
      tagging: tagging,
      websiteRedirectLocation: websiteRedirectLocation,
    );
  }

  factory PutObjectRequest.build(
      [void Function(PutObjectRequestBuilder) updates]) = _$PutObjectRequest;

  const PutObjectRequest._();

  factory PutObjectRequest.fromRequest(
    _i2.Stream<List<int>>? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutObjectRequest.build((b) {
        b.body = payload;
        if (request.headers['x-amz-acl'] != null) {
          b.acl =
              _i4.ObjectCannedAcl.values.byValue(request.headers['x-amz-acl']!);
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
          b.contentLength =
              _i6.Int64.parseInt(request.headers['Content-Length']!);
        }
        if (request.headers['Content-MD5'] != null) {
          b.contentMd5 = request.headers['Content-MD5']!;
        }
        if (request.headers['Content-Type'] != null) {
          b.contentType = request.headers['Content-Type']!;
        }
        if (request.headers['x-amz-sdk-checksum-algorithm'] != null) {
          b.checksumAlgorithm = _i5.ChecksumAlgorithm.values
              .byValue(request.headers['x-amz-sdk-checksum-algorithm']!);
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
          b.serverSideEncryption = _i10.ServerSideEncryption.values
              .byValue(request.headers['x-amz-server-side-encryption']!);
        }
        if (request.headers['x-amz-storage-class'] != null) {
          b.storageClass = _i11.StorageClass.values
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
        if (request.headers['x-amz-request-payer'] != null) {
          b.requestPayer = _i9.RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
        }
        if (request.headers['x-amz-tagging'] != null) {
          b.tagging = request.headers['x-amz-tagging']!;
        }
        if (request.headers['x-amz-object-lock-mode'] != null) {
          b.objectLockMode = _i8.ObjectLockMode.values
              .byValue(request.headers['x-amz-object-lock-mode']!);
        }
        if (request.headers['x-amz-object-lock-retain-until-date'] != null) {
          b.objectLockRetainUntilDate = _i1.Timestamp.parse(
            request.headers['x-amz-object-lock-retain-until-date']!,
            format: _i1.TimestampFormat.dateTime,
          ).asDateTime;
        }
        if (request.headers['x-amz-object-lock-legal-hold'] != null) {
          b.objectLockLegalHoldStatus = _i7.ObjectLockLegalHoldStatus.values
              .byValue(request.headers['x-amz-object-lock-legal-hold']!);
        }
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
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

  static const List<_i1.SmithySerializer> serializers = [
    PutObjectRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutObjectRequestBuilder b) {}

  /// The canned ACL to apply to the object. For more information, see [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).
  ///
  /// This action is not supported by Amazon S3 on Outposts.
  _i4.ObjectCannedAcl? get acl;

  /// Object data.
  _i2.Stream<List<int>>? get body;

  /// The bucket name to which the PUT action was initiated.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When using this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with server-side encryption using AWS KMS (SSE-KMS). Setting this header to `true` causes Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS.
  ///
  /// Specifying this header with a PUT action doesn’t affect bucket-level settings for S3 Bucket Key.
  bool? get bucketKeyEnabled;

  /// Can be used to specify caching behavior along the request/reply chain. For more information, see [http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9).
  String? get cacheControl;

  /// Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any additional functionality if not using the SDK. When sending this header, there must be a corresponding `x-amz-checksum` or `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request with the HTTP status code `400 Bad Request`. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// If you provide an individual checksum, Amazon S3 ignores any provided `ChecksumAlgorithm` parameter.
  _i5.ChecksumAlgorithm? get checksumAlgorithm;

  /// This header can be used as a data integrity check to verify that the data received is the same data that was originally sent. This header specifies the base64-encoded, 32-bit CRC32 checksum of the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get checksumCrc32;

  /// This header can be used as a data integrity check to verify that the data received is the same data that was originally sent. This header specifies the base64-encoded, 32-bit CRC32C checksum of the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get checksumCrc32C;

  /// This header can be used as a data integrity check to verify that the data received is the same data that was originally sent. This header specifies the base64-encoded, 160-bit SHA-1 digest of the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get checksumSha1;

  /// This header can be used as a data integrity check to verify that the data received is the same data that was originally sent. This header specifies the base64-encoded, 256-bit SHA-256 digest of the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get checksumSha256;

  /// Specifies presentational information for the object. For more information, see [http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1](http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1).
  String? get contentDisposition;

  /// Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. For more information, see [http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11).
  String? get contentEncoding;

  /// The language the content is in.
  String? get contentLanguage;

  /// Size of the body in bytes. This parameter is useful when the size of the body cannot be determined automatically. For more information, see [http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.13](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.13).
  _i6.Int64? get contentLength;

  /// The base64-encoded 128-bit MD5 digest of the message (without the headers) according to RFC 1864. This header can be used as a message integrity check to verify that the data is the same data that was originally sent. Although it is optional, we recommend using the Content-MD5 mechanism as an end-to-end integrity check. For more information about REST request authentication, see [REST Authentication](https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html).
  String? get contentMd5;

  /// A standard MIME type describing the format of the contents. For more information, see [http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17).
  String? get contentType;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// The date and time at which the object is no longer cacheable. For more information, see [http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.21](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.21).
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

  /// Object key for which the PUT action was initiated.
  String get key;

  /// A map of metadata to store with the object in S3.
  _i12.BuiltMap<String, String>? get metadata;

  /// Specifies whether a legal hold will be applied to this object. For more information about S3 Object Lock, see [Object Lock](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).
  _i7.ObjectLockLegalHoldStatus? get objectLockLegalHoldStatus;

  /// The Object Lock mode that you want to apply to this object.
  _i8.ObjectLockMode? get objectLockMode;

  /// The date and time when you want this object's Object Lock to expire. Must be formatted as a timestamp parameter.
  DateTime? get objectLockRetainUntilDate;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  _i9.RequestPayer? get requestPayer;

  /// The server-side encryption algorithm used when storing this object in Amazon S3 (for example, AES256, aws:kms).
  _i10.ServerSideEncryption? get serverSideEncryption;

  /// Specifies the algorithm to use to when encrypting the object (for example, AES256).
  String? get sseCustomerAlgorithm;

  /// Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the `x-amz-server-side-encryption-customer-algorithm` header.
  String? get sseCustomerKey;

  /// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  String? get sseCustomerKeyMd5;

  /// Specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The value of this header is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs.
  String? get ssekmsEncryptionContext;

  /// If `x-amz-server-side-encryption` is present and has the value of `aws:kms`, this header specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetrical customer managed key that was used for the object. If you specify `x-amz-server-side-encryption:aws:kms`, but do not provide `x-amz-server-side-encryption-aws-kms-key-id`, Amazon S3 uses the Amazon Web Services managed key to protect the data. If the KMS key does not exist in the same account issuing the command, you must use the full ARN and not just the ID.
  String? get ssekmsKeyId;

  /// By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The STANDARD storage class provides high durability and high availability. Depending on performance needs, you can specify a different Storage Class. Amazon S3 on Outposts only uses the OUTPOSTS Storage Class. For more information, see [Storage Classes](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html) in the _Amazon S3 User Guide_.
  _i11.StorageClass? get storageClass;

  /// The tag-set for the object. The tag-set must be encoded as URL Query parameters. (For example, "Key1=Value1")
  String? get tagging;

  /// If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata. For information about object metadata, see [Object Key and Metadata](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html).
  ///
  /// In the following example, the request header sets the redirect to an object (anotherPage.html) in the same bucket:
  ///
  /// `x-amz-website-redirect-location: /anotherPage.html`
  ///
  /// In the following example, the request header sets the object redirect to another website:
  ///
  /// `x-amz-website-redirect-location: http://www.example.com/`
  ///
  /// For more information about website hosting in Amazon S3, see [Hosting Websites on Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html) and [How to Configure Website Page Redirects](https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html).
  String? get websiteRedirectLocation;
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
  _i2.Stream<List<int>>? getPayload() => body;
  @override
  List<Object?> get props => [
        acl,
        body,
        bucket,
        bucketKeyEnabled,
        cacheControl,
        checksumAlgorithm,
        checksumCrc32,
        checksumCrc32C,
        checksumSha1,
        checksumSha256,
        contentDisposition,
        contentEncoding,
        contentLanguage,
        contentLength,
        contentMd5,
        contentType,
        expectedBucketOwner,
        expires,
        grantFullControl,
        grantRead,
        grantReadAcp,
        grantWriteAcp,
        key,
        metadata,
        objectLockLegalHoldStatus,
        objectLockMode,
        objectLockRetainUntilDate,
        requestPayer,
        serverSideEncryption,
        sseCustomerAlgorithm,
        sseCustomerKey,
        sseCustomerKeyMd5,
        ssekmsEncryptionContext,
        ssekmsKeyId,
        storageClass,
        tagging,
        websiteRedirectLocation,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutObjectRequest');
    helper.add(
      'acl',
      acl,
    );
    helper.add(
      'body',
      body,
    );
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'bucketKeyEnabled',
      bucketKeyEnabled,
    );
    helper.add(
      'cacheControl',
      cacheControl,
    );
    helper.add(
      'checksumAlgorithm',
      checksumAlgorithm,
    );
    helper.add(
      'checksumCrc32',
      checksumCrc32,
    );
    helper.add(
      'checksumCrc32C',
      checksumCrc32C,
    );
    helper.add(
      'checksumSha1',
      checksumSha1,
    );
    helper.add(
      'checksumSha256',
      checksumSha256,
    );
    helper.add(
      'contentDisposition',
      contentDisposition,
    );
    helper.add(
      'contentEncoding',
      contentEncoding,
    );
    helper.add(
      'contentLanguage',
      contentLanguage,
    );
    helper.add(
      'contentLength',
      contentLength,
    );
    helper.add(
      'contentMd5',
      contentMd5,
    );
    helper.add(
      'contentType',
      contentType,
    );
    helper.add(
      'expectedBucketOwner',
      expectedBucketOwner,
    );
    helper.add(
      'expires',
      expires,
    );
    helper.add(
      'grantFullControl',
      grantFullControl,
    );
    helper.add(
      'grantRead',
      grantRead,
    );
    helper.add(
      'grantReadAcp',
      grantReadAcp,
    );
    helper.add(
      'grantWriteAcp',
      grantWriteAcp,
    );
    helper.add(
      'key',
      key,
    );
    helper.add(
      'metadata',
      metadata,
    );
    helper.add(
      'objectLockLegalHoldStatus',
      objectLockLegalHoldStatus,
    );
    helper.add(
      'objectLockMode',
      objectLockMode,
    );
    helper.add(
      'objectLockRetainUntilDate',
      objectLockRetainUntilDate,
    );
    helper.add(
      'requestPayer',
      requestPayer,
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
      'sseCustomerKey',
      '***SENSITIVE***',
    );
    helper.add(
      'sseCustomerKeyMd5',
      sseCustomerKeyMd5,
    );
    helper.add(
      'ssekmsEncryptionContext',
      '***SENSITIVE***',
    );
    helper.add(
      'ssekmsKeyId',
      '***SENSITIVE***',
    );
    helper.add(
      'storageClass',
      storageClass,
    );
    helper.add(
      'tagging',
      tagging,
    );
    helper.add(
      'websiteRedirectLocation',
      websiteRedirectLocation,
    );
    return helper.toString();
  }
}

class PutObjectRequestRestXmlSerializer
    extends _i1.PrimitiveSmithySerializer<_i2.Stream<List<int>>> {
  const PutObjectRequestRestXmlSerializer() : super('PutObjectRequest');

  @override
  Iterable<Type> get types => const [
        PutObjectRequest,
        _$PutObjectRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.Stream<List<int>> deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(
        _i2.Stream,
        [
          FullType(
            List,
            [FullType(int)],
          )
        ],
      ),
    ) as _i2.Stream<List<int>>);
  }

  @override
  Object serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is PutObjectRequest
        ? object.getPayload()
        : (object as _i2.Stream<List<int>>?);
    final result = <Object?>[
      const _i1.XmlElementName(
        'PutObjectRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload == null) {
      return result;
    }
    result.add(serializers.serialize(
      payload,
      specifiedType: const FullType(
        _i2.Stream,
        [
          FullType(
            List,
            [FullType(int)],
          )
        ],
      ),
    ));
    return result;
  }
}
