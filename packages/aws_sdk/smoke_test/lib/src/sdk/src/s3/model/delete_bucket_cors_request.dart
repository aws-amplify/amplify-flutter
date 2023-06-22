// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.delete_bucket_cors_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_bucket_cors_request.g.dart';

abstract class DeleteBucketCorsRequest
    with
        _i1.HttpInput<DeleteBucketCorsRequestPayload>,
        _i2.AWSEquatable<DeleteBucketCorsRequest>
    implements
        Built<DeleteBucketCorsRequest, DeleteBucketCorsRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteBucketCorsRequestPayload> {
  factory DeleteBucketCorsRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$DeleteBucketCorsRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory DeleteBucketCorsRequest.build(
          [void Function(DeleteBucketCorsRequestBuilder) updates]) =
      _$DeleteBucketCorsRequest;

  const DeleteBucketCorsRequest._();

  factory DeleteBucketCorsRequest.fromRequest(
    DeleteBucketCorsRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteBucketCorsRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer<DeleteBucketCorsRequestPayload>>
      serializers = [DeleteBucketCorsRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketCorsRequestBuilder b) {}

  /// Specifies the bucket whose `cors` configuration is being deleted.
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
  DeleteBucketCorsRequestPayload getPayload() =>
      DeleteBucketCorsRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteBucketCorsRequest')
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
abstract class DeleteBucketCorsRequestPayload
    with
        _i2.AWSEquatable<DeleteBucketCorsRequestPayload>
    implements
        Built<DeleteBucketCorsRequestPayload,
            DeleteBucketCorsRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteBucketCorsRequestPayload(
          [void Function(DeleteBucketCorsRequestPayloadBuilder) updates]) =
      _$DeleteBucketCorsRequestPayload;

  const DeleteBucketCorsRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketCorsRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteBucketCorsRequestPayload');
    return helper.toString();
  }
}

class DeleteBucketCorsRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<DeleteBucketCorsRequestPayload> {
  const DeleteBucketCorsRequestRestXmlSerializer()
      : super('DeleteBucketCorsRequest');

  @override
  Iterable<Type> get types => const [
        DeleteBucketCorsRequest,
        _$DeleteBucketCorsRequest,
        DeleteBucketCorsRequestPayload,
        _$DeleteBucketCorsRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  DeleteBucketCorsRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteBucketCorsRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteBucketCorsRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteBucketCorsRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
