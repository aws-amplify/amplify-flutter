// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.get_object_tagging_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/request_payer.dart' as _i3;

part 'get_object_tagging_request.g.dart';

abstract class GetObjectTaggingRequest
    with
        _i1.HttpInput<GetObjectTaggingRequestPayload>,
        _i2.AWSEquatable<GetObjectTaggingRequest>
    implements
        Built<GetObjectTaggingRequest, GetObjectTaggingRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetObjectTaggingRequestPayload> {
  factory GetObjectTaggingRequest({
    required String bucket,
    required String key,
    String? versionId,
    String? expectedBucketOwner,
    _i3.RequestPayer? requestPayer,
  }) {
    return _$GetObjectTaggingRequest._(
      bucket: bucket,
      key: key,
      versionId: versionId,
      expectedBucketOwner: expectedBucketOwner,
      requestPayer: requestPayer,
    );
  }

  factory GetObjectTaggingRequest.build(
          [void Function(GetObjectTaggingRequestBuilder) updates]) =
      _$GetObjectTaggingRequest;

  const GetObjectTaggingRequest._();

  factory GetObjectTaggingRequest.fromRequest(
    GetObjectTaggingRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetObjectTaggingRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (request.headers['x-amz-request-payer'] != null) {
          b.requestPayer = _i3.RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
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

  static const List<_i1.SmithySerializer<GetObjectTaggingRequestPayload>>
      serializers = [GetObjectTaggingRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectTaggingRequestBuilder b) {}

  /// The bucket name containing the object for which to get the tagging information.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [What is S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// Object key for which to get the tagging information.
  String get key;

  /// The versionId of the object for which to get the tagging information.
  String? get versionId;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  _i3.RequestPayer? get requestPayer;
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
  GetObjectTaggingRequestPayload getPayload() =>
      GetObjectTaggingRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        key,
        versionId,
        expectedBucketOwner,
        requestPayer,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectTaggingRequest')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'key',
        key,
      )
      ..add(
        'versionId',
        versionId,
      )
      ..add(
        'expectedBucketOwner',
        expectedBucketOwner,
      )
      ..add(
        'requestPayer',
        requestPayer,
      );
    return helper.toString();
  }
}

@_i4.internal
abstract class GetObjectTaggingRequestPayload
    with
        _i2.AWSEquatable<GetObjectTaggingRequestPayload>
    implements
        Built<GetObjectTaggingRequestPayload,
            GetObjectTaggingRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetObjectTaggingRequestPayload(
          [void Function(GetObjectTaggingRequestPayloadBuilder) updates]) =
      _$GetObjectTaggingRequestPayload;

  const GetObjectTaggingRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectTaggingRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetObjectTaggingRequestPayload');
    return helper.toString();
  }
}

class GetObjectTaggingRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<GetObjectTaggingRequestPayload> {
  const GetObjectTaggingRequestRestXmlSerializer()
      : super('GetObjectTaggingRequest');

  @override
  Iterable<Type> get types => const [
        GetObjectTaggingRequest,
        _$GetObjectTaggingRequest,
        GetObjectTaggingRequestPayload,
        _$GetObjectTaggingRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetObjectTaggingRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetObjectTaggingRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetObjectTaggingRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetObjectTaggingRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
