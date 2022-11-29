// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.delete_bucket_replication_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_bucket_replication_request.g.dart';

abstract class DeleteBucketReplicationRequest
    with
        _i1.HttpInput<DeleteBucketReplicationRequestPayload>,
        _i2.AWSEquatable<DeleteBucketReplicationRequest>
    implements
        Built<DeleteBucketReplicationRequest,
            DeleteBucketReplicationRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteBucketReplicationRequestPayload> {
  factory DeleteBucketReplicationRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$DeleteBucketReplicationRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory DeleteBucketReplicationRequest.build(
          [void Function(DeleteBucketReplicationRequestBuilder) updates]) =
      _$DeleteBucketReplicationRequest;

  const DeleteBucketReplicationRequest._();

  factory DeleteBucketReplicationRequest.fromRequest(
    DeleteBucketReplicationRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteBucketReplicationRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    DeleteBucketReplicationRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketReplicationRequestBuilder b) {}

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
  DeleteBucketReplicationRequestPayload getPayload() =>
      DeleteBucketReplicationRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteBucketReplicationRequest');
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
abstract class DeleteBucketReplicationRequestPayload
    with
        _i2.AWSEquatable<DeleteBucketReplicationRequestPayload>
    implements
        Built<DeleteBucketReplicationRequestPayload,
            DeleteBucketReplicationRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteBucketReplicationRequestPayload(
      [void Function(DeleteBucketReplicationRequestPayloadBuilder)
          updates]) = _$DeleteBucketReplicationRequestPayload;

  const DeleteBucketReplicationRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketReplicationRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteBucketReplicationRequestPayload');
    return helper.toString();
  }
}

class DeleteBucketReplicationRequestRestXmlSerializer extends _i1
    .StructuredSmithySerializer<DeleteBucketReplicationRequestPayload> {
  const DeleteBucketReplicationRequestRestXmlSerializer()
      : super('DeleteBucketReplicationRequest');

  @override
  Iterable<Type> get types => const [
        DeleteBucketReplicationRequest,
        _$DeleteBucketReplicationRequest,
        DeleteBucketReplicationRequestPayload,
        _$DeleteBucketReplicationRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  DeleteBucketReplicationRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteBucketReplicationRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteBucketReplicationRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
