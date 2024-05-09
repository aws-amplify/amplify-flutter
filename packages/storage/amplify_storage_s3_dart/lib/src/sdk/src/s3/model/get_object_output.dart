// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.get_object_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i3;

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_lock_legal_hold_status.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_lock_mode.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/replication_status.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_charged.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/server_side_encryption.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/storage_class.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i2;

part 'get_object_output.g.dart';

abstract class GetObjectOutput
    with _i1.AWSEquatable<GetObjectOutput>
    implements
        Built<GetObjectOutput, GetObjectOutputBuilder>,
        _i2.HasPayload<_i3.Stream<List<int>>> {
  factory GetObjectOutput({
    _i3.Stream<List<int>>? body,
    bool? deleteMarker,
    String? acceptRanges,
    String? expiration,
    String? restore,
    DateTime? lastModified,
    _i4.Int64? contentLength,
    String? eTag,
    String? checksumCrc32,
    String? checksumCrc32C,
    String? checksumSha1,
    String? checksumSha256,
    int? missingMeta,
    String? versionId,
    String? cacheControl,
    String? contentDisposition,
    String? contentEncoding,
    String? contentLanguage,
    String? contentRange,
    String? contentType,
    DateTime? expires,
    String? websiteRedirectLocation,
    ServerSideEncryption? serverSideEncryption,
    Map<String, String>? metadata,
    String? sseCustomerAlgorithm,
    String? sseCustomerKeyMd5,
    String? ssekmsKeyId,
    bool? bucketKeyEnabled,
    StorageClass? storageClass,
    RequestCharged? requestCharged,
    ReplicationStatus? replicationStatus,
    int? partsCount,
    int? tagCount,
    ObjectLockMode? objectLockMode,
    DateTime? objectLockRetainUntilDate,
    ObjectLockLegalHoldStatus? objectLockLegalHoldStatus,
  }) {
    body ??= const _i3.Stream.empty();
    return _$GetObjectOutput._(
      body: body,
      deleteMarker: deleteMarker,
      acceptRanges: acceptRanges,
      expiration: expiration,
      restore: restore,
      lastModified: lastModified,
      contentLength: contentLength,
      eTag: eTag,
      checksumCrc32: checksumCrc32,
      checksumCrc32C: checksumCrc32C,
      checksumSha1: checksumSha1,
      checksumSha256: checksumSha256,
      missingMeta: missingMeta,
      versionId: versionId,
      cacheControl: cacheControl,
      contentDisposition: contentDisposition,
      contentEncoding: contentEncoding,
      contentLanguage: contentLanguage,
      contentRange: contentRange,
      contentType: contentType,
      expires: expires,
      websiteRedirectLocation: websiteRedirectLocation,
      serverSideEncryption: serverSideEncryption,
      metadata: metadata == null ? null : _i5.BuiltMap(metadata),
      sseCustomerAlgorithm: sseCustomerAlgorithm,
      sseCustomerKeyMd5: sseCustomerKeyMd5,
      ssekmsKeyId: ssekmsKeyId,
      bucketKeyEnabled: bucketKeyEnabled,
      storageClass: storageClass,
      requestCharged: requestCharged,
      replicationStatus: replicationStatus,
      partsCount: partsCount,
      tagCount: tagCount,
      objectLockMode: objectLockMode,
      objectLockRetainUntilDate: objectLockRetainUntilDate,
      objectLockLegalHoldStatus: objectLockLegalHoldStatus,
    );
  }

  factory GetObjectOutput.build(
      [void Function(GetObjectOutputBuilder) updates]) = _$GetObjectOutput;

  const GetObjectOutput._();

  /// Constructs a [GetObjectOutput] from a [payload] and [response].
  factory GetObjectOutput.fromResponse(
    _i3.Stream<List<int>> payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetObjectOutput.build((b) {
        b.body = payload;
        if (response.headers['x-amz-delete-marker'] != null) {
          b.deleteMarker = response.headers['x-amz-delete-marker']! == 'true';
        }
        if (response.headers['accept-ranges'] != null) {
          b.acceptRanges = response.headers['accept-ranges']!;
        }
        if (response.headers['x-amz-expiration'] != null) {
          b.expiration = response.headers['x-amz-expiration']!;
        }
        if (response.headers['x-amz-restore'] != null) {
          b.restore = response.headers['x-amz-restore']!;
        }
        if (response.headers['Last-Modified'] != null) {
          b.lastModified = _i2.Timestamp.parse(
            response.headers['Last-Modified']!,
            format: _i2.TimestampFormat.httpDate,
          ).asDateTime;
        }
        if (response.headers['Content-Length'] != null) {
          b.contentLength =
              _i4.Int64.parseInt(response.headers['Content-Length']!);
        }
        if (response.headers['ETag'] != null) {
          b.eTag = response.headers['ETag']!;
        }
        if (response.headers['x-amz-checksum-crc32'] != null) {
          b.checksumCrc32 = response.headers['x-amz-checksum-crc32']!;
        }
        if (response.headers['x-amz-checksum-crc32c'] != null) {
          b.checksumCrc32C = response.headers['x-amz-checksum-crc32c']!;
        }
        if (response.headers['x-amz-checksum-sha1'] != null) {
          b.checksumSha1 = response.headers['x-amz-checksum-sha1']!;
        }
        if (response.headers['x-amz-checksum-sha256'] != null) {
          b.checksumSha256 = response.headers['x-amz-checksum-sha256']!;
        }
        if (response.headers['x-amz-missing-meta'] != null) {
          b.missingMeta = int.parse(response.headers['x-amz-missing-meta']!);
        }
        if (response.headers['x-amz-version-id'] != null) {
          b.versionId = response.headers['x-amz-version-id']!;
        }
        if (response.headers['Cache-Control'] != null) {
          b.cacheControl = response.headers['Cache-Control']!;
        }
        if (response.headers['Content-Disposition'] != null) {
          b.contentDisposition = response.headers['Content-Disposition']!;
        }
        if (response.headers['Content-Encoding'] != null) {
          b.contentEncoding = response.headers['Content-Encoding']!;
        }
        if (response.headers['Content-Language'] != null) {
          b.contentLanguage = response.headers['Content-Language']!;
        }
        if (response.headers['Content-Range'] != null) {
          b.contentRange = response.headers['Content-Range']!;
        }
        if (response.headers['Content-Type'] != null) {
          b.contentType = response.headers['Content-Type']!;
        }
        if (response.headers['Expires'] != null) {
          b.expires = _i2.Timestamp.parse(
            response.headers['Expires']!,
            format: _i2.TimestampFormat.httpDate,
          ).asDateTime;
        }
        if (response.headers['x-amz-website-redirect-location'] != null) {
          b.websiteRedirectLocation =
              response.headers['x-amz-website-redirect-location']!;
        }
        if (response.headers['x-amz-server-side-encryption'] != null) {
          b.serverSideEncryption = ServerSideEncryption.values
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
        if (response.headers['x-amz-storage-class'] != null) {
          b.storageClass = StorageClass.values
              .byValue(response.headers['x-amz-storage-class']!);
        }
        if (response.headers['x-amz-request-charged'] != null) {
          b.requestCharged = RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
        if (response.headers['x-amz-replication-status'] != null) {
          b.replicationStatus = ReplicationStatus.values
              .byValue(response.headers['x-amz-replication-status']!);
        }
        if (response.headers['x-amz-mp-parts-count'] != null) {
          b.partsCount = int.parse(response.headers['x-amz-mp-parts-count']!);
        }
        if (response.headers['x-amz-tagging-count'] != null) {
          b.tagCount = int.parse(response.headers['x-amz-tagging-count']!);
        }
        if (response.headers['x-amz-object-lock-mode'] != null) {
          b.objectLockMode = ObjectLockMode.values
              .byValue(response.headers['x-amz-object-lock-mode']!);
        }
        if (response.headers['x-amz-object-lock-retain-until-date'] != null) {
          b.objectLockRetainUntilDate = _i2.Timestamp.parse(
            response.headers['x-amz-object-lock-retain-until-date']!,
            format: _i2.TimestampFormat.dateTime,
          ).asDateTime;
        }
        if (response.headers['x-amz-object-lock-legal-hold'] != null) {
          b.objectLockLegalHoldStatus = ObjectLockLegalHoldStatus.values
              .byValue(response.headers['x-amz-object-lock-legal-hold']!);
        }
        b.metadata.addEntries(response.headers.entries
            .where((el) => el.key.startsWith('x-amz-meta-'))
            .map((el) => MapEntry(
                  el.key.replaceFirst(
                    'x-amz-meta-',
                    '',
                  ),
                  el.value,
                )));
      });

  static const List<_i2.SmithySerializer<_i3.Stream<List<int>>>> serializers = [
    GetObjectOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectOutputBuilder b) {
    b.body = const _i3.Stream.empty();
  }

  /// Object data.
  _i3.Stream<List<int>> get body;

  /// Indicates whether the object retrieved was (true) or was not (false) a Delete Marker. If false, this response header does not appear in the response.
  ///
  /// *   If the current version of the object is a delete marker, Amazon S3 behaves as if the object was deleted and includes `x-amz-delete-marker: true` in the response.
  ///
  /// *   If the specified version in the request is a delete marker, the response returns a `405 Method Not Allowed` error and the `Last-Modified: timestamp` response header.
  bool? get deleteMarker;

  /// Indicates that a range of bytes was specified in the request.
  String? get acceptRanges;

  /// If the object expiration is configured (see [`PutBucketLifecycleConfiguration`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html) ), the response includes this header. It includes the `expiry-date` and `rule-id` key-value pairs providing object expiration information. The value of the `rule-id` is URL-encoded.
  ///
  /// This functionality is not supported for directory buckets.
  String? get expiration;

  /// Provides information about object restoration action and expiration time of the restored object copy.
  ///
  /// This functionality is not supported for directory buckets. Only the S3 Express One Zone storage class is supported by directory buckets to store objects.
  String? get restore;

  /// Date and time when the object was last modified.
  ///
  /// **General purpose buckets** \- When you specify a `versionId` of the object in your request, if the specified version in the request is a delete marker, the response returns a `405 Method Not Allowed` error and the `Last-Modified: timestamp` response header.
  DateTime? get lastModified;

  /// Size of the body in bytes.
  _i4.Int64? get contentLength;

  /// An entity tag (ETag) is an opaque identifier assigned by a web server to a specific version of a resource found at a URL.
  String? get eTag;

  /// The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded with the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get checksumCrc32;

  /// The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded with the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get checksumCrc32C;

  /// The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded with the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get checksumSha1;

  /// The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded with the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get checksumSha256;

  /// This is set to the number of metadata entries not returned in the headers that are prefixed with `x-amz-meta-`. This can happen if you create metadata using an API like SOAP that supports more flexible metadata than the REST API. For example, using SOAP, you can create metadata whose values are not legal HTTP headers.
  ///
  /// This functionality is not supported for directory buckets.
  int? get missingMeta;

  /// Version ID of the object.
  ///
  /// This functionality is not supported for directory buckets.
  String? get versionId;

  /// Specifies caching behavior along the request/reply chain.
  String? get cacheControl;

  /// Specifies presentational information for the object.
  String? get contentDisposition;

  /// Indicates what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
  String? get contentEncoding;

  /// The language the content is in.
  String? get contentLanguage;

  /// The portion of the object returned in the response.
  String? get contentRange;

  /// A standard MIME type describing the format of the object data.
  String? get contentType;

  /// The date and time at which the object is no longer cacheable.
  DateTime? get expires;

  /// If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
  ///
  /// This functionality is not supported for directory buckets.
  String? get websiteRedirectLocation;

  /// The server-side encryption algorithm used when you store this object in Amazon S3 (for example, `AES256`, `aws:kms`, `aws:kms:dsse`).
  ///
  /// For directory buckets, only server-side encryption with Amazon S3 managed keys (SSE-S3) (`AES256`) is supported.
  ServerSideEncryption? get serverSideEncryption;

  /// A map of metadata to store with the object in S3.
  _i5.BuiltMap<String, String>? get metadata;

  /// If server-side encryption with a customer-provided encryption key was requested, the response will include this header to confirm the encryption algorithm that's used.
  ///
  /// This functionality is not supported for directory buckets.
  String? get sseCustomerAlgorithm;

  /// If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide the round-trip message integrity verification of the customer-provided encryption key.
  ///
  /// This functionality is not supported for directory buckets.
  String? get sseCustomerKeyMd5;

  /// If present, indicates the ID of the Key Management Service (KMS) symmetric encryption customer managed key that was used for the object.
  ///
  /// This functionality is not supported for directory buckets.
  String? get ssekmsKeyId;

  /// Indicates whether the object uses an S3 Bucket Key for server-side encryption with Key Management Service (KMS) keys (SSE-KMS).
  ///
  /// This functionality is not supported for directory buckets.
  bool? get bucketKeyEnabled;

  /// Provides storage class information of the object. Amazon S3 returns this header for all objects except for S3 Standard storage class objects.
  ///
  /// **Directory buckets** \- Only the S3 Express One Zone storage class is supported by directory buckets to store objects.
  StorageClass? get storageClass;

  /// If present, indicates that the requester was successfully charged for the request.
  ///
  /// This functionality is not supported for directory buckets.
  RequestCharged? get requestCharged;

  /// Amazon S3 can return this if your request involves a bucket that is either a source or destination in a replication rule.
  ///
  /// This functionality is not supported for directory buckets.
  ReplicationStatus? get replicationStatus;

  /// The count of parts this object has. This value is only returned if you specify `partNumber` in your request and the object was uploaded as a multipart upload.
  int? get partsCount;

  /// The number of tags, if any, on the object, when you have the relevant permission to read object tags.
  ///
  /// You can use [GetObjectTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html) to retrieve the tag set associated with an object.
  ///
  /// This functionality is not supported for directory buckets.
  int? get tagCount;

  /// The Object Lock mode that's currently in place for this object.
  ///
  /// This functionality is not supported for directory buckets.
  ObjectLockMode? get objectLockMode;

  /// The date and time when this object's Object Lock will expire.
  ///
  /// This functionality is not supported for directory buckets.
  DateTime? get objectLockRetainUntilDate;

  /// Indicates whether this object has an active legal hold. This field is only returned if you have permission to view an object's legal hold status.
  ///
  /// This functionality is not supported for directory buckets.
  ObjectLockLegalHoldStatus? get objectLockLegalHoldStatus;
  @override
  _i3.Stream<List<int>> getPayload() => body;

  @override
  List<Object?> get props => [
        body,
        deleteMarker,
        acceptRanges,
        expiration,
        restore,
        lastModified,
        contentLength,
        eTag,
        checksumCrc32,
        checksumCrc32C,
        checksumSha1,
        checksumSha256,
        missingMeta,
        versionId,
        cacheControl,
        contentDisposition,
        contentEncoding,
        contentLanguage,
        contentRange,
        contentType,
        expires,
        websiteRedirectLocation,
        serverSideEncryption,
        metadata,
        sseCustomerAlgorithm,
        sseCustomerKeyMd5,
        ssekmsKeyId,
        bucketKeyEnabled,
        storageClass,
        requestCharged,
        replicationStatus,
        partsCount,
        tagCount,
        objectLockMode,
        objectLockRetainUntilDate,
        objectLockLegalHoldStatus,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectOutput')
      ..add(
        'body',
        body,
      )
      ..add(
        'deleteMarker',
        deleteMarker,
      )
      ..add(
        'acceptRanges',
        acceptRanges,
      )
      ..add(
        'expiration',
        expiration,
      )
      ..add(
        'restore',
        restore,
      )
      ..add(
        'lastModified',
        lastModified,
      )
      ..add(
        'contentLength',
        contentLength,
      )
      ..add(
        'eTag',
        eTag,
      )
      ..add(
        'checksumCrc32',
        checksumCrc32,
      )
      ..add(
        'checksumCrc32C',
        checksumCrc32C,
      )
      ..add(
        'checksumSha1',
        checksumSha1,
      )
      ..add(
        'checksumSha256',
        checksumSha256,
      )
      ..add(
        'missingMeta',
        missingMeta,
      )
      ..add(
        'versionId',
        versionId,
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
        'contentRange',
        contentRange,
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
        'websiteRedirectLocation',
        websiteRedirectLocation,
      )
      ..add(
        'serverSideEncryption',
        serverSideEncryption,
      )
      ..add(
        'metadata',
        metadata,
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
        'bucketKeyEnabled',
        bucketKeyEnabled,
      )
      ..add(
        'storageClass',
        storageClass,
      )
      ..add(
        'requestCharged',
        requestCharged,
      )
      ..add(
        'replicationStatus',
        replicationStatus,
      )
      ..add(
        'partsCount',
        partsCount,
      )
      ..add(
        'tagCount',
        tagCount,
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
      );
    return helper.toString();
  }
}

class GetObjectOutputRestXmlSerializer
    extends _i2.PrimitiveSmithySerializer<_i3.Stream<List<int>>> {
  const GetObjectOutputRestXmlSerializer() : super('GetObjectOutput');

  @override
  Iterable<Type> get types => const [
        GetObjectOutput,
        _$GetObjectOutput,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  _i3.Stream<List<int>> deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(
        _i3.Stream,
        [
          FullType(
            List,
            [FullType(int)],
          )
        ],
      ),
    ) as _i3.Stream<List<int>>);
  }

  @override
  Object serialize(
    Serializers serializers,
    _i3.Stream<List<int>> object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GetObjectOutput',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    result$.add(serializers.serialize(
      object,
      specifiedType: const FullType(
        _i3.Stream,
        [
          FullType(
            List,
            [FullType(int)],
          )
        ],
      ),
    ));
    return result$;
  }
}
