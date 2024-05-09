// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.create_multipart_upload_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/checksum_algorithm.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_canned_acl.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_lock_legal_hold_status.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_lock_mode.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_payer.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/server_side_encryption.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/storage_class.dart';
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'create_multipart_upload_request.g.dart';

abstract class CreateMultipartUploadRequest
    with
        _i1.HttpInput<CreateMultipartUploadRequestPayload>,
        _i2.AWSEquatable<CreateMultipartUploadRequest>
    implements
        Built<CreateMultipartUploadRequest,
            CreateMultipartUploadRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<CreateMultipartUploadRequestPayload> {
  factory CreateMultipartUploadRequest({
    ObjectCannedAcl? acl,
    required String bucket,
    String? cacheControl,
    String? contentDisposition,
    String? contentEncoding,
    String? contentLanguage,
    String? contentType,
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
    ChecksumAlgorithm? checksumAlgorithm,
  }) {
    return _$CreateMultipartUploadRequest._(
      acl: acl,
      bucket: bucket,
      cacheControl: cacheControl,
      contentDisposition: contentDisposition,
      contentEncoding: contentEncoding,
      contentLanguage: contentLanguage,
      contentType: contentType,
      expires: expires,
      grantFullControl: grantFullControl,
      grantRead: grantRead,
      grantReadAcp: grantReadAcp,
      grantWriteAcp: grantWriteAcp,
      key: key,
      metadata: metadata == null ? null : _i3.BuiltMap(metadata),
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
      checksumAlgorithm: checksumAlgorithm,
    );
  }

  factory CreateMultipartUploadRequest.build(
          [void Function(CreateMultipartUploadRequestBuilder) updates]) =
      _$CreateMultipartUploadRequest;

  const CreateMultipartUploadRequest._();

  factory CreateMultipartUploadRequest.fromRequest(
    CreateMultipartUploadRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      CreateMultipartUploadRequest.build((b) {
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
        if (request.headers['Content-Type'] != null) {
          b.contentType = request.headers['Content-Type']!;
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
        if (request.headers['x-amz-checksum-algorithm'] != null) {
          b.checksumAlgorithm = ChecksumAlgorithm.values
              .byValue(request.headers['x-amz-checksum-algorithm']!);
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

  static const List<_i1.SmithySerializer<CreateMultipartUploadRequestPayload>>
      serializers = [CreateMultipartUploadRequestRestXmlSerializer()];

  /// The canned ACL to apply to the object. Amazon S3 supports a set of predefined ACLs, known as _canned ACLs_. Each canned ACL has a predefined set of grantees and permissions. For more information, see [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL) in the _Amazon S3 User Guide_.
  ///
  /// By default, all objects are private. Only the owner has full access control. When uploading an object, you can grant access permissions to individual Amazon Web Services accounts or to predefined groups defined by Amazon S3. These permissions are then added to the access control list (ACL) on the new object. For more information, see [Using ACLs](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html). One way to grant the permissions using the request headers is to specify a canned ACL with the `x-amz-acl` request header.
  ///
  /// *   This functionality is not supported for directory buckets.
  ///
  /// *   This functionality is not supported for Amazon S3 on Outposts.
  ObjectCannedAcl? get acl;

  /// The name of the bucket where the multipart upload is initiated and where the object is uploaded.
  ///
  /// **Directory buckets** \- When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format `_Bucket_name_.s3express-_az_id_._region_.amazonaws.com`. Path-style requests are not supported. Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format `_bucket\_base\_name_--_az-id_--x-s3` (for example, `_DOC-EXAMPLE-BUCKET_--_usw2-az2_--x-s3`). For information about bucket naming restrictions, see [Directory bucket naming rules](https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html) in the _Amazon S3 User Guide_.
  ///
  /// **Access points** \- When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// Access points and Object Lambda access points are not supported by directory buckets.
  ///
  /// **S3 on Outposts** \- When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [What is S3 on Outposts?](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// Specifies caching behavior along the request/reply chain.
  String? get cacheControl;

  /// Specifies presentational information for the object.
  String? get contentDisposition;

  /// Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
  ///
  /// For directory buckets, only the `aws-chunked` value is supported in this header field.
  String? get contentEncoding;

  /// The language that the content is in.
  String? get contentLanguage;

  /// A standard MIME type describing the format of the object data.
  String? get contentType;

  /// The date and time at which the object is no longer cacheable.
  DateTime? get expires;

  /// Specify access permissions explicitly to give the grantee READ, READ\_ACP, and WRITE\_ACP permissions on the object.
  ///
  /// By default, all objects are private. Only the owner has full access control. When uploading an object, you can use this header to explicitly grant access permissions to specific Amazon Web Services accounts or groups. This header maps to specific permissions that Amazon S3 supports in an ACL. For more information, see [Access Control List (ACL) Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html) in the _Amazon S3 User Guide_.
  ///
  /// You specify each grantee as a type=value pair, where the type is one of the following:
  ///
  /// *   `id` – if the value specified is the canonical user ID of an Amazon Web Services account
  ///
  /// *   `uri` – if you are granting permissions to a predefined group
  ///
  /// *   `emailAddress` – if the value specified is the email address of an Amazon Web Services account
  ///
  ///     Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions:
  ///
  ///     *   US East (N. Virginia)
  ///
  ///     *   US West (N. California)
  ///
  ///     *   US West (Oregon)
  ///
  ///     *   Asia Pacific (Singapore)
  ///
  ///     *   Asia Pacific (Sydney)
  ///
  ///     *   Asia Pacific (Tokyo)
  ///
  ///     *   Europe (Ireland)
  ///
  ///     *   South America (São Paulo)
  ///
  ///
  ///     For a list of all the Amazon S3 supported Regions and endpoints, see [Regions and Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) in the Amazon Web Services General Reference.
  ///
  ///
  /// For example, the following `x-amz-grant-read` header grants the Amazon Web Services accounts identified by account IDs permissions to read object data and its metadata:
  ///
  /// `x-amz-grant-read: id="11112222333", id="444455556666"`
  ///
  /// *   This functionality is not supported for directory buckets.
  ///
  /// *   This functionality is not supported for Amazon S3 on Outposts.
  String? get grantFullControl;

  /// Specify access permissions explicitly to allow grantee to read the object data and its metadata.
  ///
  /// By default, all objects are private. Only the owner has full access control. When uploading an object, you can use this header to explicitly grant access permissions to specific Amazon Web Services accounts or groups. This header maps to specific permissions that Amazon S3 supports in an ACL. For more information, see [Access Control List (ACL) Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html) in the _Amazon S3 User Guide_.
  ///
  /// You specify each grantee as a type=value pair, where the type is one of the following:
  ///
  /// *   `id` – if the value specified is the canonical user ID of an Amazon Web Services account
  ///
  /// *   `uri` – if you are granting permissions to a predefined group
  ///
  /// *   `emailAddress` – if the value specified is the email address of an Amazon Web Services account
  ///
  ///     Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions:
  ///
  ///     *   US East (N. Virginia)
  ///
  ///     *   US West (N. California)
  ///
  ///     *   US West (Oregon)
  ///
  ///     *   Asia Pacific (Singapore)
  ///
  ///     *   Asia Pacific (Sydney)
  ///
  ///     *   Asia Pacific (Tokyo)
  ///
  ///     *   Europe (Ireland)
  ///
  ///     *   South America (São Paulo)
  ///
  ///
  ///     For a list of all the Amazon S3 supported Regions and endpoints, see [Regions and Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) in the Amazon Web Services General Reference.
  ///
  ///
  /// For example, the following `x-amz-grant-read` header grants the Amazon Web Services accounts identified by account IDs permissions to read object data and its metadata:
  ///
  /// `x-amz-grant-read: id="11112222333", id="444455556666"`
  ///
  /// *   This functionality is not supported for directory buckets.
  ///
  /// *   This functionality is not supported for Amazon S3 on Outposts.
  String? get grantRead;

  /// Specify access permissions explicitly to allows grantee to read the object ACL.
  ///
  /// By default, all objects are private. Only the owner has full access control. When uploading an object, you can use this header to explicitly grant access permissions to specific Amazon Web Services accounts or groups. This header maps to specific permissions that Amazon S3 supports in an ACL. For more information, see [Access Control List (ACL) Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html) in the _Amazon S3 User Guide_.
  ///
  /// You specify each grantee as a type=value pair, where the type is one of the following:
  ///
  /// *   `id` – if the value specified is the canonical user ID of an Amazon Web Services account
  ///
  /// *   `uri` – if you are granting permissions to a predefined group
  ///
  /// *   `emailAddress` – if the value specified is the email address of an Amazon Web Services account
  ///
  ///     Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions:
  ///
  ///     *   US East (N. Virginia)
  ///
  ///     *   US West (N. California)
  ///
  ///     *   US West (Oregon)
  ///
  ///     *   Asia Pacific (Singapore)
  ///
  ///     *   Asia Pacific (Sydney)
  ///
  ///     *   Asia Pacific (Tokyo)
  ///
  ///     *   Europe (Ireland)
  ///
  ///     *   South America (São Paulo)
  ///
  ///
  ///     For a list of all the Amazon S3 supported Regions and endpoints, see [Regions and Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) in the Amazon Web Services General Reference.
  ///
  ///
  /// For example, the following `x-amz-grant-read` header grants the Amazon Web Services accounts identified by account IDs permissions to read object data and its metadata:
  ///
  /// `x-amz-grant-read: id="11112222333", id="444455556666"`
  ///
  /// *   This functionality is not supported for directory buckets.
  ///
  /// *   This functionality is not supported for Amazon S3 on Outposts.
  String? get grantReadAcp;

  /// Specify access permissions explicitly to allows grantee to allow grantee to write the ACL for the applicable object.
  ///
  /// By default, all objects are private. Only the owner has full access control. When uploading an object, you can use this header to explicitly grant access permissions to specific Amazon Web Services accounts or groups. This header maps to specific permissions that Amazon S3 supports in an ACL. For more information, see [Access Control List (ACL) Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html) in the _Amazon S3 User Guide_.
  ///
  /// You specify each grantee as a type=value pair, where the type is one of the following:
  ///
  /// *   `id` – if the value specified is the canonical user ID of an Amazon Web Services account
  ///
  /// *   `uri` – if you are granting permissions to a predefined group
  ///
  /// *   `emailAddress` – if the value specified is the email address of an Amazon Web Services account
  ///
  ///     Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions:
  ///
  ///     *   US East (N. Virginia)
  ///
  ///     *   US West (N. California)
  ///
  ///     *   US West (Oregon)
  ///
  ///     *   Asia Pacific (Singapore)
  ///
  ///     *   Asia Pacific (Sydney)
  ///
  ///     *   Asia Pacific (Tokyo)
  ///
  ///     *   Europe (Ireland)
  ///
  ///     *   South America (São Paulo)
  ///
  ///
  ///     For a list of all the Amazon S3 supported Regions and endpoints, see [Regions and Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) in the Amazon Web Services General Reference.
  ///
  ///
  /// For example, the following `x-amz-grant-read` header grants the Amazon Web Services accounts identified by account IDs permissions to read object data and its metadata:
  ///
  /// `x-amz-grant-read: id="11112222333", id="444455556666"`
  ///
  /// *   This functionality is not supported for directory buckets.
  ///
  /// *   This functionality is not supported for Amazon S3 on Outposts.
  String? get grantWriteAcp;

  /// Object key for which the multipart upload is to be initiated.
  String get key;

  /// A map of metadata to store with the object in S3.
  _i3.BuiltMap<String, String>? get metadata;

  /// The server-side encryption algorithm used when you store this object in Amazon S3 (for example, `AES256`, `aws:kms`).
  ///
  /// For directory buckets, only server-side encryption with Amazon S3 managed keys (SSE-S3) (`AES256`) is supported.
  ServerSideEncryption? get serverSideEncryption;

  /// By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The STANDARD storage class provides high durability and high availability. Depending on performance needs, you can specify a different Storage Class. For more information, see [Storage Classes](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html) in the _Amazon S3 User Guide_.
  ///
  /// *   For directory buckets, only the S3 Express One Zone storage class is supported to store newly created objects.
  ///
  /// *   Amazon S3 on Outposts only uses the OUTPOSTS Storage Class.
  StorageClass? get storageClass;

  /// If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
  ///
  /// This functionality is not supported for directory buckets.
  String? get websiteRedirectLocation;

  /// Specifies the algorithm to use when encrypting the object (for example, AES256).
  ///
  /// This functionality is not supported for directory buckets.
  String? get sseCustomerAlgorithm;

  /// Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the `x-amz-server-side-encryption-customer-algorithm` header.
  ///
  /// This functionality is not supported for directory buckets.
  String? get sseCustomerKey;

  /// Specifies the 128-bit MD5 digest of the customer-provided encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  ///
  /// This functionality is not supported for directory buckets.
  String? get sseCustomerKeyMd5;

  /// Specifies the ID (Key ID, Key ARN, or Key Alias) of the symmetric encryption customer managed key to use for object encryption.
  ///
  /// This functionality is not supported for directory buckets.
  String? get ssekmsKeyId;

  /// Specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The value of this header is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs.
  ///
  /// This functionality is not supported for directory buckets.
  String? get ssekmsEncryptionContext;

  /// Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with server-side encryption using Key Management Service (KMS) keys (SSE-KMS). Setting this header to `true` causes Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS.
  ///
  /// Specifying this header with an object action doesn’t affect bucket-level settings for S3 Bucket Key.
  ///
  /// This functionality is not supported for directory buckets.
  bool? get bucketKeyEnabled;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. If either the source or destination S3 bucket has Requester Pays enabled, the requester will pay for corresponding charges to copy the object. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  ///
  /// This functionality is not supported for directory buckets.
  RequestPayer? get requestPayer;

  /// The tag-set for the object. The tag-set must be encoded as URL Query parameters.
  ///
  /// This functionality is not supported for directory buckets.
  String? get tagging;

  /// Specifies the Object Lock mode that you want to apply to the uploaded object.
  ///
  /// This functionality is not supported for directory buckets.
  ObjectLockMode? get objectLockMode;

  /// Specifies the date and time when you want the Object Lock to expire.
  ///
  /// This functionality is not supported for directory buckets.
  DateTime? get objectLockRetainUntilDate;

  /// Specifies whether you want to apply a legal hold to the uploaded object.
  ///
  /// This functionality is not supported for directory buckets.
  ObjectLockLegalHoldStatus? get objectLockLegalHoldStatus;

  /// The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// Indicates the algorithm that you want Amazon S3 to use to create the checksum for the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ChecksumAlgorithm? get checksumAlgorithm;
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
  CreateMultipartUploadRequestPayload getPayload() =>
      CreateMultipartUploadRequestPayload();

  @override
  List<Object?> get props => [
        acl,
        bucket,
        cacheControl,
        contentDisposition,
        contentEncoding,
        contentLanguage,
        contentType,
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
        checksumAlgorithm,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateMultipartUploadRequest')
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
        'checksumAlgorithm',
        checksumAlgorithm,
      );
    return helper.toString();
  }
}

@_i4.internal
abstract class CreateMultipartUploadRequestPayload
    with
        _i2.AWSEquatable<CreateMultipartUploadRequestPayload>
    implements
        Built<CreateMultipartUploadRequestPayload,
            CreateMultipartUploadRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory CreateMultipartUploadRequestPayload(
          [void Function(CreateMultipartUploadRequestPayloadBuilder) updates]) =
      _$CreateMultipartUploadRequestPayload;

  const CreateMultipartUploadRequestPayload._();

  @override
  List<Object?> get props => [];

  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateMultipartUploadRequestPayload');
    return helper.toString();
  }
}

class CreateMultipartUploadRequestRestXmlSerializer extends _i1
    .StructuredSmithySerializer<CreateMultipartUploadRequestPayload> {
  const CreateMultipartUploadRequestRestXmlSerializer()
      : super('CreateMultipartUploadRequest');

  @override
  Iterable<Type> get types => const [
        CreateMultipartUploadRequest,
        _$CreateMultipartUploadRequest,
        CreateMultipartUploadRequestPayload,
        _$CreateMultipartUploadRequestPayload,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  CreateMultipartUploadRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return CreateMultipartUploadRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateMultipartUploadRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateMultipartUploadRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
