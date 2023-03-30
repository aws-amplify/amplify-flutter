// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.head_bucket_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'head_bucket_request.g.dart';

abstract class HeadBucketRequest
    with
        _i1.HttpInput<HeadBucketRequestPayload>,
        _i2.AWSEquatable<HeadBucketRequest>
    implements
        Built<HeadBucketRequest, HeadBucketRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<HeadBucketRequestPayload> {
  factory HeadBucketRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$HeadBucketRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory HeadBucketRequest.build(
      [void Function(HeadBucketRequestBuilder) updates]) = _$HeadBucketRequest;

  const HeadBucketRequest._();

  factory HeadBucketRequest.fromRequest(
    HeadBucketRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      HeadBucketRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    HeadBucketRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HeadBucketRequestBuilder b) {}

  /// The bucket name.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When using this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'Bucket':
        return bucket;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  HeadBucketRequestPayload getPayload() => HeadBucketRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HeadBucketRequest');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'expectedBucketOwner',
      expectedBucketOwner,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class HeadBucketRequestPayload
    with _i2.AWSEquatable<HeadBucketRequestPayload>
    implements
        Built<HeadBucketRequestPayload, HeadBucketRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory HeadBucketRequestPayload(
          [void Function(HeadBucketRequestPayloadBuilder) updates]) =
      _$HeadBucketRequestPayload;

  const HeadBucketRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HeadBucketRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HeadBucketRequestPayload');
    return helper.toString();
  }
}

class HeadBucketRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<HeadBucketRequestPayload> {
  const HeadBucketRequestRestXmlSerializer() : super('HeadBucketRequest');

  @override
  Iterable<Type> get types => const [
        HeadBucketRequest,
        _$HeadBucketRequest,
        HeadBucketRequestPayload,
        _$HeadBucketRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  HeadBucketRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return HeadBucketRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'HeadBucketRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
