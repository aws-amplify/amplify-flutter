// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.delete_bucket_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_bucket_request.g.dart';

abstract class DeleteBucketRequest
    with
        _i1.HttpInput<DeleteBucketRequestPayload>,
        _i2.AWSEquatable<DeleteBucketRequest>
    implements
        Built<DeleteBucketRequest, DeleteBucketRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteBucketRequestPayload> {
  factory DeleteBucketRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$DeleteBucketRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory DeleteBucketRequest.build(
          [void Function(DeleteBucketRequestBuilder) updates]) =
      _$DeleteBucketRequest;

  const DeleteBucketRequest._();

  factory DeleteBucketRequest.fromRequest(
    DeleteBucketRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteBucketRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    DeleteBucketRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketRequestBuilder b) {}

  /// Specifies the bucket being deleted.
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
  DeleteBucketRequestPayload getPayload() => DeleteBucketRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteBucketRequest');
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
abstract class DeleteBucketRequestPayload
    with _i2.AWSEquatable<DeleteBucketRequestPayload>
    implements
        Built<DeleteBucketRequestPayload, DeleteBucketRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteBucketRequestPayload(
          [void Function(DeleteBucketRequestPayloadBuilder) updates]) =
      _$DeleteBucketRequestPayload;

  const DeleteBucketRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteBucketRequestPayload');
    return helper.toString();
  }
}

class DeleteBucketRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<DeleteBucketRequestPayload> {
  const DeleteBucketRequestRestXmlSerializer() : super('DeleteBucketRequest');

  @override
  Iterable<Type> get types => const [
        DeleteBucketRequest,
        _$DeleteBucketRequest,
        DeleteBucketRequestPayload,
        _$DeleteBucketRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  DeleteBucketRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteBucketRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteBucketRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
