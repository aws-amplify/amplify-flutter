// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.get_object_attributes_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i6;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/object_attributes.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/request_payer.dart' as _i4;

part 'get_object_attributes_request.g.dart';

abstract class GetObjectAttributesRequest
    with
        _i1.HttpInput<GetObjectAttributesRequestPayload>,
        _i2.AWSEquatable<GetObjectAttributesRequest>
    implements
        Built<GetObjectAttributesRequest, GetObjectAttributesRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetObjectAttributesRequestPayload> {
  factory GetObjectAttributesRequest({
    required String bucket,
    String? expectedBucketOwner,
    required String key,
    int? maxParts,
    required List<_i3.ObjectAttributes> objectAttributes,
    String? partNumberMarker,
    _i4.RequestPayer? requestPayer,
    String? sseCustomerAlgorithm,
    String? sseCustomerKey,
    String? sseCustomerKeyMd5,
    String? versionId,
  }) {
    return _$GetObjectAttributesRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
      key: key,
      maxParts: maxParts,
      objectAttributes: _i5.BuiltList(objectAttributes),
      partNumberMarker: partNumberMarker,
      requestPayer: requestPayer,
      sseCustomerAlgorithm: sseCustomerAlgorithm,
      sseCustomerKey: sseCustomerKey,
      sseCustomerKeyMd5: sseCustomerKeyMd5,
      versionId: versionId,
    );
  }

  factory GetObjectAttributesRequest.build(
          [void Function(GetObjectAttributesRequestBuilder) updates]) =
      _$GetObjectAttributesRequest;

  const GetObjectAttributesRequest._();

  factory GetObjectAttributesRequest.fromRequest(
    GetObjectAttributesRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetObjectAttributesRequest.build((b) {
        if (request.headers['x-amz-max-parts'] != null) {
          b.maxParts = int.parse(request.headers['x-amz-max-parts']!);
        }
        if (request.headers['x-amz-part-number-marker'] != null) {
          b.partNumberMarker = request.headers['x-amz-part-number-marker']!;
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
          b.requestPayer = _i4.RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
        }
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (request.headers['x-amz-object-attributes'] != null) {
          b.objectAttributes.addAll(_i1
              .parseHeader(request.headers['x-amz-object-attributes']!)
              .map((el) => _i3.ObjectAttributes.values.byValue(el.trim())));
        }
        if (request.queryParameters['versionId'] != null) {
          b.versionId = request.queryParameters['versionId']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
        if (labels['key'] != null) {
          b.key = labels['key']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetObjectAttributesRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectAttributesRequestBuilder b) {}

  /// The name of the bucket that contains the object.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When using this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// The object key.
  String get key;

  /// Sets the maximum number of parts to return.
  int? get maxParts;

  /// An XML header that specifies the fields at the root level that you want returned in the response. Fields that you do not specify are not returned.
  _i5.BuiltList<_i3.ObjectAttributes> get objectAttributes;

  /// Specifies the part after which listing should begin. Only parts with higher part numbers will be listed.
  String? get partNumberMarker;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  _i4.RequestPayer? get requestPayer;

  /// Specifies the algorithm to use when encrypting the object (for example, AES256).
  String? get sseCustomerAlgorithm;

  /// Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the `x-amz-server-side-encryption-customer-algorithm` header.
  String? get sseCustomerKey;

  /// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  String? get sseCustomerKeyMd5;

  /// The version ID used to reference a specific version of the object.
  String? get versionId;
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
  GetObjectAttributesRequestPayload getPayload() =>
      GetObjectAttributesRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
        key,
        maxParts,
        objectAttributes,
        partNumberMarker,
        requestPayer,
        sseCustomerAlgorithm,
        sseCustomerKey,
        sseCustomerKeyMd5,
        versionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectAttributesRequest');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'expectedBucketOwner',
      expectedBucketOwner,
    );
    helper.add(
      'key',
      key,
    );
    helper.add(
      'maxParts',
      maxParts,
    );
    helper.add(
      'objectAttributes',
      objectAttributes,
    );
    helper.add(
      'partNumberMarker',
      partNumberMarker,
    );
    helper.add(
      'requestPayer',
      requestPayer,
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
      'versionId',
      versionId,
    );
    return helper.toString();
  }
}

@_i6.internal
abstract class GetObjectAttributesRequestPayload
    with
        _i2.AWSEquatable<GetObjectAttributesRequestPayload>
    implements
        Built<GetObjectAttributesRequestPayload,
            GetObjectAttributesRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetObjectAttributesRequestPayload(
          [void Function(GetObjectAttributesRequestPayloadBuilder) updates]) =
      _$GetObjectAttributesRequestPayload;

  const GetObjectAttributesRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectAttributesRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetObjectAttributesRequestPayload');
    return helper.toString();
  }
}

class GetObjectAttributesRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<GetObjectAttributesRequestPayload> {
  const GetObjectAttributesRequestRestXmlSerializer()
      : super('GetObjectAttributesRequest');

  @override
  Iterable<Type> get types => const [
        GetObjectAttributesRequest,
        _$GetObjectAttributesRequest,
        GetObjectAttributesRequestPayload,
        _$GetObjectAttributesRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetObjectAttributesRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetObjectAttributesRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetObjectAttributesRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
