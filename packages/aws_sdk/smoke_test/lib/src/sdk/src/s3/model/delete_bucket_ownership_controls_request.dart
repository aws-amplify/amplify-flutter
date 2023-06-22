// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.delete_bucket_ownership_controls_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_bucket_ownership_controls_request.g.dart';

abstract class DeleteBucketOwnershipControlsRequest
    with
        _i1.HttpInput<DeleteBucketOwnershipControlsRequestPayload>,
        _i2.AWSEquatable<DeleteBucketOwnershipControlsRequest>
    implements
        Built<DeleteBucketOwnershipControlsRequest,
            DeleteBucketOwnershipControlsRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteBucketOwnershipControlsRequestPayload> {
  factory DeleteBucketOwnershipControlsRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$DeleteBucketOwnershipControlsRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory DeleteBucketOwnershipControlsRequest.build(
      [void Function(DeleteBucketOwnershipControlsRequestBuilder)
          updates]) = _$DeleteBucketOwnershipControlsRequest;

  const DeleteBucketOwnershipControlsRequest._();

  factory DeleteBucketOwnershipControlsRequest.fromRequest(
    DeleteBucketOwnershipControlsRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteBucketOwnershipControlsRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<
          _i1.SmithySerializer<DeleteBucketOwnershipControlsRequestPayload>>
      serializers = [DeleteBucketOwnershipControlsRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketOwnershipControlsRequestBuilder b) {}

  /// The Amazon S3 bucket whose `OwnershipControls` you want to delete.
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
  DeleteBucketOwnershipControlsRequestPayload getPayload() =>
      DeleteBucketOwnershipControlsRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteBucketOwnershipControlsRequest')
          ..add(
            'bucket',
            bucket,
          )
          ..add(
            'expectedBucketOwner',
            expectedBucketOwner,
          );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteBucketOwnershipControlsRequestPayload
    with
        _i2.AWSEquatable<DeleteBucketOwnershipControlsRequestPayload>
    implements
        Built<DeleteBucketOwnershipControlsRequestPayload,
            DeleteBucketOwnershipControlsRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteBucketOwnershipControlsRequestPayload(
      [void Function(DeleteBucketOwnershipControlsRequestPayloadBuilder)
          updates]) = _$DeleteBucketOwnershipControlsRequestPayload;

  const DeleteBucketOwnershipControlsRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketOwnershipControlsRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteBucketOwnershipControlsRequestPayload');
    return helper.toString();
  }
}

class DeleteBucketOwnershipControlsRequestRestXmlSerializer extends _i1
    .StructuredSmithySerializer<DeleteBucketOwnershipControlsRequestPayload> {
  const DeleteBucketOwnershipControlsRequestRestXmlSerializer()
      : super('DeleteBucketOwnershipControlsRequest');

  @override
  Iterable<Type> get types => const [
        DeleteBucketOwnershipControlsRequest,
        _$DeleteBucketOwnershipControlsRequest,
        DeleteBucketOwnershipControlsRequestPayload,
        _$DeleteBucketOwnershipControlsRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  DeleteBucketOwnershipControlsRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteBucketOwnershipControlsRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteBucketOwnershipControlsRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteBucketOwnershipControlsRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
