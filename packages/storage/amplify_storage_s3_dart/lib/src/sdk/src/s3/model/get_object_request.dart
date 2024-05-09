// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.get_object_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/checksum_mode.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_payer.dart';
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_object_request.g.dart';

abstract class GetObjectRequest
    with
        _i1.HttpInput<GetObjectRequestPayload>,
        _i2.AWSEquatable<GetObjectRequest>
    implements
        Built<GetObjectRequest, GetObjectRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetObjectRequestPayload> {
  factory GetObjectRequest({
    required String bucket,
    String? ifMatch,
    DateTime? ifModifiedSince,
    String? ifNoneMatch,
    DateTime? ifUnmodifiedSince,
    required String key,
    String? range,
    String? responseCacheControl,
    String? responseContentDisposition,
    String? responseContentEncoding,
    String? responseContentLanguage,
    String? responseContentType,
    DateTime? responseExpires,
    String? versionId,
    String? sseCustomerAlgorithm,
    String? sseCustomerKey,
    String? sseCustomerKeyMd5,
    RequestPayer? requestPayer,
    int? partNumber,
    String? expectedBucketOwner,
    ChecksumMode? checksumMode,
  }) {
    return _$GetObjectRequest._(
      bucket: bucket,
      ifMatch: ifMatch,
      ifModifiedSince: ifModifiedSince,
      ifNoneMatch: ifNoneMatch,
      ifUnmodifiedSince: ifUnmodifiedSince,
      key: key,
      range: range,
      responseCacheControl: responseCacheControl,
      responseContentDisposition: responseContentDisposition,
      responseContentEncoding: responseContentEncoding,
      responseContentLanguage: responseContentLanguage,
      responseContentType: responseContentType,
      responseExpires: responseExpires,
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

  factory GetObjectRequest.build(
      [void Function(GetObjectRequestBuilder) updates]) = _$GetObjectRequest;

  const GetObjectRequest._();

  factory GetObjectRequest.fromRequest(
    GetObjectRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetObjectRequest.build((b) {
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
          b.requestPayer = RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
        }
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (request.headers['x-amz-checksum-mode'] != null) {
          b.checksumMode = ChecksumMode.values
              .byValue(request.headers['x-amz-checksum-mode']!);
        }
        if (request.queryParameters['response-cache-control'] != null) {
          b.responseCacheControl =
              request.queryParameters['response-cache-control']!;
        }
        if (request.queryParameters['response-content-disposition'] != null) {
          b.responseContentDisposition =
              request.queryParameters['response-content-disposition']!;
        }
        if (request.queryParameters['response-content-encoding'] != null) {
          b.responseContentEncoding =
              request.queryParameters['response-content-encoding']!;
        }
        if (request.queryParameters['response-content-language'] != null) {
          b.responseContentLanguage =
              request.queryParameters['response-content-language']!;
        }
        if (request.queryParameters['response-content-type'] != null) {
          b.responseContentType =
              request.queryParameters['response-content-type']!;
        }
        if (request.queryParameters['response-expires'] != null) {
          b.responseExpires = _i1.Timestamp.parse(
            request.queryParameters['response-expires']!,
            format: _i1.TimestampFormat.httpDate,
          ).asDateTime;
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

  static const List<_i1.SmithySerializer<GetObjectRequestPayload>> serializers =
      [GetObjectRequestRestXmlSerializer()];

  /// The bucket name containing the object.
  ///
  /// **Directory buckets** \- When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format `_Bucket_name_.s3express-_az_id_._region_.amazonaws.com`. Path-style requests are not supported. Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format `_bucket\_base\_name_--_az-id_--x-s3` (for example, `_DOC-EXAMPLE-BUCKET_--_usw2-az2_--x-s3`). For information about bucket naming restrictions, see [Directory bucket naming rules](https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html) in the _Amazon S3 User Guide_.
  ///
  /// **Access points** \- When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// **Object Lambda access points** \- When you use this action with an Object Lambda access point, you must direct requests to the Object Lambda access point hostname. The Object Lambda access point hostname takes the form _AccessPointName_-_AccountId_.s3-object-lambda._Region_.amazonaws.com.
  ///
  /// Access points and Object Lambda access points are not supported by directory buckets.
  ///
  /// **S3 on Outposts** \- When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [What is S3 on Outposts?](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// Return the object only if its entity tag (ETag) is the same as the one specified in this header; otherwise, return a `412 Precondition Failed` error.
  ///
  /// If both of the `If-Match` and `If-Unmodified-Since` headers are present in the request as follows: `If-Match` condition evaluates to `true`, and; `If-Unmodified-Since` condition evaluates to `false`; then, S3 returns `200 OK` and the data requested.
  ///
  /// For more information about conditional requests, see [RFC 7232](https://tools.ietf.org/html/rfc7232).
  String? get ifMatch;

  /// Return the object only if it has been modified since the specified time; otherwise, return a `304 Not Modified` error.
  ///
  /// If both of the `If-None-Match` and `If-Modified-Since` headers are present in the request as follows: `If-None-Match` condition evaluates to `false`, and; `If-Modified-Since` condition evaluates to `true`; then, S3 returns `304 Not Modified` status code.
  ///
  /// For more information about conditional requests, see [RFC 7232](https://tools.ietf.org/html/rfc7232).
  DateTime? get ifModifiedSince;

  /// Return the object only if its entity tag (ETag) is different from the one specified in this header; otherwise, return a `304 Not Modified` error.
  ///
  /// If both of the `If-None-Match` and `If-Modified-Since` headers are present in the request as follows: `If-None-Match` condition evaluates to `false`, and; `If-Modified-Since` condition evaluates to `true`; then, S3 returns `304 Not Modified` HTTP status code.
  ///
  /// For more information about conditional requests, see [RFC 7232](https://tools.ietf.org/html/rfc7232).
  String? get ifNoneMatch;

  /// Return the object only if it has not been modified since the specified time; otherwise, return a `412 Precondition Failed` error.
  ///
  /// If both of the `If-Match` and `If-Unmodified-Since` headers are present in the request as follows: `If-Match` condition evaluates to `true`, and; `If-Unmodified-Since` condition evaluates to `false`; then, S3 returns `200 OK` and the data requested.
  ///
  /// For more information about conditional requests, see [RFC 7232](https://tools.ietf.org/html/rfc7232).
  DateTime? get ifUnmodifiedSince;

  /// Key of the object to get.
  String get key;

  /// Downloads the specified byte range of an object. For more information about the HTTP Range header, see [https://www.rfc-editor.org/rfc/rfc9110.html#name-range](https://www.rfc-editor.org/rfc/rfc9110.html#name-range).
  ///
  /// Amazon S3 doesn't support retrieving multiple ranges of data per `GET` request.
  String? get range;

  /// Sets the `Cache-Control` header of the response.
  String? get responseCacheControl;

  /// Sets the `Content-Disposition` header of the response.
  String? get responseContentDisposition;

  /// Sets the `Content-Encoding` header of the response.
  String? get responseContentEncoding;

  /// Sets the `Content-Language` header of the response.
  String? get responseContentLanguage;

  /// Sets the `Content-Type` header of the response.
  String? get responseContentType;

  /// Sets the `Expires` header of the response.
  DateTime? get responseExpires;

  /// Version ID used to reference a specific version of the object.
  ///
  /// By default, the `GetObject` operation returns the current version of an object. To return a different version, use the `versionId` subresource.
  ///
  /// *   If you include a `versionId` in your request header, you must have the `s3:GetObjectVersion` permission to access a specific version of an object. The `s3:GetObject` permission is not required in this scenario.
  ///
  /// *   If you request the current version of an object without a specific `versionId` in the request header, only the `s3:GetObject` permission is required. The `s3:GetObjectVersion` permission is not required in this scenario.
  ///
  /// *   **Directory buckets** \- S3 Versioning isn't enabled and supported for directory buckets. For this API operation, only the `null` value of the version ID is supported by directory buckets. You can only specify `null` to the `versionId` query parameter in the request.
  ///
  ///
  /// For more information about versioning, see [PutBucketVersioning](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketVersioning.html).
  String? get versionId;

  /// Specifies the algorithm to use when decrypting the object (for example, `AES256`).
  ///
  /// If you encrypt an object by using server-side encryption with customer-provided encryption keys (SSE-C) when you store the object in Amazon S3, then when you GET the object, you must use the following headers:
  ///
  /// *   `x-amz-server-side-encryption-customer-algorithm`
  ///
  /// *   `x-amz-server-side-encryption-customer-key`
  ///
  /// *   `x-amz-server-side-encryption-customer-key-MD5`
  ///
  ///
  /// For more information about SSE-C, see [Server-Side Encryption (Using Customer-Provided Encryption Keys)](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html) in the _Amazon S3 User Guide_.
  ///
  /// This functionality is not supported for directory buckets.
  String? get sseCustomerAlgorithm;

  /// Specifies the customer-provided encryption key that you originally provided for Amazon S3 to encrypt the data before storing it. This value is used to decrypt the object when recovering it and must match the one used when storing the data. The key must be appropriate for use with the algorithm specified in the `x-amz-server-side-encryption-customer-algorithm` header.
  ///
  /// If you encrypt an object by using server-side encryption with customer-provided encryption keys (SSE-C) when you store the object in Amazon S3, then when you GET the object, you must use the following headers:
  ///
  /// *   `x-amz-server-side-encryption-customer-algorithm`
  ///
  /// *   `x-amz-server-side-encryption-customer-key`
  ///
  /// *   `x-amz-server-side-encryption-customer-key-MD5`
  ///
  ///
  /// For more information about SSE-C, see [Server-Side Encryption (Using Customer-Provided Encryption Keys)](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html) in the _Amazon S3 User Guide_.
  ///
  /// This functionality is not supported for directory buckets.
  String? get sseCustomerKey;

  /// Specifies the 128-bit MD5 digest of the customer-provided encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  ///
  /// If you encrypt an object by using server-side encryption with customer-provided encryption keys (SSE-C) when you store the object in Amazon S3, then when you GET the object, you must use the following headers:
  ///
  /// *   `x-amz-server-side-encryption-customer-algorithm`
  ///
  /// *   `x-amz-server-side-encryption-customer-key`
  ///
  /// *   `x-amz-server-side-encryption-customer-key-MD5`
  ///
  ///
  /// For more information about SSE-C, see [Server-Side Encryption (Using Customer-Provided Encryption Keys)](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html) in the _Amazon S3 User Guide_.
  ///
  /// This functionality is not supported for directory buckets.
  String? get sseCustomerKeyMd5;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. If either the source or destination S3 bucket has Requester Pays enabled, the requester will pay for corresponding charges to copy the object. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  ///
  /// This functionality is not supported for directory buckets.
  RequestPayer? get requestPayer;

  /// Part number of the object being read. This is a positive integer between 1 and 10,000. Effectively performs a 'ranged' GET request for the part specified. Useful for downloading just a part of an object.
  int? get partNumber;

  /// The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// To retrieve the checksum, this mode must be enabled.
  ChecksumMode? get checksumMode;
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
  GetObjectRequestPayload getPayload() => GetObjectRequestPayload();

  @override
  List<Object?> get props => [
        bucket,
        ifMatch,
        ifModifiedSince,
        ifNoneMatch,
        ifUnmodifiedSince,
        key,
        range,
        responseCacheControl,
        responseContentDisposition,
        responseContentEncoding,
        responseContentLanguage,
        responseContentType,
        responseExpires,
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
    final helper = newBuiltValueToStringHelper('GetObjectRequest')
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
        'responseCacheControl',
        responseCacheControl,
      )
      ..add(
        'responseContentDisposition',
        responseContentDisposition,
      )
      ..add(
        'responseContentEncoding',
        responseContentEncoding,
      )
      ..add(
        'responseContentLanguage',
        responseContentLanguage,
      )
      ..add(
        'responseContentType',
        responseContentType,
      )
      ..add(
        'responseExpires',
        responseExpires,
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

@_i3.internal
abstract class GetObjectRequestPayload
    with _i2.AWSEquatable<GetObjectRequestPayload>
    implements
        Built<GetObjectRequestPayload, GetObjectRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetObjectRequestPayload(
          [void Function(GetObjectRequestPayloadBuilder) updates]) =
      _$GetObjectRequestPayload;

  const GetObjectRequestPayload._();

  @override
  List<Object?> get props => [];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectRequestPayload');
    return helper.toString();
  }
}

class GetObjectRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<GetObjectRequestPayload> {
  const GetObjectRequestRestXmlSerializer() : super('GetObjectRequest');

  @override
  Iterable<Type> get types => const [
        GetObjectRequest,
        _$GetObjectRequest,
        GetObjectRequestPayload,
        _$GetObjectRequestPayload,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  GetObjectRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetObjectRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetObjectRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetObjectRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
