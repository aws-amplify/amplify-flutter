// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.get_object_retention_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/request_payer.dart' as _i3;

part 'get_object_retention_request.g.dart';

abstract class GetObjectRetentionRequest
    with
        _i1.HttpInput<GetObjectRetentionRequestPayload>,
        _i2.AWSEquatable<GetObjectRetentionRequest>
    implements
        Built<GetObjectRetentionRequest, GetObjectRetentionRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetObjectRetentionRequestPayload> {
  factory GetObjectRetentionRequest({
    required String bucket,
    String? expectedBucketOwner,
    required String key,
    _i3.RequestPayer? requestPayer,
    String? versionId,
  }) {
    return _$GetObjectRetentionRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
      key: key,
      requestPayer: requestPayer,
      versionId: versionId,
    );
  }

  factory GetObjectRetentionRequest.build(
          [void Function(GetObjectRetentionRequestBuilder) updates]) =
      _$GetObjectRetentionRequest;

  const GetObjectRetentionRequest._();

  factory GetObjectRetentionRequest.fromRequest(
    GetObjectRetentionRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetObjectRetentionRequest.build((b) {
        if (request.headers['x-amz-request-payer'] != null) {
          b.requestPayer = _i3.RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
        }
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
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
    GetObjectRetentionRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectRetentionRequestBuilder b) {}

  /// The bucket name containing the object whose retention settings you want to retrieve.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// The key name for the object whose retention settings you want to retrieve.
  String get key;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  _i3.RequestPayer? get requestPayer;

  /// The version ID for the object whose retention settings you want to retrieve.
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
  GetObjectRetentionRequestPayload getPayload() =>
      GetObjectRetentionRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
        key,
        requestPayer,
        versionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectRetentionRequest');
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
      'requestPayer',
      requestPayer,
    );
    helper.add(
      'versionId',
      versionId,
    );
    return helper.toString();
  }
}

@_i4.internal
abstract class GetObjectRetentionRequestPayload
    with
        _i2.AWSEquatable<GetObjectRetentionRequestPayload>
    implements
        Built<GetObjectRetentionRequestPayload,
            GetObjectRetentionRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetObjectRetentionRequestPayload(
          [void Function(GetObjectRetentionRequestPayloadBuilder) updates]) =
      _$GetObjectRetentionRequestPayload;

  const GetObjectRetentionRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectRetentionRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetObjectRetentionRequestPayload');
    return helper.toString();
  }
}

class GetObjectRetentionRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<GetObjectRetentionRequestPayload> {
  const GetObjectRetentionRequestRestXmlSerializer()
      : super('GetObjectRetentionRequest');

  @override
  Iterable<Type> get types => const [
        GetObjectRetentionRequest,
        _$GetObjectRetentionRequest,
        GetObjectRetentionRequestPayload,
        _$GetObjectRetentionRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetObjectRetentionRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetObjectRetentionRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetObjectRetentionRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
