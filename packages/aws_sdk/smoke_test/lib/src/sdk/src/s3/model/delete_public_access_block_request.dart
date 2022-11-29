// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.delete_public_access_block_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_public_access_block_request.g.dart';

abstract class DeletePublicAccessBlockRequest
    with
        _i1.HttpInput<DeletePublicAccessBlockRequestPayload>,
        _i2.AWSEquatable<DeletePublicAccessBlockRequest>
    implements
        Built<DeletePublicAccessBlockRequest,
            DeletePublicAccessBlockRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeletePublicAccessBlockRequestPayload> {
  factory DeletePublicAccessBlockRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$DeletePublicAccessBlockRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory DeletePublicAccessBlockRequest.build(
          [void Function(DeletePublicAccessBlockRequestBuilder) updates]) =
      _$DeletePublicAccessBlockRequest;

  const DeletePublicAccessBlockRequest._();

  factory DeletePublicAccessBlockRequest.fromRequest(
    DeletePublicAccessBlockRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeletePublicAccessBlockRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    DeletePublicAccessBlockRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeletePublicAccessBlockRequestBuilder b) {}

  /// The Amazon S3 bucket whose `PublicAccessBlock` configuration you want to delete.
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
  DeletePublicAccessBlockRequestPayload getPayload() =>
      DeletePublicAccessBlockRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeletePublicAccessBlockRequest');
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
abstract class DeletePublicAccessBlockRequestPayload
    with
        _i2.AWSEquatable<DeletePublicAccessBlockRequestPayload>
    implements
        Built<DeletePublicAccessBlockRequestPayload,
            DeletePublicAccessBlockRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeletePublicAccessBlockRequestPayload(
      [void Function(DeletePublicAccessBlockRequestPayloadBuilder)
          updates]) = _$DeletePublicAccessBlockRequestPayload;

  const DeletePublicAccessBlockRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeletePublicAccessBlockRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeletePublicAccessBlockRequestPayload');
    return helper.toString();
  }
}

class DeletePublicAccessBlockRequestRestXmlSerializer extends _i1
    .StructuredSmithySerializer<DeletePublicAccessBlockRequestPayload> {
  const DeletePublicAccessBlockRequestRestXmlSerializer()
      : super('DeletePublicAccessBlockRequest');

  @override
  Iterable<Type> get types => const [
        DeletePublicAccessBlockRequest,
        _$DeletePublicAccessBlockRequest,
        DeletePublicAccessBlockRequestPayload,
        _$DeletePublicAccessBlockRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  DeletePublicAccessBlockRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeletePublicAccessBlockRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeletePublicAccessBlockRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
