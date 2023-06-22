// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_storage_s3_dart.s3.model.list_parts_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_payer.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'list_parts_request.g.dart';

abstract class ListPartsRequest
    with
        _i1.HttpInput<ListPartsRequestPayload>,
        _i2.AWSEquatable<ListPartsRequest>
    implements
        Built<ListPartsRequest, ListPartsRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<ListPartsRequestPayload> {
  factory ListPartsRequest({
    required String bucket,
    required String key,
    int? maxParts,
    String? partNumberMarker,
    required String uploadId,
    _i3.RequestPayer? requestPayer,
    String? expectedBucketOwner,
    String? sseCustomerAlgorithm,
    String? sseCustomerKey,
    String? sseCustomerKeyMd5,
  }) {
    return _$ListPartsRequest._(
      bucket: bucket,
      key: key,
      maxParts: maxParts,
      partNumberMarker: partNumberMarker,
      uploadId: uploadId,
      requestPayer: requestPayer,
      expectedBucketOwner: expectedBucketOwner,
      sseCustomerAlgorithm: sseCustomerAlgorithm,
      sseCustomerKey: sseCustomerKey,
      sseCustomerKeyMd5: sseCustomerKeyMd5,
    );
  }

  factory ListPartsRequest.build(
      [void Function(ListPartsRequestBuilder) updates]) = _$ListPartsRequest;

  const ListPartsRequest._();

  factory ListPartsRequest.fromRequest(
    ListPartsRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      ListPartsRequest.build((b) {
        if (request.headers['x-amz-request-payer'] != null) {
          b.requestPayer = _i3.RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
        }
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
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
        if (request.queryParameters['max-parts'] != null) {
          b.maxParts = int.parse(request.queryParameters['max-parts']!);
        }
        if (request.queryParameters['part-number-marker'] != null) {
          b.partNumberMarker = request.queryParameters['part-number-marker']!;
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

  static const List<_i1.SmithySerializer<ListPartsRequestPayload>> serializers =
      [ListPartsRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListPartsRequestBuilder b) {}

  /// The name of the bucket to which the parts are being uploaded.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [What is S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// Object key for which the multipart upload was initiated.
  String get key;

  /// Sets the maximum number of parts to return.
  int? get maxParts;

  /// Specifies the part after which listing should begin. Only parts with higher part numbers will be listed.
  String? get partNumberMarker;

  /// Upload ID identifying the multipart upload whose parts are being listed.
  String get uploadId;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  _i3.RequestPayer? get requestPayer;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// The server-side encryption (SSE) algorithm used to encrypt the object. This parameter is needed only when the object was created using a checksum algorithm. For more information, see [Protecting data using SSE-C keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html) in the _Amazon S3 User Guide_.
  String? get sseCustomerAlgorithm;

  /// The server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum algorithm. For more information, see [Protecting data using SSE-C keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html) in the _Amazon S3 User Guide_.
  String? get sseCustomerKey;

  /// The MD5 server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum algorithm. For more information, see [Protecting data using SSE-C keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html) in the _Amazon S3 User Guide_.
  String? get sseCustomerKeyMd5;
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
  ListPartsRequestPayload getPayload() => ListPartsRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        key,
        maxParts,
        partNumberMarker,
        uploadId,
        requestPayer,
        expectedBucketOwner,
        sseCustomerAlgorithm,
        sseCustomerKey,
        sseCustomerKeyMd5,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListPartsRequest')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'key',
        key,
      )
      ..add(
        'maxParts',
        maxParts,
      )
      ..add(
        'partNumberMarker',
        partNumberMarker,
      )
      ..add(
        'uploadId',
        uploadId,
      )
      ..add(
        'requestPayer',
        requestPayer,
      )
      ..add(
        'expectedBucketOwner',
        expectedBucketOwner,
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
      );
    return helper.toString();
  }
}

@_i4.internal
abstract class ListPartsRequestPayload
    with _i2.AWSEquatable<ListPartsRequestPayload>
    implements
        Built<ListPartsRequestPayload, ListPartsRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory ListPartsRequestPayload(
          [void Function(ListPartsRequestPayloadBuilder) updates]) =
      _$ListPartsRequestPayload;

  const ListPartsRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListPartsRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListPartsRequestPayload');
    return helper.toString();
  }
}

class ListPartsRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<ListPartsRequestPayload> {
  const ListPartsRequestRestXmlSerializer() : super('ListPartsRequest');

  @override
  Iterable<Type> get types => const [
        ListPartsRequest,
        _$ListPartsRequest,
        ListPartsRequestPayload,
        _$ListPartsRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ListPartsRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ListPartsRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListPartsRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ListPartsRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
