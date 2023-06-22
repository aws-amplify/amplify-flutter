// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.get_object_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i3;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i11;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_legal_hold_status.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_mode.dart' as _i9;
import 'package:smoke_test/src/sdk/src/s3/model/replication_status.dart' as _i8;
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/storage_class.dart' as _i6;

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
    int? tagCount,
    _i9.ObjectLockMode? objectLockMode,
    DateTime? objectLockRetainUntilDate,
    _i10.ObjectLockLegalHoldStatus? objectLockLegalHoldStatus,
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
      metadata: metadata == null ? null : _i11.BuiltMap(metadata),
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
    _i3.Stream<List<int>>? payload,
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
        if (response.headers['x-amz-tagging-count'] != null) {
          b.tagCount = int.parse(response.headers['x-amz-tagging-count']!);
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

  static const List<_i2.SmithySerializer<_i3.Stream<List<int>>?>> serializers =
      [GetObjectOutputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectOutputBuilder b) {
    b.body = const _i3.Stream.empty();
  }

  /// Object data.
  _i3.Stream<List<int>>? get body;

  /// Specifies whether the object retrieved was (true) or was not (false) a Delete Marker. If false, this response header does not appear in the response.
  bool? get deleteMarker;

  /// Indicates that a range of bytes was specified.
  String? get acceptRanges;

  /// If the object expiration is configured (see PUT Bucket lifecycle), the response includes this header. It includes the `expiry-date` and `rule-id` key-value pairs providing object expiration information. The value of the `rule-id` is URL-encoded.
  String? get expiration;

  /// Provides information about object restoration action and expiration time of the restored object copy.
  String? get restore;

  /// Creation date of the object.
  DateTime? get lastModified;

  /// Size of the body in bytes.
  _i4.Int64? get contentLength;

  /// An entity tag (ETag) is an opaque identifier assigned by a web server to a specific version of a resource found at a URL.
  String? get eTag;

  /// The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumCrc32;

  /// The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumCrc32C;

  /// The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumSha1;

  /// The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumSha256;

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

  /// The portion of the object returned in the response.
  String? get contentRange;

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
  _i6.StorageClass? get storageClass;

  /// If present, indicates that the requester was successfully charged for the request.
  _i7.RequestCharged? get requestCharged;

  /// Amazon S3 can return this if your request involves a bucket that is either a source or destination in a replication rule.
  _i8.ReplicationStatus? get replicationStatus;

  /// The count of parts this object has. This value is only returned if you specify `partNumber` in your request and the object was uploaded as a multipart upload.
  int? get partsCount;

  /// The number of tags, if any, on the object.
  int? get tagCount;

  /// The Object Lock mode currently in place for this object.
  _i9.ObjectLockMode? get objectLockMode;

  /// The date and time when this object's Object Lock will expire.
  DateTime? get objectLockRetainUntilDate;

  /// Indicates whether this object has an active legal hold. This field is only returned if you have permission to view an object's legal hold status.
  _i10.ObjectLockLegalHoldStatus? get objectLockLegalHoldStatus;
  @override
  _i3.Stream<List<int>>? getPayload() => body;
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
