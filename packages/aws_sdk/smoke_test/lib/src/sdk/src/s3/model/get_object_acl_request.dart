// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.get_object_acl_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/request_payer.dart' as _i3;

part 'get_object_acl_request.g.dart';

abstract class GetObjectAclRequest
    with
        _i1.HttpInput<GetObjectAclRequestPayload>,
        _i2.AWSEquatable<GetObjectAclRequest>
    implements
        Built<GetObjectAclRequest, GetObjectAclRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetObjectAclRequestPayload> {
  factory GetObjectAclRequest({
    required String bucket,
    String? expectedBucketOwner,
    required String key,
    _i3.RequestPayer? requestPayer,
    String? versionId,
  }) {
    return _$GetObjectAclRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
      key: key,
      requestPayer: requestPayer,
      versionId: versionId,
    );
  }

  factory GetObjectAclRequest.build(
          [void Function(GetObjectAclRequestBuilder) updates]) =
      _$GetObjectAclRequest;

  const GetObjectAclRequest._();

  factory GetObjectAclRequest.fromRequest(
    GetObjectAclRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetObjectAclRequest.build((b) {
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
    GetObjectAclRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectAclRequestBuilder b) {}

  /// The bucket name that contains the object for which to get the ACL information.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// The key of the object for which to get the ACL information.
  String get key;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  _i3.RequestPayer? get requestPayer;

  /// VersionId used to reference a specific version of the object.
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
  GetObjectAclRequestPayload getPayload() => GetObjectAclRequestPayload();
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
    final helper = newBuiltValueToStringHelper('GetObjectAclRequest');
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
abstract class GetObjectAclRequestPayload
    with _i2.AWSEquatable<GetObjectAclRequestPayload>
    implements
        Built<GetObjectAclRequestPayload, GetObjectAclRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetObjectAclRequestPayload(
          [void Function(GetObjectAclRequestPayloadBuilder) updates]) =
      _$GetObjectAclRequestPayload;

  const GetObjectAclRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectAclRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectAclRequestPayload');
    return helper.toString();
  }
}

class GetObjectAclRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<GetObjectAclRequestPayload> {
  const GetObjectAclRequestRestXmlSerializer() : super('GetObjectAclRequest');

  @override
  Iterable<Type> get types => const [
        GetObjectAclRequest,
        _$GetObjectAclRequest,
        GetObjectAclRequestPayload,
        _$GetObjectAclRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetObjectAclRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetObjectAclRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetObjectAclRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
