// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v1.s3.model.delete_object_tagging_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_object_tagging_request.g.dart';

abstract class DeleteObjectTaggingRequest
    with
        _i1.HttpInput<DeleteObjectTaggingRequestPayload>,
        _i2.AWSEquatable<DeleteObjectTaggingRequest>
    implements
        Built<DeleteObjectTaggingRequest, DeleteObjectTaggingRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteObjectTaggingRequestPayload> {
  factory DeleteObjectTaggingRequest({
    required String bucket,
    required String key,
    String? versionId,
    String? expectedBucketOwner,
  }) {
    return _$DeleteObjectTaggingRequest._(
      bucket: bucket,
      key: key,
      versionId: versionId,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory DeleteObjectTaggingRequest.build(
          [void Function(DeleteObjectTaggingRequestBuilder) updates]) =
      _$DeleteObjectTaggingRequest;

  const DeleteObjectTaggingRequest._();

  factory DeleteObjectTaggingRequest.fromRequest(
    DeleteObjectTaggingRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteObjectTaggingRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (request.queryParameters['versionId'] != null) {
          b.versionId = request.queryParameters['versionId']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
        if (labels['key'] != null) {
          b.key = labels['key']!;
        }
      });

  static const List<_i1.SmithySerializer<DeleteObjectTaggingRequestPayload>>
      serializers = [DeleteObjectTaggingRequestRestXmlSerializer()];

  String get bucket;
  String get key;
  String? get versionId;
  String? get expectedBucketOwner;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'Bucket':
        return bucket;
      case 'Key':
        return this.key;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  DeleteObjectTaggingRequestPayload getPayload() =>
      DeleteObjectTaggingRequestPayload();

  @override
  List<Object?> get props => [
        bucket,
        key,
        versionId,
        expectedBucketOwner,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteObjectTaggingRequest')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'key',
        key,
      )
      ..add(
        'versionId',
        versionId,
      )
      ..add(
        'expectedBucketOwner',
        expectedBucketOwner,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteObjectTaggingRequestPayload
    with
        _i2.AWSEquatable<DeleteObjectTaggingRequestPayload>
    implements
        Built<DeleteObjectTaggingRequestPayload,
            DeleteObjectTaggingRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteObjectTaggingRequestPayload(
          [void Function(DeleteObjectTaggingRequestPayloadBuilder) updates]) =
      _$DeleteObjectTaggingRequestPayload;

  const DeleteObjectTaggingRequestPayload._();

  @override
  List<Object?> get props => [];

  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteObjectTaggingRequestPayload');
    return helper.toString();
  }
}

class DeleteObjectTaggingRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<DeleteObjectTaggingRequestPayload> {
  const DeleteObjectTaggingRequestRestXmlSerializer()
      : super('DeleteObjectTaggingRequest');

  @override
  Iterable<Type> get types => const [
        DeleteObjectTaggingRequest,
        _$DeleteObjectTaggingRequest,
        DeleteObjectTaggingRequestPayload,
        _$DeleteObjectTaggingRequestPayload,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  DeleteObjectTaggingRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteObjectTaggingRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteObjectTaggingRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteObjectTaggingRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
