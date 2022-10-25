// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.create_multipart_upload_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/checksum_algorithm.dart'
    as _i4;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_canned_acl.dart'
    as _i3;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_lock_legal_hold_status.dart'
    as _i5;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_lock_mode.dart'
    as _i6;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_payer.dart'
    as _i7;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/server_side_encryption.dart'
    as _i8;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/storage_class.dart'
    as _i9;
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i10;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i11;
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
    _i3.ObjectCannedAcl? acl,
    required String bucket,
    bool? bucketKeyEnabled,
    String? cacheControl,
    _i4.ChecksumAlgorithm? checksumAlgorithm,
    String? contentDisposition,
    String? contentEncoding,
    String? contentLanguage,
    String? contentType,
    String? expectedBucketOwner,
    DateTime? expires,
    String? grantFullControl,
    String? grantRead,
    String? grantReadAcp,
    String? grantWriteAcp,
    required String key,
    Map<String, String>? metadata,
    _i5.ObjectLockLegalHoldStatus? objectLockLegalHoldStatus,
    _i6.ObjectLockMode? objectLockMode,
    DateTime? objectLockRetainUntilDate,
    _i7.RequestPayer? requestPayer,
    _i8.ServerSideEncryption? serverSideEncryption,
    String? sseCustomerAlgorithm,
    String? sseCustomerKey,
    String? sseCustomerKeyMd5,
    String? ssekmsEncryptionContext,
    String? ssekmsKeyId,
    _i9.StorageClass? storageClass,
    String? tagging,
    String? websiteRedirectLocation,
  }) {
    bucketKeyEnabled ??= false;
    return _$CreateMultipartUploadRequest._(
      acl: acl,
      bucket: bucket,
      bucketKeyEnabled: bucketKeyEnabled,
      cacheControl: cacheControl,
      checksumAlgorithm: checksumAlgorithm,
      contentDisposition: contentDisposition,
      contentEncoding: contentEncoding,
      contentLanguage: contentLanguage,
      contentType: contentType,
      expectedBucketOwner: expectedBucketOwner,
      expires: expires,
      grantFullControl: grantFullControl,
      grantRead: grantRead,
      grantReadAcp: grantReadAcp,
      grantWriteAcp: grantWriteAcp,
      key: key,
      metadata: metadata == null ? null : _i10.BuiltMap(metadata),
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
          b.acl =
              _i3.ObjectCannedAcl.values.byValue(request.headers['x-amz-acl']!);
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
          b.serverSideEncryption = _i8.ServerSideEncryption.values
              .byValue(request.headers['x-amz-server-side-encryption']!);
        }
        if (request.headers['x-amz-storage-class'] != null) {
          b.storageClass = _i9.StorageClass.values
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
          b.requestPayer = _i7.RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
        }
        if (request.headers['x-amz-tagging'] != null) {
          b.tagging = request.headers['x-amz-tagging']!;
        }
        if (request.headers['x-amz-object-lock-mode'] != null) {
          b.objectLockMode = _i6.ObjectLockMode.values
              .byValue(request.headers['x-amz-object-lock-mode']!);
        }
        if (request.headers['x-amz-object-lock-retain-until-date'] != null) {
          b.objectLockRetainUntilDate = _i1.Timestamp.parse(
            request.headers['x-amz-object-lock-retain-until-date']!,
            format: _i1.TimestampFormat.dateTime,
          ).asDateTime;
        }
        if (request.headers['x-amz-object-lock-legal-hold'] != null) {
          b.objectLockLegalHoldStatus = _i5.ObjectLockLegalHoldStatus.values
              .byValue(request.headers['x-amz-object-lock-legal-hold']!);
        }
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (request.headers['x-amz-checksum-algorithm'] != null) {
          b.checksumAlgorithm = _i4.ChecksumAlgorithm.values
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

  static const List<_i1.SmithySerializer> serializers = [
    CreateMultipartUploadRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateMultipartUploadRequestBuilder b) {
    b.bucketKeyEnabled = false;
  }

  /// The canned ACL to apply to the object.
  ///
  /// This action is not supported by Amazon S3 on Outposts.
  _i3.ObjectCannedAcl? get acl;

  /// The name of the bucket to which to initiate the upload
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When using this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with server-side encryption using AWS KMS (SSE-KMS). Setting this header to `true` causes Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS.
  ///
  /// Specifying this header with an object action doesn’t affect bucket-level settings for S3 Bucket Key.
  bool get bucketKeyEnabled;

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

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

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

  /// Object key for which the multipart upload is to be initiated.
  String get key;

  /// A map of metadata to store with the object in S3.
  _i10.BuiltMap<String, String>? get metadata;

  /// Specifies whether you want to apply a legal hold to the uploaded object.
  _i5.ObjectLockLegalHoldStatus? get objectLockLegalHoldStatus;

  /// Specifies the Object Lock mode that you want to apply to the uploaded object.
  _i6.ObjectLockMode? get objectLockMode;

  /// Specifies the date and time when you want the Object Lock to expire.
  DateTime? get objectLockRetainUntilDate;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  _i7.RequestPayer? get requestPayer;

  /// The server-side encryption algorithm used when storing this object in Amazon S3 (for example, AES256, aws:kms).
  _i8.ServerSideEncryption? get serverSideEncryption;

  /// Specifies the algorithm to use to when encrypting the object (for example, AES256).
  String? get sseCustomerAlgorithm;

  /// Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the `x-amz-server-side-encryption-customer-algorithm` header.
  String? get sseCustomerKey;

  /// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  String? get sseCustomerKeyMd5;

  /// Specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The value of this header is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs.
  String? get ssekmsEncryptionContext;

  /// Specifies the ID of the symmetric customer managed key to use for object encryption. All GET and PUT requests for an object protected by Amazon Web Services KMS will fail if not made via SSL or using SigV4. For information about configuring using any of the officially supported Amazon Web Services SDKs and Amazon Web Services CLI, see [Specifying the Signature Version in Request Authentication](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version) in the _Amazon S3 User Guide_.
  String? get ssekmsKeyId;

  /// By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The STANDARD storage class provides high durability and high availability. Depending on performance needs, you can specify a different Storage Class. Amazon S3 on Outposts only uses the OUTPOSTS Storage Class. For more information, see [Storage Classes](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html) in the _Amazon S3 User Guide_.
  _i9.StorageClass? get storageClass;

  /// The tag-set for the object. The tag-set must be encoded as URL Query parameters.
  String? get tagging;

  /// If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
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
  CreateMultipartUploadRequestPayload getPayload() =>
      CreateMultipartUploadRequestPayload();
  @override
  List<Object?> get props => [
        acl,
        bucket,
        bucketKeyEnabled,
        cacheControl,
        checksumAlgorithm,
        contentDisposition,
        contentEncoding,
        contentLanguage,
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
    final helper = newBuiltValueToStringHelper('CreateMultipartUploadRequest');
    helper.add(
      'acl',
      acl,
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

@_i11.internal
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

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateMultipartUploadRequestPayloadBuilder b) {}
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateMultipartUploadRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
