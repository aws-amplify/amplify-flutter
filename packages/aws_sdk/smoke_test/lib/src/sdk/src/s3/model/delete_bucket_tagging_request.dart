// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.delete_bucket_tagging_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_bucket_tagging_request.g.dart';

abstract class DeleteBucketTaggingRequest
    with
        _i1.HttpInput<DeleteBucketTaggingRequestPayload>,
        _i2.AWSEquatable<DeleteBucketTaggingRequest>
    implements
        Built<DeleteBucketTaggingRequest, DeleteBucketTaggingRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteBucketTaggingRequestPayload> {
  factory DeleteBucketTaggingRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$DeleteBucketTaggingRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory DeleteBucketTaggingRequest.build(
          [void Function(DeleteBucketTaggingRequestBuilder) updates]) =
      _$DeleteBucketTaggingRequest;

  const DeleteBucketTaggingRequest._();

  factory DeleteBucketTaggingRequest.fromRequest(
    DeleteBucketTaggingRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteBucketTaggingRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    DeleteBucketTaggingRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketTaggingRequestBuilder b) {}

  /// The bucket that has the tag set to be removed.
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
  DeleteBucketTaggingRequestPayload getPayload() =>
      DeleteBucketTaggingRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteBucketTaggingRequest');
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
abstract class DeleteBucketTaggingRequestPayload
    with
        _i2.AWSEquatable<DeleteBucketTaggingRequestPayload>
    implements
        Built<DeleteBucketTaggingRequestPayload,
            DeleteBucketTaggingRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteBucketTaggingRequestPayload(
          [void Function(DeleteBucketTaggingRequestPayloadBuilder) updates]) =
      _$DeleteBucketTaggingRequestPayload;

  const DeleteBucketTaggingRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketTaggingRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteBucketTaggingRequestPayload');
    return helper.toString();
  }
}

class DeleteBucketTaggingRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<DeleteBucketTaggingRequestPayload> {
  const DeleteBucketTaggingRequestRestXmlSerializer()
      : super('DeleteBucketTaggingRequest');

  @override
  Iterable<Type> get types => const [
        DeleteBucketTaggingRequest,
        _$DeleteBucketTaggingRequest,
        DeleteBucketTaggingRequestPayload,
        _$DeleteBucketTaggingRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  DeleteBucketTaggingRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteBucketTaggingRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteBucketTaggingRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
