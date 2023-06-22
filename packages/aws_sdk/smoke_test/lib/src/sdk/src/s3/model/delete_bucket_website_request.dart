// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.delete_bucket_website_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_bucket_website_request.g.dart';

abstract class DeleteBucketWebsiteRequest
    with
        _i1.HttpInput<DeleteBucketWebsiteRequestPayload>,
        _i2.AWSEquatable<DeleteBucketWebsiteRequest>
    implements
        Built<DeleteBucketWebsiteRequest, DeleteBucketWebsiteRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteBucketWebsiteRequestPayload> {
  factory DeleteBucketWebsiteRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$DeleteBucketWebsiteRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory DeleteBucketWebsiteRequest.build(
          [void Function(DeleteBucketWebsiteRequestBuilder) updates]) =
      _$DeleteBucketWebsiteRequest;

  const DeleteBucketWebsiteRequest._();

  factory DeleteBucketWebsiteRequest.fromRequest(
    DeleteBucketWebsiteRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteBucketWebsiteRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer<DeleteBucketWebsiteRequestPayload>>
      serializers = [DeleteBucketWebsiteRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketWebsiteRequestBuilder b) {}

  /// The bucket name for which you want to remove the website configuration.
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
  DeleteBucketWebsiteRequestPayload getPayload() =>
      DeleteBucketWebsiteRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteBucketWebsiteRequest')
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
abstract class DeleteBucketWebsiteRequestPayload
    with
        _i2.AWSEquatable<DeleteBucketWebsiteRequestPayload>
    implements
        Built<DeleteBucketWebsiteRequestPayload,
            DeleteBucketWebsiteRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteBucketWebsiteRequestPayload(
          [void Function(DeleteBucketWebsiteRequestPayloadBuilder) updates]) =
      _$DeleteBucketWebsiteRequestPayload;

  const DeleteBucketWebsiteRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketWebsiteRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteBucketWebsiteRequestPayload');
    return helper.toString();
  }
}

class DeleteBucketWebsiteRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<DeleteBucketWebsiteRequestPayload> {
  const DeleteBucketWebsiteRequestRestXmlSerializer()
      : super('DeleteBucketWebsiteRequest');

  @override
  Iterable<Type> get types => const [
        DeleteBucketWebsiteRequest,
        _$DeleteBucketWebsiteRequest,
        DeleteBucketWebsiteRequestPayload,
        _$DeleteBucketWebsiteRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  DeleteBucketWebsiteRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteBucketWebsiteRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteBucketWebsiteRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteBucketWebsiteRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
