// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.write_get_object_response_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i2;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i11;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_legal_hold_status.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_mode.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/replication_status.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart' as _i8;
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/s3/model/storage_class.dart' as _i10;

part 'write_get_object_response_request.g.dart';

abstract class WriteGetObjectResponseRequest
    with
        _i1.HttpInput<_i2.Stream<List<int>>>,
        _i3.AWSEquatable<WriteGetObjectResponseRequest>
    implements
        Built<WriteGetObjectResponseRequest,
            WriteGetObjectResponseRequestBuilder>,
        _i1.HasPayload<_i2.Stream<List<int>>> {
  factory WriteGetObjectResponseRequest({
    String? acceptRanges,
    _i2.Stream<List<int>>? body,
    bool? bucketKeyEnabled,
    String? cacheControl,
    String? checksumCrc32,
    String? checksumCrc32C,
    String? checksumSha1,
    String? checksumSha256,
    String? contentDisposition,
    String? contentEncoding,
    String? contentLanguage,
    _i4.Int64? contentLength,
    String? contentRange,
    String? contentType,
    bool? deleteMarker,
    String? eTag,
    String? errorCode,
    String? errorMessage,
    String? expiration,
    DateTime? expires,
    DateTime? lastModified,
    Map<String, String>? metadata,
    int? missingMeta,
    _i5.ObjectLockLegalHoldStatus? objectLockLegalHoldStatus,
    _i6.ObjectLockMode? objectLockMode,
    DateTime? objectLockRetainUntilDate,
    int? partsCount,
    _i7.ReplicationStatus? replicationStatus,
    _i8.RequestCharged? requestCharged,
    required String requestRoute,
    required String requestToken,
    String? restore,
    _i9.ServerSideEncryption? serverSideEncryption,
    String? sseCustomerAlgorithm,
    String? sseCustomerKeyMd5,
    String? ssekmsKeyId,
    int? statusCode,
    _i10.StorageClass? storageClass,
    int? tagCount,
    String? versionId,
  }) {
    return _$WriteGetObjectResponseRequest._(
      acceptRanges: acceptRanges,
      body: body,
      bucketKeyEnabled: bucketKeyEnabled,
      cacheControl: cacheControl,
      checksumCrc32: checksumCrc32,
      checksumCrc32C: checksumCrc32C,
      checksumSha1: checksumSha1,
      checksumSha256: checksumSha256,
      contentDisposition: contentDisposition,
      contentEncoding: contentEncoding,
      contentLanguage: contentLanguage,
      contentLength: contentLength,
      contentRange: contentRange,
      contentType: contentType,
      deleteMarker: deleteMarker,
      eTag: eTag,
      errorCode: errorCode,
      errorMessage: errorMessage,
      expiration: expiration,
      expires: expires,
      lastModified: lastModified,
      metadata: metadata == null ? null : _i11.BuiltMap(metadata),
      missingMeta: missingMeta,
      objectLockLegalHoldStatus: objectLockLegalHoldStatus,
      objectLockMode: objectLockMode,
      objectLockRetainUntilDate: objectLockRetainUntilDate,
      partsCount: partsCount,
      replicationStatus: replicationStatus,
      requestCharged: requestCharged,
      requestRoute: requestRoute,
      requestToken: requestToken,
      restore: restore,
      serverSideEncryption: serverSideEncryption,
      sseCustomerAlgorithm: sseCustomerAlgorithm,
      sseCustomerKeyMd5: sseCustomerKeyMd5,
      ssekmsKeyId: ssekmsKeyId,
      statusCode: statusCode,
      storageClass: storageClass,
      tagCount: tagCount,
      versionId: versionId,
    );
  }

  factory WriteGetObjectResponseRequest.build(
          [void Function(WriteGetObjectResponseRequestBuilder) updates]) =
      _$WriteGetObjectResponseRequest;

  const WriteGetObjectResponseRequest._();

  factory WriteGetObjectResponseRequest.fromRequest(
    _i2.Stream<List<int>>? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      WriteGetObjectResponseRequest.build((b) {
        b.body = payload;
        if (request.headers['x-amz-request-route'] != null) {
          b.requestRoute = request.headers['x-amz-request-route']!;
        }
        if (request.headers['x-amz-request-token'] != null) {
          b.requestToken = request.headers['x-amz-request-token']!;
        }
        if (request.headers['x-amz-fwd-status'] != null) {
          b.statusCode = int.parse(request.headers['x-amz-fwd-status']!);
        }
        if (request.headers['x-amz-fwd-error-code'] != null) {
          b.errorCode = request.headers['x-amz-fwd-error-code']!;
        }
        if (request.headers['x-amz-fwd-error-message'] != null) {
          b.errorMessage = request.headers['x-amz-fwd-error-message']!;
        }
        if (request.headers['x-amz-fwd-header-accept-ranges'] != null) {
          b.acceptRanges = request.headers['x-amz-fwd-header-accept-ranges']!;
        }
        if (request.headers['x-amz-fwd-header-Cache-Control'] != null) {
          b.cacheControl = request.headers['x-amz-fwd-header-Cache-Control']!;
        }
        if (request.headers['x-amz-fwd-header-Content-Disposition'] != null) {
          b.contentDisposition =
              request.headers['x-amz-fwd-header-Content-Disposition']!;
        }
        if (request.headers['x-amz-fwd-header-Content-Encoding'] != null) {
          b.contentEncoding =
              request.headers['x-amz-fwd-header-Content-Encoding']!;
        }
        if (request.headers['x-amz-fwd-header-Content-Language'] != null) {
          b.contentLanguage =
              request.headers['x-amz-fwd-header-Content-Language']!;
        }
        if (request.headers['Content-Length'] != null) {
          b.contentLength =
              _i4.Int64.parseInt(request.headers['Content-Length']!);
        }
        if (request.headers['x-amz-fwd-header-Content-Range'] != null) {
          b.contentRange = request.headers['x-amz-fwd-header-Content-Range']!;
        }
        if (request.headers['x-amz-fwd-header-Content-Type'] != null) {
          b.contentType = request.headers['x-amz-fwd-header-Content-Type']!;
        }
        if (request.headers['x-amz-fwd-header-x-amz-checksum-crc32'] != null) {
          b.checksumCrc32 =
              request.headers['x-amz-fwd-header-x-amz-checksum-crc32']!;
        }
        if (request.headers['x-amz-fwd-header-x-amz-checksum-crc32c'] != null) {
          b.checksumCrc32C =
              request.headers['x-amz-fwd-header-x-amz-checksum-crc32c']!;
        }
        if (request.headers['x-amz-fwd-header-x-amz-checksum-sha1'] != null) {
          b.checksumSha1 =
              request.headers['x-amz-fwd-header-x-amz-checksum-sha1']!;
        }
        if (request.headers['x-amz-fwd-header-x-amz-checksum-sha256'] != null) {
          b.checksumSha256 =
              request.headers['x-amz-fwd-header-x-amz-checksum-sha256']!;
        }
        if (request.headers['x-amz-fwd-header-x-amz-delete-marker'] != null) {
          b.deleteMarker =
              request.headers['x-amz-fwd-header-x-amz-delete-marker']! ==
                  'true';
        }
        if (request.headers['x-amz-fwd-header-ETag'] != null) {
          b.eTag = request.headers['x-amz-fwd-header-ETag']!;
        }
        if (request.headers['x-amz-fwd-header-Expires'] != null) {
          b.expires = _i1.Timestamp.parse(
            request.headers['x-amz-fwd-header-Expires']!,
            format: _i1.TimestampFormat.httpDate,
          ).asDateTime;
        }
        if (request.headers['x-amz-fwd-header-x-amz-expiration'] != null) {
          b.expiration = request.headers['x-amz-fwd-header-x-amz-expiration']!;
        }
        if (request.headers['x-amz-fwd-header-Last-Modified'] != null) {
          b.lastModified = _i1.Timestamp.parse(
            request.headers['x-amz-fwd-header-Last-Modified']!,
            format: _i1.TimestampFormat.httpDate,
          ).asDateTime;
        }
        if (request.headers['x-amz-fwd-header-x-amz-missing-meta'] != null) {
          b.missingMeta = int.parse(
              request.headers['x-amz-fwd-header-x-amz-missing-meta']!);
        }
        if (request.headers['x-amz-fwd-header-x-amz-object-lock-mode'] !=
            null) {
          b.objectLockMode = _i6.ObjectLockMode.values.byValue(
              request.headers['x-amz-fwd-header-x-amz-object-lock-mode']!);
        }
        if (request.headers['x-amz-fwd-header-x-amz-object-lock-legal-hold'] !=
            null) {
          b.objectLockLegalHoldStatus = _i5.ObjectLockLegalHoldStatus.values
              .byValue(request
                  .headers['x-amz-fwd-header-x-amz-object-lock-legal-hold']!);
        }
        if (request.headers[
                'x-amz-fwd-header-x-amz-object-lock-retain-until-date'] !=
            null) {
          b.objectLockRetainUntilDate = _i1.Timestamp.parse(
            request.headers[
                'x-amz-fwd-header-x-amz-object-lock-retain-until-date']!,
            format: _i1.TimestampFormat.dateTime,
          ).asDateTime;
        }
        if (request.headers['x-amz-fwd-header-x-amz-mp-parts-count'] != null) {
          b.partsCount = int.parse(
              request.headers['x-amz-fwd-header-x-amz-mp-parts-count']!);
        }
        if (request.headers['x-amz-fwd-header-x-amz-replication-status'] !=
            null) {
          b.replicationStatus = _i7.ReplicationStatus.values.byValue(
              request.headers['x-amz-fwd-header-x-amz-replication-status']!);
        }
        if (request.headers['x-amz-fwd-header-x-amz-request-charged'] != null) {
          b.requestCharged = _i8.RequestCharged.values.byValue(
              request.headers['x-amz-fwd-header-x-amz-request-charged']!);
        }
        if (request.headers['x-amz-fwd-header-x-amz-restore'] != null) {
          b.restore = request.headers['x-amz-fwd-header-x-amz-restore']!;
        }
        if (request.headers['x-amz-fwd-header-x-amz-server-side-encryption'] !=
            null) {
          b.serverSideEncryption = _i9.ServerSideEncryption.values.byValue(
              request
                  .headers['x-amz-fwd-header-x-amz-server-side-encryption']!);
        }
        if (request.headers[
                'x-amz-fwd-header-x-amz-server-side-encryption-customer-algorithm'] !=
            null) {
          b.sseCustomerAlgorithm = request.headers[
              'x-amz-fwd-header-x-amz-server-side-encryption-customer-algorithm']!;
        }
        if (request.headers[
                'x-amz-fwd-header-x-amz-server-side-encryption-aws-kms-key-id'] !=
            null) {
          b.ssekmsKeyId = request.headers[
              'x-amz-fwd-header-x-amz-server-side-encryption-aws-kms-key-id']!;
        }
        if (request.headers[
                'x-amz-fwd-header-x-amz-server-side-encryption-customer-key-MD5'] !=
            null) {
          b.sseCustomerKeyMd5 = request.headers[
              'x-amz-fwd-header-x-amz-server-side-encryption-customer-key-MD5']!;
        }
        if (request.headers['x-amz-fwd-header-x-amz-storage-class'] != null) {
          b.storageClass = _i10.StorageClass.values.byValue(
              request.headers['x-amz-fwd-header-x-amz-storage-class']!);
        }
        if (request.headers['x-amz-fwd-header-x-amz-tagging-count'] != null) {
          b.tagCount = int.parse(
              request.headers['x-amz-fwd-header-x-amz-tagging-count']!);
        }
        if (request.headers['x-amz-fwd-header-x-amz-version-id'] != null) {
          b.versionId = request.headers['x-amz-fwd-header-x-amz-version-id']!;
        }
        if (request.headers[
                'x-amz-fwd-header-x-amz-server-side-encryption-bucket-key-enabled'] !=
            null) {
          b.bucketKeyEnabled = request.headers[
                  'x-amz-fwd-header-x-amz-server-side-encryption-bucket-key-enabled']! ==
              'true';
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
      });

  static const List<_i1.SmithySerializer> serializers = [
    WriteGetObjectResponseRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(WriteGetObjectResponseRequestBuilder b) {}

  /// Indicates that a range of bytes was specified.
  String? get acceptRanges;

  /// The object data.
  _i2.Stream<List<int>>? get body;

  /// Indicates whether the object stored in Amazon S3 uses an S3 bucket key for server-side encryption with Amazon Web Services KMS (SSE-KMS).
  bool? get bucketKeyEnabled;

  /// Specifies caching behavior along the request/reply chain.
  String? get cacheControl;

  /// This header can be used as a data integrity check to verify that the data received is the same data that was originally sent. This specifies the base64-encoded, 32-bit CRC32 checksum of the object returned by the Object Lambda function. This may not match the checksum for the object stored in Amazon S3. Amazon S3 will perform validation of the checksum values only when the original `GetObject` request required checksum validation. For more information about checksums, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// Only one checksum header can be specified at a time. If you supply multiple checksum headers, this request will fail.
  String? get checksumCrc32;

  /// This header can be used as a data integrity check to verify that the data received is the same data that was originally sent. This specifies the base64-encoded, 32-bit CRC32C checksum of the object returned by the Object Lambda function. This may not match the checksum for the object stored in Amazon S3. Amazon S3 will perform validation of the checksum values only when the original `GetObject` request required checksum validation. For more information about checksums, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// Only one checksum header can be specified at a time. If you supply multiple checksum headers, this request will fail.
  String? get checksumCrc32C;

  /// This header can be used as a data integrity check to verify that the data received is the same data that was originally sent. This specifies the base64-encoded, 160-bit SHA-1 digest of the object returned by the Object Lambda function. This may not match the checksum for the object stored in Amazon S3. Amazon S3 will perform validation of the checksum values only when the original `GetObject` request required checksum validation. For more information about checksums, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// Only one checksum header can be specified at a time. If you supply multiple checksum headers, this request will fail.
  String? get checksumSha1;

  /// This header can be used as a data integrity check to verify that the data received is the same data that was originally sent. This specifies the base64-encoded, 256-bit SHA-256 digest of the object returned by the Object Lambda function. This may not match the checksum for the object stored in Amazon S3. Amazon S3 will perform validation of the checksum values only when the original `GetObject` request required checksum validation. For more information about checksums, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// Only one checksum header can be specified at a time. If you supply multiple checksum headers, this request will fail.
  String? get checksumSha256;

  /// Specifies presentational information for the object.
  String? get contentDisposition;

  /// Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
  String? get contentEncoding;

  /// The language the content is in.
  String? get contentLanguage;

  /// The size of the content body in bytes.
  _i4.Int64? get contentLength;

  /// The portion of the object returned in the response.
  String? get contentRange;

  /// A standard MIME type describing the format of the object data.
  String? get contentType;

  /// Specifies whether an object stored in Amazon S3 is (`true`) or is not (`false`) a delete marker.
  bool? get deleteMarker;

  /// An opaque identifier assigned by a web server to a specific version of a resource found at a URL.
  String? get eTag;

  /// A string that uniquely identifies an error condition. Returned in the ``tag of the error XML response for a corresponding `GetObject` call. Cannot be used with a successful `StatusCode` header or when the transformed object is provided in the body. All error codes from S3 are sentence-cased. The regular expression (regex) value is `"^\[A-Z\]\[a-zA-Z\]+$"`.``
  String? get errorCode;

  /// Contains a generic description of the error condition. Returned in the tag of the error XML response for a corresponding `GetObject` call. Cannot be used with a successful `StatusCode` header or when the transformed object is provided in body.
  String? get errorMessage;

  /// If the object expiration is configured (see PUT Bucket lifecycle), the response includes this header. It includes the `expiry-date` and `rule-id` key-value pairs that provide the object expiration information. The value of the `rule-id` is URL-encoded.
  String? get expiration;

  /// The date and time at which the object is no longer cacheable.
  DateTime? get expires;

  /// The date and time that the object was last modified.
  DateTime? get lastModified;

  /// A map of metadata to store with the object in S3.
  _i11.BuiltMap<String, String>? get metadata;

  /// Set to the number of metadata entries not returned in `x-amz-meta` headers. This can happen if you create metadata using an API like SOAP that supports more flexible metadata than the REST API. For example, using SOAP, you can create metadata whose values are not legal HTTP headers.
  int? get missingMeta;

  /// Indicates whether an object stored in Amazon S3 has an active legal hold.
  _i5.ObjectLockLegalHoldStatus? get objectLockLegalHoldStatus;

  /// Indicates whether an object stored in Amazon S3 has Object Lock enabled. For more information about S3 Object Lock, see [Object Lock](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html).
  _i6.ObjectLockMode? get objectLockMode;

  /// The date and time when Object Lock is configured to expire.
  DateTime? get objectLockRetainUntilDate;

  /// The count of parts this object has.
  int? get partsCount;

  /// Indicates if request involves bucket that is either a source or destination in a Replication rule. For more information about S3 Replication, see [Replication](https://docs.aws.amazon.com/AmazonS3/latest/userguide/replication.html).
  _i7.ReplicationStatus? get replicationStatus;

  /// If present, indicates that the requester was successfully charged for the request.
  _i8.RequestCharged? get requestCharged;

  /// Route prefix to the HTTP URL generated.
  String get requestRoute;

  /// A single use encrypted token that maps `WriteGetObjectResponse` to the end user `GetObject` request.
  String get requestToken;

  /// Provides information about object restoration operation and expiration time of the restored object copy.
  String? get restore;

  /// The server-side encryption algorithm used when storing requested object in Amazon S3 (for example, AES256, aws:kms).
  _i9.ServerSideEncryption? get serverSideEncryption;

  /// Encryption algorithm used if server-side encryption with a customer-provided encryption key was specified for object stored in Amazon S3.
  String? get sseCustomerAlgorithm;

  /// 128-bit MD5 digest of customer-provided encryption key used in Amazon S3 to encrypt data stored in S3. For more information, see [Protecting data using server-side encryption with customer-provided encryption keys (SSE-C)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html).
  String? get sseCustomerKeyMd5;

  /// If present, specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric customer managed key that was used for stored in Amazon S3 object.
  String? get ssekmsKeyId;

  /// The integer status code for an HTTP response of a corresponding `GetObject` request.
  ///
  /// **Status Codes**
  ///
  /// *   `200 - OK`
  ///
  /// *   `206 - Partial Content`
  ///
  /// *   `304 - Not Modified`
  ///
  /// *   `400 - Bad Request`
  ///
  /// *   `401 - Unauthorized`
  ///
  /// *   `403 - Forbidden`
  ///
  /// *   `404 - Not Found`
  ///
  /// *   `405 - Method Not Allowed`
  ///
  /// *   `409 - Conflict`
  ///
  /// *   `411 - Length Required`
  ///
  /// *   `412 - Precondition Failed`
  ///
  /// *   `416 - Range Not Satisfiable`
  ///
  /// *   `500 - Internal Server Error`
  ///
  /// *   `503 - Service Unavailable`
  int? get statusCode;

  /// Provides storage class information of the object. Amazon S3 returns this header for all objects except for S3 Standard storage class objects.
  ///
  /// For more information, see [Storage Classes](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html).
  _i10.StorageClass? get storageClass;

  /// The number of tags, if any, on the object.
  int? get tagCount;

  /// An ID used to reference a specific version of the object.
  String? get versionId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'RequestRoute':
        return requestRoute;
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
        acceptRanges,
        body,
        bucketKeyEnabled,
        cacheControl,
        checksumCrc32,
        checksumCrc32C,
        checksumSha1,
        checksumSha256,
        contentDisposition,
        contentEncoding,
        contentLanguage,
        contentLength,
        contentRange,
        contentType,
        deleteMarker,
        eTag,
        errorCode,
        errorMessage,
        expiration,
        expires,
        lastModified,
        metadata,
        missingMeta,
        objectLockLegalHoldStatus,
        objectLockMode,
        objectLockRetainUntilDate,
        partsCount,
        replicationStatus,
        requestCharged,
        requestRoute,
        requestToken,
        restore,
        serverSideEncryption,
        sseCustomerAlgorithm,
        sseCustomerKeyMd5,
        ssekmsKeyId,
        statusCode,
        storageClass,
        tagCount,
        versionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('WriteGetObjectResponseRequest');
    helper.add(
      'acceptRanges',
      acceptRanges,
    );
    helper.add(
      'body',
      body,
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
      'contentRange',
      contentRange,
    );
    helper.add(
      'contentType',
      contentType,
    );
    helper.add(
      'deleteMarker',
      deleteMarker,
    );
    helper.add(
      'eTag',
      eTag,
    );
    helper.add(
      'errorCode',
      errorCode,
    );
    helper.add(
      'errorMessage',
      errorMessage,
    );
    helper.add(
      'expiration',
      expiration,
    );
    helper.add(
      'expires',
      expires,
    );
    helper.add(
      'lastModified',
      lastModified,
    );
    helper.add(
      'metadata',
      metadata,
    );
    helper.add(
      'missingMeta',
      missingMeta,
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
      'partsCount',
      partsCount,
    );
    helper.add(
      'replicationStatus',
      replicationStatus,
    );
    helper.add(
      'requestCharged',
      requestCharged,
    );
    helper.add(
      'requestRoute',
      requestRoute,
    );
    helper.add(
      'requestToken',
      requestToken,
    );
    helper.add(
      'restore',
      restore,
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
      'sseCustomerKeyMd5',
      sseCustomerKeyMd5,
    );
    helper.add(
      'ssekmsKeyId',
      '***SENSITIVE***',
    );
    helper.add(
      'statusCode',
      statusCode,
    );
    helper.add(
      'storageClass',
      storageClass,
    );
    helper.add(
      'tagCount',
      tagCount,
    );
    helper.add(
      'versionId',
      versionId,
    );
    return helper.toString();
  }
}

class WriteGetObjectResponseRequestRestXmlSerializer
    extends _i1.PrimitiveSmithySerializer<_i2.Stream<List<int>>> {
  const WriteGetObjectResponseRequestRestXmlSerializer()
      : super('WriteGetObjectResponseRequest');

  @override
  Iterable<Type> get types => const [
        WriteGetObjectResponseRequest,
        _$WriteGetObjectResponseRequest,
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
    final payload = object is WriteGetObjectResponseRequest
        ? object.getPayload()
        : (object as _i2.Stream<List<int>>?);
    final result = <Object?>[
      const _i1.XmlElementName(
        'WriteGetObjectResponseRequest',
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
