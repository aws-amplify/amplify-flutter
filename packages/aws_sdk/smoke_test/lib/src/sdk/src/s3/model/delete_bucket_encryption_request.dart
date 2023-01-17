// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.delete_bucket_encryption_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_bucket_encryption_request.g.dart';

abstract class DeleteBucketEncryptionRequest
    with
        _i1.HttpInput<DeleteBucketEncryptionRequestPayload>,
        _i2.AWSEquatable<DeleteBucketEncryptionRequest>
    implements
        Built<DeleteBucketEncryptionRequest,
            DeleteBucketEncryptionRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteBucketEncryptionRequestPayload> {
  factory DeleteBucketEncryptionRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$DeleteBucketEncryptionRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory DeleteBucketEncryptionRequest.build(
          [void Function(DeleteBucketEncryptionRequestBuilder) updates]) =
      _$DeleteBucketEncryptionRequest;

  const DeleteBucketEncryptionRequest._();

  factory DeleteBucketEncryptionRequest.fromRequest(
    DeleteBucketEncryptionRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteBucketEncryptionRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    DeleteBucketEncryptionRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketEncryptionRequestBuilder b) {}

  /// The name of the bucket containing the server-side encryption configuration to delete.
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
  DeleteBucketEncryptionRequestPayload getPayload() =>
      DeleteBucketEncryptionRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteBucketEncryptionRequest');
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
abstract class DeleteBucketEncryptionRequestPayload
    with
        _i2.AWSEquatable<DeleteBucketEncryptionRequestPayload>
    implements
        Built<DeleteBucketEncryptionRequestPayload,
            DeleteBucketEncryptionRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteBucketEncryptionRequestPayload(
      [void Function(DeleteBucketEncryptionRequestPayloadBuilder)
          updates]) = _$DeleteBucketEncryptionRequestPayload;

  const DeleteBucketEncryptionRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketEncryptionRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteBucketEncryptionRequestPayload');
    return helper.toString();
  }
}

class DeleteBucketEncryptionRequestRestXmlSerializer extends _i1
    .StructuredSmithySerializer<DeleteBucketEncryptionRequestPayload> {
  const DeleteBucketEncryptionRequestRestXmlSerializer()
      : super('DeleteBucketEncryptionRequest');

  @override
  Iterable<Type> get types => const [
        DeleteBucketEncryptionRequest,
        _$DeleteBucketEncryptionRequest,
        DeleteBucketEncryptionRequestPayload,
        _$DeleteBucketEncryptionRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  DeleteBucketEncryptionRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteBucketEncryptionRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteBucketEncryptionRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
