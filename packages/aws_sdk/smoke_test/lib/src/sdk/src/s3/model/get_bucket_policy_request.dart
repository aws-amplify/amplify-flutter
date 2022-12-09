// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.get_bucket_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_bucket_policy_request.g.dart';

abstract class GetBucketPolicyRequest
    with
        _i1.HttpInput<GetBucketPolicyRequestPayload>,
        _i2.AWSEquatable<GetBucketPolicyRequest>
    implements
        Built<GetBucketPolicyRequest, GetBucketPolicyRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetBucketPolicyRequestPayload> {
  factory GetBucketPolicyRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$GetBucketPolicyRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory GetBucketPolicyRequest.build(
          [void Function(GetBucketPolicyRequestBuilder) updates]) =
      _$GetBucketPolicyRequest;

  const GetBucketPolicyRequest._();

  factory GetBucketPolicyRequest.fromRequest(
    GetBucketPolicyRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetBucketPolicyRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetBucketPolicyRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketPolicyRequestBuilder b) {}

  /// The bucket name for which to get the bucket policy.
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
  GetBucketPolicyRequestPayload getPayload() => GetBucketPolicyRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketPolicyRequest');
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
abstract class GetBucketPolicyRequestPayload
    with
        _i2.AWSEquatable<GetBucketPolicyRequestPayload>
    implements
        Built<GetBucketPolicyRequestPayload,
            GetBucketPolicyRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetBucketPolicyRequestPayload(
          [void Function(GetBucketPolicyRequestPayloadBuilder) updates]) =
      _$GetBucketPolicyRequestPayload;

  const GetBucketPolicyRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketPolicyRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketPolicyRequestPayload');
    return helper.toString();
  }
}

class GetBucketPolicyRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<GetBucketPolicyRequestPayload> {
  const GetBucketPolicyRequestRestXmlSerializer()
      : super('GetBucketPolicyRequest');

  @override
  Iterable<Type> get types => const [
        GetBucketPolicyRequest,
        _$GetBucketPolicyRequest,
        GetBucketPolicyRequestPayload,
        _$GetBucketPolicyRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketPolicyRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetBucketPolicyRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetBucketPolicyRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
