// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.upload_part_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i2;

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/checksum_algorithm.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_payer.dart';
import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'upload_part_request.g.dart';

abstract class UploadPartRequest
    with
        _i1.HttpInput<_i2.Stream<List<int>>>,
        _i3.AWSEquatable<UploadPartRequest>
    implements
        Built<UploadPartRequest, UploadPartRequestBuilder>,
        _i1.HasPayload<_i2.Stream<List<int>>> {
  factory UploadPartRequest({
    _i2.Stream<List<int>>? body,
    required String bucket,
    _i4.Int64? contentLength,
    String? contentMd5,
    ChecksumAlgorithm? checksumAlgorithm,
    String? checksumCrc32,
    String? checksumCrc32C,
    String? checksumSha1,
    String? checksumSha256,
    required String key,
    int? partNumber,
    required String uploadId,
    String? sseCustomerAlgorithm,
    String? sseCustomerKey,
    String? sseCustomerKeyMd5,
    RequestPayer? requestPayer,
    String? expectedBucketOwner,
  }) {
    body ??= const _i2.Stream.empty();
    return _$UploadPartRequest._(
      body: body,
      bucket: bucket,
      contentLength: contentLength,
      contentMd5: contentMd5,
      checksumAlgorithm: checksumAlgorithm,
      checksumCrc32: checksumCrc32,
      checksumCrc32C: checksumCrc32C,
      checksumSha1: checksumSha1,
      checksumSha256: checksumSha256,
      key: key,
      partNumber: partNumber,
      uploadId: uploadId,
      sseCustomerAlgorithm: sseCustomerAlgorithm,
      sseCustomerKey: sseCustomerKey,
      sseCustomerKeyMd5: sseCustomerKeyMd5,
      requestPayer: requestPayer,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory UploadPartRequest.build([
    void Function(UploadPartRequestBuilder) updates,
  ]) = _$UploadPartRequest;

  const UploadPartRequest._();

  factory UploadPartRequest.fromRequest(
    _i2.Stream<List<int>> payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) => UploadPartRequest.build((b) {
    b.body = payload;
    if (request.headers['Content-Length'] != null) {
      b.contentLength = _i4.Int64.parseInt(request.headers['Content-Length']!);
    }
    if (request.headers['Content-MD5'] != null) {
      b.contentMd5 = request.headers['Content-MD5']!;
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
    if (request.headers['x-amz-request-payer'] != null) {
      b.requestPayer = RequestPayer.values.byValue(
        request.headers['x-amz-request-payer']!,
      );
    }
    if (request.headers['x-amz-expected-bucket-owner'] != null) {
      b.expectedBucketOwner = request.headers['x-amz-expected-bucket-owner']!;
    }
    if (request.queryParameters['partNumber'] != null) {
      b.partNumber = int.parse(request.queryParameters['partNumber']!);
    }
    if (request.queryParameters['uploadId'] != null) {
      b.uploadId = request.queryParameters['uploadId']!;
    }
    if (labels['bucket'] != null) {
      b.bucket = labels['bucket']!;
    }
    if (labels['key'] != null) {
      b.key = labels['key']!;
    }
  });

  static const List<_i1.SmithySerializer<_i2.Stream<List<int>>>> serializers = [
    UploadPartRequestRestXmlSerializer(),
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UploadPartRequestBuilder b) {
    b.body = const _i2.Stream.empty();
  }

  /// Object data.
  _i2.Stream<List<int>> get body;

  /// The name of the bucket to which the multipart upload was initiated.
  ///
  /// **Directory buckets** \- When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format `_Bucket_name_.s3express-_az_id_._region_.amazonaws.com`. Path-style requests are not supported. Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format `_bucket\_base\_name_--_az-id_--x-s3` (for example, `_DOC-EXAMPLE-BUCKET_--_usw2-az2_--x-s3`). For information about bucket naming restrictions, see [Directory bucket naming rules](https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html) in the _Amazon S3 User Guide_.
  ///
  /// **Access points** \- When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// Access points and Object Lambda access points are not supported by directory buckets.
  ///
  /// **S3 on Outposts** \- When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [What is S3 on Outposts?](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// Size of the body in bytes. This parameter is useful when the size of the body cannot be determined automatically.
  _i4.Int64? get contentLength;

  /// The base64-encoded 128-bit MD5 digest of the part data. This parameter is auto-populated when using the command from the CLI. This parameter is required if object lock parameters are specified.
  ///
  /// This functionality is not supported for directory buckets.
  String? get contentMd5;

  /// Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any additional functionality if you don't use the SDK. When you send this header, there must be a corresponding `x-amz-checksum` or `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request with the HTTP status code `400 Bad Request`. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// If you provide an individual checksum, Amazon S3 ignores any provided `ChecksumAlgorithm` parameter.
  ///
  /// This checksum algorithm must be the same for all parts and it match the checksum value supplied in the `CreateMultipartUpload` request.
  ChecksumAlgorithm? get checksumAlgorithm;

  /// This header can be used as a data integrity check to verify that the data received is the same data that was originally sent. This header specifies the base64-encoded, 32-bit CRC32 checksum of the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get checksumCrc32;

  /// This header can be used as a data integrity check to verify that the data received is the same data that was originally sent. This header specifies the base64-encoded, 32-bit CRC32C checksum of the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get checksumCrc32C;

  /// This header can be used as a data integrity check to verify that the data received is the same data that was originally sent. This header specifies the base64-encoded, 160-bit SHA-1 digest of the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get checksumSha1;

  /// This header can be used as a data integrity check to verify that the data received is the same data that was originally sent. This header specifies the base64-encoded, 256-bit SHA-256 digest of the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get checksumSha256;

  /// Object key for which the multipart upload was initiated.
  String get key;

  /// Part number of part being uploaded. This is a positive integer between 1 and 10,000.
  int? get partNumber;

  /// Upload ID identifying the multipart upload whose part is being uploaded.
  String get uploadId;

  /// Specifies the algorithm to use when encrypting the object (for example, AES256).
  ///
  /// This functionality is not supported for directory buckets.
  String? get sseCustomerAlgorithm;

  /// Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the `x-amz-server-side-encryption-customer-algorithm header`. This must be the same encryption key specified in the initiate multipart upload request.
  ///
  /// This functionality is not supported for directory buckets.
  String? get sseCustomerKey;

  /// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  ///
  /// This functionality is not supported for directory buckets.
  String? get sseCustomerKeyMd5;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. If either the source or destination S3 bucket has Requester Pays enabled, the requester will pay for corresponding charges to copy the object. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  ///
  /// This functionality is not supported for directory buckets.
  RequestPayer? get requestPayer;

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
    body,
    bucket,
    contentLength,
    contentMd5,
    checksumAlgorithm,
    checksumCrc32,
    checksumCrc32C,
    checksumSha1,
    checksumSha256,
    key,
    partNumber,
    uploadId,
    sseCustomerAlgorithm,
    sseCustomerKey,
    sseCustomerKeyMd5,
    requestPayer,
    expectedBucketOwner,
  ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UploadPartRequest')
      ..add('body', body)
      ..add('bucket', bucket)
      ..add('contentLength', contentLength)
      ..add('contentMd5', contentMd5)
      ..add('checksumAlgorithm', checksumAlgorithm)
      ..add('checksumCrc32', checksumCrc32)
      ..add('checksumCrc32C', checksumCrc32C)
      ..add('checksumSha1', checksumSha1)
      ..add('checksumSha256', checksumSha256)
      ..add('key', key)
      ..add('partNumber', partNumber)
      ..add('uploadId', uploadId)
      ..add('sseCustomerAlgorithm', sseCustomerAlgorithm)
      ..add('sseCustomerKey', '***SENSITIVE***')
      ..add('sseCustomerKeyMd5', sseCustomerKeyMd5)
      ..add('requestPayer', requestPayer)
      ..add('expectedBucketOwner', expectedBucketOwner);
    return helper.toString();
  }
}

class UploadPartRequestRestXmlSerializer
    extends _i1.PrimitiveSmithySerializer<_i2.Stream<List<int>>> {
  const UploadPartRequestRestXmlSerializer() : super('UploadPartRequest');

  @override
  Iterable<Type> get types => const [UploadPartRequest, _$UploadPartRequest];

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
        'UploadPartRequest',
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
