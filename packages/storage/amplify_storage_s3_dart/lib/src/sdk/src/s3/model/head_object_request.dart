// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_storage_s3_dart.s3.model.head_object_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/checksum_mode.dart'
    as _i4;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_payer.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;

part 'head_object_request.g.dart';

abstract class HeadObjectRequest
    with
        _i1.HttpInput<HeadObjectRequestPayload>,
        _i2.AWSEquatable<HeadObjectRequest>
    implements
        Built<HeadObjectRequest, HeadObjectRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<HeadObjectRequestPayload> {
  factory HeadObjectRequest({
    required String bucket,
    String? ifMatch,
    DateTime? ifModifiedSince,
    String? ifNoneMatch,
    DateTime? ifUnmodifiedSince,
    required String key,
    String? range,
    String? versionId,
    String? sseCustomerAlgorithm,
    String? sseCustomerKey,
    String? sseCustomerKeyMd5,
    _i3.RequestPayer? requestPayer,
    int? partNumber,
    String? expectedBucketOwner,
    _i4.ChecksumMode? checksumMode,
  }) {
    return _$HeadObjectRequest._(
      bucket: bucket,
      ifMatch: ifMatch,
      ifModifiedSince: ifModifiedSince,
      ifNoneMatch: ifNoneMatch,
      ifUnmodifiedSince: ifUnmodifiedSince,
      key: key,
      range: range,
      versionId: versionId,
      sseCustomerAlgorithm: sseCustomerAlgorithm,
      sseCustomerKey: sseCustomerKey,
      sseCustomerKeyMd5: sseCustomerKeyMd5,
      requestPayer: requestPayer,
      partNumber: partNumber,
      expectedBucketOwner: expectedBucketOwner,
      checksumMode: checksumMode,
    );
  }

  factory HeadObjectRequest.build(
      [void Function(HeadObjectRequestBuilder) updates]) = _$HeadObjectRequest;

  const HeadObjectRequest._();

  factory HeadObjectRequest.fromRequest(
    HeadObjectRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      HeadObjectRequest.build((b) {
        if (request.headers['If-Match'] != null) {
          b.ifMatch = request.headers['If-Match']!;
        }
        if (request.headers['If-Modified-Since'] != null) {
          b.ifModifiedSince = _i1.Timestamp.parse(
            request.headers['If-Modified-Since']!,
            format: _i1.TimestampFormat.httpDate,
          ).asDateTime;
        }
        if (request.headers['If-None-Match'] != null) {
          b.ifNoneMatch = request.headers['If-None-Match']!;
        }
        if (request.headers['If-Unmodified-Since'] != null) {
          b.ifUnmodifiedSince = _i1.Timestamp.parse(
            request.headers['If-Unmodified-Since']!,
            format: _i1.TimestampFormat.httpDate,
          ).asDateTime;
        }
        if (request.headers['Range'] != null) {
          b.range = request.headers['Range']!;
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
        if (request.headers['x-amz-request-payer'] != null) {
          b.requestPayer = _i3.RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
        }
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (request.headers['x-amz-checksum-mode'] != null) {
          b.checksumMode = _i4.ChecksumMode.values
              .byValue(request.headers['x-amz-checksum-mode']!);
        }
        if (request.queryParameters['versionId'] != null) {
          b.versionId = request.queryParameters['versionId']!;
        }
        if (request.queryParameters['partNumber'] != null) {
          b.partNumber = int.parse(request.queryParameters['partNumber']!);
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
        if (labels['key'] != null) {
          b.key = labels['key']!;
        }
      });

  static const List<_i1.SmithySerializer<HeadObjectRequestPayload>>
      serializers = [HeadObjectRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HeadObjectRequestBuilder b) {}

  /// The name of the bucket containing the object.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [What is S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// Return the object only if its entity tag (ETag) is the same as the one specified; otherwise, return a 412 (precondition failed) error.
  String? get ifMatch;

  /// Return the object only if it has been modified since the specified time; otherwise, return a 304 (not modified) error.
  DateTime? get ifModifiedSince;

  /// Return the object only if its entity tag (ETag) is different from the one specified; otherwise, return a 304 (not modified) error.
  String? get ifNoneMatch;

  /// Return the object only if it has not been modified since the specified time; otherwise, return a 412 (precondition failed) error.
  DateTime? get ifUnmodifiedSince;

  /// The object key.
  String get key;

  /// HeadObject returns only the metadata for an object. If the Range is satisfiable, only the `ContentLength` is affected in the response. If the Range is not satisfiable, S3 returns a `416 - Requested Range Not Satisfiable` error.
  String? get range;

  /// VersionId used to reference a specific version of the object.
  String? get versionId;

  /// Specifies the algorithm to use to when encrypting the object (for example, AES256).
  String? get sseCustomerAlgorithm;

  /// Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the `x-amz-server-side-encryption-customer-algorithm` header.
  String? get sseCustomerKey;

  /// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  String? get sseCustomerKeyMd5;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  _i3.RequestPayer? get requestPayer;

  /// Part number of the object being read. This is a positive integer between 1 and 10,000. Effectively performs a 'ranged' HEAD request for the part specified. Useful querying about the size of the part and the number of parts in this object.
  int? get partNumber;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// To retrieve the checksum, this parameter must be enabled.
  ///
  /// In addition, if you enable `ChecksumMode` and the object is encrypted with Amazon Web Services Key Management Service (Amazon Web Services KMS), you must have permission to use the `kms:Decrypt` action for the request to succeed.
  _i4.ChecksumMode? get checksumMode;
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
  HeadObjectRequestPayload getPayload() => HeadObjectRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        ifMatch,
        ifModifiedSince,
        ifNoneMatch,
        ifUnmodifiedSince,
        key,
        range,
        versionId,
        sseCustomerAlgorithm,
        sseCustomerKey,
        sseCustomerKeyMd5,
        requestPayer,
        partNumber,
        expectedBucketOwner,
        checksumMode,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HeadObjectRequest')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'ifMatch',
        ifMatch,
      )
      ..add(
        'ifModifiedSince',
        ifModifiedSince,
      )
      ..add(
        'ifNoneMatch',
        ifNoneMatch,
      )
      ..add(
        'ifUnmodifiedSince',
        ifUnmodifiedSince,
      )
      ..add(
        'key',
        key,
      )
      ..add(
        'range',
        range,
      )
      ..add(
        'versionId',
        versionId,
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
        'requestPayer',
        requestPayer,
      )
      ..add(
        'partNumber',
        partNumber,
      )
      ..add(
        'expectedBucketOwner',
        expectedBucketOwner,
      )
      ..add(
        'checksumMode',
        checksumMode,
      );
    return helper.toString();
  }
}

@_i5.internal
abstract class HeadObjectRequestPayload
    with _i2.AWSEquatable<HeadObjectRequestPayload>
    implements
        Built<HeadObjectRequestPayload, HeadObjectRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory HeadObjectRequestPayload(
          [void Function(HeadObjectRequestPayloadBuilder) updates]) =
      _$HeadObjectRequestPayload;

  const HeadObjectRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HeadObjectRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HeadObjectRequestPayload');
    return helper.toString();
  }
}

class HeadObjectRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<HeadObjectRequestPayload> {
  const HeadObjectRequestRestXmlSerializer() : super('HeadObjectRequest');

  @override
  Iterable<Type> get types => const [
        HeadObjectRequest,
        _$HeadObjectRequest,
        HeadObjectRequestPayload,
        _$HeadObjectRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  HeadObjectRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return HeadObjectRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    HeadObjectRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'HeadObjectRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
