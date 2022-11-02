// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.delete_bucket_lifecycle_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_bucket_lifecycle_request.g.dart';

abstract class DeleteBucketLifecycleRequest
    with
        _i1.HttpInput<DeleteBucketLifecycleRequestPayload>,
        _i2.AWSEquatable<DeleteBucketLifecycleRequest>
    implements
        Built<DeleteBucketLifecycleRequest,
            DeleteBucketLifecycleRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteBucketLifecycleRequestPayload> {
  factory DeleteBucketLifecycleRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$DeleteBucketLifecycleRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory DeleteBucketLifecycleRequest.build(
          [void Function(DeleteBucketLifecycleRequestBuilder) updates]) =
      _$DeleteBucketLifecycleRequest;

  const DeleteBucketLifecycleRequest._();

  factory DeleteBucketLifecycleRequest.fromRequest(
    DeleteBucketLifecycleRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteBucketLifecycleRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    DeleteBucketLifecycleRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketLifecycleRequestBuilder b) {}

  /// The bucket name of the lifecycle to delete.
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
  DeleteBucketLifecycleRequestPayload getPayload() =>
      DeleteBucketLifecycleRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteBucketLifecycleRequest');
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
abstract class DeleteBucketLifecycleRequestPayload
    with
        _i2.AWSEquatable<DeleteBucketLifecycleRequestPayload>
    implements
        Built<DeleteBucketLifecycleRequestPayload,
            DeleteBucketLifecycleRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteBucketLifecycleRequestPayload(
          [void Function(DeleteBucketLifecycleRequestPayloadBuilder) updates]) =
      _$DeleteBucketLifecycleRequestPayload;

  const DeleteBucketLifecycleRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketLifecycleRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteBucketLifecycleRequestPayload');
    return helper.toString();
  }
}

class DeleteBucketLifecycleRequestRestXmlSerializer extends _i1
    .StructuredSmithySerializer<DeleteBucketLifecycleRequestPayload> {
  const DeleteBucketLifecycleRequestRestXmlSerializer()
      : super('DeleteBucketLifecycleRequest');

  @override
  Iterable<Type> get types => const [
        DeleteBucketLifecycleRequest,
        _$DeleteBucketLifecycleRequest,
        DeleteBucketLifecycleRequestPayload,
        _$DeleteBucketLifecycleRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  DeleteBucketLifecycleRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteBucketLifecycleRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteBucketLifecycleRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
