// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.delete_object_tagging_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_object_tagging_request.g.dart';

abstract class DeleteObjectTaggingRequest
    with
        _i1.HttpInput<DeleteObjectTaggingRequestPayload>,
        _i2.AWSEquatable<DeleteObjectTaggingRequest>
    implements
        Built<DeleteObjectTaggingRequest, DeleteObjectTaggingRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteObjectTaggingRequestPayload> {
  factory DeleteObjectTaggingRequest({
    required String bucket,
    required String key,
    String? versionId,
    String? expectedBucketOwner,
  }) {
    return _$DeleteObjectTaggingRequest._(
      bucket: bucket,
      key: key,
      versionId: versionId,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory DeleteObjectTaggingRequest.build(
          [void Function(DeleteObjectTaggingRequestBuilder) updates]) =
      _$DeleteObjectTaggingRequest;

  const DeleteObjectTaggingRequest._();

  factory DeleteObjectTaggingRequest.fromRequest(
    DeleteObjectTaggingRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteObjectTaggingRequest.build((b) {
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

  static const List<_i1.SmithySerializer<DeleteObjectTaggingRequestPayload>>
      serializers = [DeleteObjectTaggingRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteObjectTaggingRequestBuilder b) {}

  /// The bucket name containing the objects from which to remove the tags.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [What is S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// The key that identifies the object in the bucket from which to remove all tags.
  String get key;

  /// The versionId of the object that the tag-set will be removed from.
  String? get versionId;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;
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
  DeleteObjectTaggingRequestPayload getPayload() =>
      DeleteObjectTaggingRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        key,
        versionId,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteObjectTaggingRequest')
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
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteObjectTaggingRequestPayload
    with
        _i2.AWSEquatable<DeleteObjectTaggingRequestPayload>
    implements
        Built<DeleteObjectTaggingRequestPayload,
            DeleteObjectTaggingRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteObjectTaggingRequestPayload(
          [void Function(DeleteObjectTaggingRequestPayloadBuilder) updates]) =
      _$DeleteObjectTaggingRequestPayload;

  const DeleteObjectTaggingRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteObjectTaggingRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteObjectTaggingRequestPayload');
    return helper.toString();
  }
}

class DeleteObjectTaggingRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<DeleteObjectTaggingRequestPayload> {
  const DeleteObjectTaggingRequestRestXmlSerializer()
      : super('DeleteObjectTaggingRequest');

  @override
  Iterable<Type> get types => const [
        DeleteObjectTaggingRequest,
        _$DeleteObjectTaggingRequest,
        DeleteObjectTaggingRequestPayload,
        _$DeleteObjectTaggingRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  DeleteObjectTaggingRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteObjectTaggingRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteObjectTaggingRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteObjectTaggingRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
