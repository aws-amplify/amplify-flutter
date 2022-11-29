// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.delete_bucket_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_bucket_policy_request.g.dart';

abstract class DeleteBucketPolicyRequest
    with
        _i1.HttpInput<DeleteBucketPolicyRequestPayload>,
        _i2.AWSEquatable<DeleteBucketPolicyRequest>
    implements
        Built<DeleteBucketPolicyRequest, DeleteBucketPolicyRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteBucketPolicyRequestPayload> {
  factory DeleteBucketPolicyRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$DeleteBucketPolicyRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory DeleteBucketPolicyRequest.build(
          [void Function(DeleteBucketPolicyRequestBuilder) updates]) =
      _$DeleteBucketPolicyRequest;

  const DeleteBucketPolicyRequest._();

  factory DeleteBucketPolicyRequest.fromRequest(
    DeleteBucketPolicyRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteBucketPolicyRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    DeleteBucketPolicyRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketPolicyRequestBuilder b) {}

  /// The bucket name.
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
  DeleteBucketPolicyRequestPayload getPayload() =>
      DeleteBucketPolicyRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteBucketPolicyRequest');
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
abstract class DeleteBucketPolicyRequestPayload
    with
        _i2.AWSEquatable<DeleteBucketPolicyRequestPayload>
    implements
        Built<DeleteBucketPolicyRequestPayload,
            DeleteBucketPolicyRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteBucketPolicyRequestPayload(
          [void Function(DeleteBucketPolicyRequestPayloadBuilder) updates]) =
      _$DeleteBucketPolicyRequestPayload;

  const DeleteBucketPolicyRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketPolicyRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteBucketPolicyRequestPayload');
    return helper.toString();
  }
}

class DeleteBucketPolicyRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<DeleteBucketPolicyRequestPayload> {
  const DeleteBucketPolicyRequestRestXmlSerializer()
      : super('DeleteBucketPolicyRequest');

  @override
  Iterable<Type> get types => const [
        DeleteBucketPolicyRequest,
        _$DeleteBucketPolicyRequest,
        DeleteBucketPolicyRequestPayload,
        _$DeleteBucketPolicyRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  DeleteBucketPolicyRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteBucketPolicyRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteBucketPolicyRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
