// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.delete_bucket_intelligent_tiering_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_bucket_intelligent_tiering_configuration_request.g.dart';

abstract class DeleteBucketIntelligentTieringConfigurationRequest
    with
        _i1.HttpInput<
            DeleteBucketIntelligentTieringConfigurationRequestPayload>,
        _i2.AWSEquatable<DeleteBucketIntelligentTieringConfigurationRequest>
    implements
        Built<DeleteBucketIntelligentTieringConfigurationRequest,
            DeleteBucketIntelligentTieringConfigurationRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<
            DeleteBucketIntelligentTieringConfigurationRequestPayload> {
  factory DeleteBucketIntelligentTieringConfigurationRequest({
    required String bucket,
    required String id,
  }) {
    return _$DeleteBucketIntelligentTieringConfigurationRequest._(
      bucket: bucket,
      id: id,
    );
  }

  factory DeleteBucketIntelligentTieringConfigurationRequest.build(
      [void Function(DeleteBucketIntelligentTieringConfigurationRequestBuilder)
          updates]) = _$DeleteBucketIntelligentTieringConfigurationRequest;

  const DeleteBucketIntelligentTieringConfigurationRequest._();

  factory DeleteBucketIntelligentTieringConfigurationRequest.fromRequest(
    DeleteBucketIntelligentTieringConfigurationRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteBucketIntelligentTieringConfigurationRequest.build((b) {
        if (request.queryParameters['id'] != null) {
          b.id = request.queryParameters['id']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    DeleteBucketIntelligentTieringConfigurationRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DeleteBucketIntelligentTieringConfigurationRequestBuilder b) {}

  /// The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.
  String get bucket;

  /// The ID used to identify the S3 Intelligent-Tiering configuration.
  String get id;
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
  DeleteBucketIntelligentTieringConfigurationRequestPayload getPayload() =>
      DeleteBucketIntelligentTieringConfigurationRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        id,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteBucketIntelligentTieringConfigurationRequest');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'id',
      id,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteBucketIntelligentTieringConfigurationRequestPayload
    with
        _i2.AWSEquatable<
            DeleteBucketIntelligentTieringConfigurationRequestPayload>
    implements
        Built<DeleteBucketIntelligentTieringConfigurationRequestPayload,
            DeleteBucketIntelligentTieringConfigurationRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteBucketIntelligentTieringConfigurationRequestPayload(
      [void Function(
              DeleteBucketIntelligentTieringConfigurationRequestPayloadBuilder)
          updates]) = _$DeleteBucketIntelligentTieringConfigurationRequestPayload;

  const DeleteBucketIntelligentTieringConfigurationRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DeleteBucketIntelligentTieringConfigurationRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteBucketIntelligentTieringConfigurationRequestPayload');
    return helper.toString();
  }
}

class DeleteBucketIntelligentTieringConfigurationRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<
        DeleteBucketIntelligentTieringConfigurationRequestPayload> {
  const DeleteBucketIntelligentTieringConfigurationRequestRestXmlSerializer()
      : super('DeleteBucketIntelligentTieringConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        DeleteBucketIntelligentTieringConfigurationRequest,
        _$DeleteBucketIntelligentTieringConfigurationRequest,
        DeleteBucketIntelligentTieringConfigurationRequestPayload,
        _$DeleteBucketIntelligentTieringConfigurationRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  DeleteBucketIntelligentTieringConfigurationRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteBucketIntelligentTieringConfigurationRequestPayloadBuilder()
        .build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteBucketIntelligentTieringConfigurationRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
