// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.head_object_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/archive_status.dart'
    as _i3;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_lock_legal_hold_status.dart'
    as _i10;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_lock_mode.dart'
    as _i9;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/replication_status.dart'
    as _i8;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_charged.dart'
    as _i7;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/server_side_encryption.dart'
    as _i5;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/storage_class.dart'
    as _i6;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i11;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:meta/meta.dart' as _i12;
import 'package:smithy/smithy.dart' as _i2;

part 'head_object_output.g.dart';

abstract class HeadObjectOutput
    with _i1.AWSEquatable<HeadObjectOutput>
    implements
        Built<HeadObjectOutput, HeadObjectOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<HeadObjectOutputPayload> {
  factory HeadObjectOutput({
    bool? deleteMarker,
    String? acceptRanges,
    String? expiration,
    String? restore,
    _i3.ArchiveStatus? archiveStatus,
    DateTime? lastModified,
    _i4.Int64? contentLength,
    String? checksumCrc32,
    String? checksumCrc32C,
    String? checksumSha1,
    String? checksumSha256,
    String? eTag,
    int? missingMeta,
    String? versionId,
    String? cacheControl,
    String? contentDisposition,
    String? contentEncoding,
    String? contentLanguage,
    String? contentType,
    DateTime? expires,
    String? websiteRedirectLocation,
    _i5.ServerSideEncryption? serverSideEncryption,
    Map<String, String>? metadata,
    String? sseCustomerAlgorithm,
    String? sseCustomerKeyMd5,
    String? ssekmsKeyId,
    bool? bucketKeyEnabled,
    _i6.StorageClass? storageClass,
    _i7.RequestCharged? requestCharged,
    _i8.ReplicationStatus? replicationStatus,
    int? partsCount,
    _i9.ObjectLockMode? objectLockMode,
    DateTime? objectLockRetainUntilDate,
    _i10.ObjectLockLegalHoldStatus? objectLockLegalHoldStatus,
  }) {
    return _$HeadObjectOutput._(
      deleteMarker: deleteMarker,
      acceptRanges: acceptRanges,
      expiration: expiration,
      restore: restore,
      archiveStatus: archiveStatus,
      lastModified: lastModified,
      contentLength: contentLength,
      checksumCrc32: checksumCrc32,
      checksumCrc32C: checksumCrc32C,
      checksumSha1: checksumSha1,
      checksumSha256: checksumSha256,
      eTag: eTag,
      missingMeta: missingMeta,
      versionId: versionId,
      cacheControl: cacheControl,
      contentDisposition: contentDisposition,
      contentEncoding: contentEncoding,
      contentLanguage: contentLanguage,
      contentType: contentType,
      expires: expires,
      websiteRedirectLocation: websiteRedirectLocation,
      serverSideEncryption: serverSideEncryption,
      metadata: metadata == null ? null : _i11.BuiltMap(metadata),
      sseCustomerAlgorithm: sseCustomerAlgorithm,
      sseCustomerKeyMd5: sseCustomerKeyMd5,
      ssekmsKeyId: ssekmsKeyId,
      bucketKeyEnabled: bucketKeyEnabled,
      storageClass: storageClass,
      requestCharged: requestCharged,
      replicationStatus: replicationStatus,
      partsCount: partsCount,
      objectLockMode: objectLockMode,
      objectLockRetainUntilDate: objectLockRetainUntilDate,
      objectLockLegalHoldStatus: objectLockLegalHoldStatus,
    );
  }

  factory HeadObjectOutput.build(
      [void Function(HeadObjectOutputBuilder) updates]) = _$HeadObjectOutput;

  const HeadObjectOutput._();

  /// Constructs a [HeadObjectOutput] from a [payload] and [response].
  factory HeadObjectOutput.fromResponse(
    HeadObjectOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      HeadObjectOutput.build((b) {
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
        if (response.headers['x-amz-archive-status'] != null) {
          b.archiveStatus = _i3.ArchiveStatus.values
              .byValue(response.headers['x-amz-archive-status']!);
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
        if (response.headers['ETag'] != null) {
          b.eTag = response.headers['ETag']!;
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
          b.serverSideEncryption = _i5.ServerSideEncryption.values
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
          b.storageClass = _i6.StorageClass.values
              .byValue(response.headers['x-amz-storage-class']!);
        }
        if (response.headers['x-amz-request-charged'] != null) {
          b.requestCharged = _i7.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
        if (response.headers['x-amz-replication-status'] != null) {
          b.replicationStatus = _i8.ReplicationStatus.values
              .byValue(response.headers['x-amz-replication-status']!);
        }
        if (response.headers['x-amz-mp-parts-count'] != null) {
          b.partsCount = int.parse(response.headers['x-amz-mp-parts-count']!);
        }
        if (response.headers['x-amz-object-lock-mode'] != null) {
          b.objectLockMode = _i9.ObjectLockMode.values
              .byValue(response.headers['x-amz-object-lock-mode']!);
        }
        if (response.headers['x-amz-object-lock-retain-until-date'] != null) {
          b.objectLockRetainUntilDate = _i2.Timestamp.parse(
            response.headers['x-amz-object-lock-retain-until-date']!,
            format: _i2.TimestampFormat.dateTime,
          ).asDateTime;
        }
        if (response.headers['x-amz-object-lock-legal-hold'] != null) {
          b.objectLockLegalHoldStatus = _i10.ObjectLockLegalHoldStatus.values
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

  static const List<_i2.SmithySerializer<HeadObjectOutputPayload>> serializers =
      [HeadObjectOutputRestXmlSerializer()];

  /// Specifies whether the object retrieved was (true) or was not (false) a Delete Marker. If false, this response header does not appear in the response.
  bool? get deleteMarker;

  /// Indicates that a range of bytes was specified.
  String? get acceptRanges;

  /// If the object expiration is configured (see PUT Bucket lifecycle), the response includes this header. It includes the `expiry-date` and `rule-id` key-value pairs providing object expiration information. The value of the `rule-id` is URL-encoded.
  String? get expiration;

  /// If the object is an archived object (an object whose storage class is GLACIER), the response includes this header if either the archive restoration is in progress (see [RestoreObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html) or an archive copy is already restored.
  ///
  /// If an archive copy is already restored, the header value indicates when Amazon S3 is scheduled to delete the object copy. For example:
  ///
  /// `x-amz-restore: ongoing-request="false", expiry-date="Fri, 21 Dec 2012 00:00:00 GMT"`
  ///
  /// If the object restoration is in progress, the header returns the value `ongoing-request="true"`.
  ///
  /// For more information about archiving objects, see [Transitioning Objects: General Considerations](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html#lifecycle-transition-general-considerations).
  String? get restore;

  /// The archive state of the head object.
  _i3.ArchiveStatus? get archiveStatus;

  /// Creation date of the object.
  DateTime? get lastModified;

  /// Size of the body in bytes.
  _i4.Int64? get contentLength;

  /// The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumCrc32;

  /// The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumCrc32C;

  /// The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumSha1;

  /// The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumSha256;

  /// An entity tag (ETag) is an opaque identifier assigned by a web server to a specific version of a resource found at a URL.
  String? get eTag;

  /// This is set to the number of metadata entries not returned in `x-amz-meta` headers. This can happen if you create metadata using an API like SOAP that supports more flexible metadata than the REST API. For example, using SOAP, you can create metadata whose values are not legal HTTP headers.
  int? get missingMeta;

  /// Version of the object.
  String? get versionId;

  /// Specifies caching behavior along the request/reply chain.
  String? get cacheControl;

  /// Specifies presentational information for the object.
  String? get contentDisposition;

  /// Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
  String? get contentEncoding;

  /// The language the content is in.
  String? get contentLanguage;

  /// A standard MIME type describing the format of the object data.
  String? get contentType;

  /// The date and time at which the object is no longer cacheable.
  DateTime? get expires;

  /// If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
  String? get websiteRedirectLocation;

  /// The server-side encryption algorithm used when storing this object in Amazon S3 (for example, `AES256`, `aws:kms`, `aws:kms:dsse`).
  _i5.ServerSideEncryption? get serverSideEncryption;

  /// A map of metadata to store with the object in S3.
  _i11.BuiltMap<String, String>? get metadata;

  /// If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
  String? get sseCustomerAlgorithm;

  /// If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round-trip message integrity verification of the customer-provided encryption key.
  String? get sseCustomerKeyMd5;

  /// If present, specifies the ID of the Key Management Service (KMS) symmetric encryption customer managed key that was used for the object.
  String? get ssekmsKeyId;

  /// Indicates whether the object uses an S3 Bucket Key for server-side encryption with Key Management Service (KMS) keys (SSE-KMS).
  bool? get bucketKeyEnabled;

  /// Provides storage class information of the object. Amazon S3 returns this header for all objects except for S3 Standard storage class objects.
  ///
  /// For more information, see [Storage Classes](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html).
  _i6.StorageClass? get storageClass;

  /// If present, indicates that the requester was successfully charged for the request.
  _i7.RequestCharged? get requestCharged;

  /// Amazon S3 can return this header if your request involves a bucket that is either a source or a destination in a replication rule.
  ///
  /// In replication, you have a source bucket on which you configure replication and destination bucket or buckets where Amazon S3 stores object replicas. When you request an object (`GetObject`) or object metadata (`HeadObject`) from these buckets, Amazon S3 will return the `x-amz-replication-status` header in the response as follows:
  ///
  /// *   **If requesting an object from the source bucket**, Amazon S3 will return the `x-amz-replication-status` header if the object in your request is eligible for replication.
  ///
  ///     For example, suppose that in your replication configuration, you specify object prefix `TaxDocs` requesting Amazon S3 to replicate objects with key prefix `TaxDocs`. Any objects you upload with this key name prefix, for example `TaxDocs/document1.pdf`, are eligible for replication. For any object request with this key name prefix, Amazon S3 will return the `x-amz-replication-status` header with value PENDING, COMPLETED or FAILED indicating object replication status.
  ///
  /// *   **If requesting an object from a destination bucket**, Amazon S3 will return the `x-amz-replication-status` header with value REPLICA if the object in your request is a replica that Amazon S3 created and there is no replica modification replication in progress.
  ///
  /// *   **When replicating objects to multiple destination buckets**, the `x-amz-replication-status` header acts differently. The header of the source object will only return a value of COMPLETED when replication is successful to all destinations. The header will remain at value PENDING until replication has completed for all destinations. If one or more destinations fails replication the header will return FAILED.
  ///
  ///
  /// For more information, see [Replication](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html).
  _i8.ReplicationStatus? get replicationStatus;

  /// The count of parts this object has. This value is only returned if you specify `partNumber` in your request and the object was uploaded as a multipart upload.
  int? get partsCount;

  /// The Object Lock mode, if any, that's in effect for this object. This header is only returned if the requester has the `s3:GetObjectRetention` permission. For more information about S3 Object Lock, see [Object Lock](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).
  _i9.ObjectLockMode? get objectLockMode;

  /// The date and time when the Object Lock retention period expires. This header is only returned if the requester has the `s3:GetObjectRetention` permission.
  DateTime? get objectLockRetainUntilDate;

  /// Specifies whether a legal hold is in effect for this object. This header is only returned if the requester has the `s3:GetObjectLegalHold` permission. This header is not returned if the specified version of this object has never had a legal hold applied. For more information about S3 Object Lock, see [Object Lock](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).
  _i10.ObjectLockLegalHoldStatus? get objectLockLegalHoldStatus;
  @override
  HeadObjectOutputPayload getPayload() => HeadObjectOutputPayload();
  @override
  List<Object?> get props => [
        deleteMarker,
        acceptRanges,
        expiration,
        restore,
        archiveStatus,
        lastModified,
        contentLength,
        checksumCrc32,
        checksumCrc32C,
        checksumSha1,
        checksumSha256,
        eTag,
        missingMeta,
        versionId,
        cacheControl,
        contentDisposition,
        contentEncoding,
        contentLanguage,
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
        objectLockMode,
        objectLockRetainUntilDate,
        objectLockLegalHoldStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HeadObjectOutput')
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
        'archiveStatus',
        archiveStatus,
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
        'eTag',
        eTag,
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

@_i12.internal
abstract class HeadObjectOutputPayload
    with _i1.AWSEquatable<HeadObjectOutputPayload>
    implements
        Built<HeadObjectOutputPayload, HeadObjectOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory HeadObjectOutputPayload(
          [void Function(HeadObjectOutputPayloadBuilder) updates]) =
      _$HeadObjectOutputPayload;

  const HeadObjectOutputPayload._();

  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HeadObjectOutputPayload');
    return helper.toString();
  }
}

class HeadObjectOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<HeadObjectOutputPayload> {
  const HeadObjectOutputRestXmlSerializer() : super('HeadObjectOutput');

  @override
  Iterable<Type> get types => const [
        HeadObjectOutput,
        _$HeadObjectOutput,
        HeadObjectOutputPayload,
        _$HeadObjectOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  HeadObjectOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return HeadObjectOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    HeadObjectOutputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'HeadObjectOutput',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
