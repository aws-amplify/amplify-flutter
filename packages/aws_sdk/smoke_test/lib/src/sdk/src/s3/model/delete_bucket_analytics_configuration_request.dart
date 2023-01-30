// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.delete_bucket_analytics_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_bucket_analytics_configuration_request.g.dart';

abstract class DeleteBucketAnalyticsConfigurationRequest
    with
        _i1.HttpInput<DeleteBucketAnalyticsConfigurationRequestPayload>,
        _i2.AWSEquatable<DeleteBucketAnalyticsConfigurationRequest>
    implements
        Built<DeleteBucketAnalyticsConfigurationRequest,
            DeleteBucketAnalyticsConfigurationRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteBucketAnalyticsConfigurationRequestPayload> {
  factory DeleteBucketAnalyticsConfigurationRequest({
    required String bucket,
    String? expectedBucketOwner,
    required String id,
  }) {
    return _$DeleteBucketAnalyticsConfigurationRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
      id: id,
    );
  }

  factory DeleteBucketAnalyticsConfigurationRequest.build(
      [void Function(DeleteBucketAnalyticsConfigurationRequestBuilder)
          updates]) = _$DeleteBucketAnalyticsConfigurationRequest;

  const DeleteBucketAnalyticsConfigurationRequest._();

  factory DeleteBucketAnalyticsConfigurationRequest.fromRequest(
    DeleteBucketAnalyticsConfigurationRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteBucketAnalyticsConfigurationRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (request.queryParameters['id'] != null) {
          b.id = request.queryParameters['id']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    DeleteBucketAnalyticsConfigurationRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketAnalyticsConfigurationRequestBuilder b) {}

  /// The name of the bucket from which an analytics configuration is deleted.
  String get bucket;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// The ID that identifies the analytics configuration.
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
  DeleteBucketAnalyticsConfigurationRequestPayload getPayload() =>
      DeleteBucketAnalyticsConfigurationRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
        id,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteBucketAnalyticsConfigurationRequest');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'expectedBucketOwner',
      expectedBucketOwner,
    );
    helper.add(
      'id',
      id,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteBucketAnalyticsConfigurationRequestPayload
    with
        _i2.AWSEquatable<DeleteBucketAnalyticsConfigurationRequestPayload>
    implements
        Built<DeleteBucketAnalyticsConfigurationRequestPayload,
            DeleteBucketAnalyticsConfigurationRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteBucketAnalyticsConfigurationRequestPayload(
      [void Function(DeleteBucketAnalyticsConfigurationRequestPayloadBuilder)
          updates]) = _$DeleteBucketAnalyticsConfigurationRequestPayload;

  const DeleteBucketAnalyticsConfigurationRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DeleteBucketAnalyticsConfigurationRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteBucketAnalyticsConfigurationRequestPayload');
    return helper.toString();
  }
}

class DeleteBucketAnalyticsConfigurationRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<
        DeleteBucketAnalyticsConfigurationRequestPayload> {
  const DeleteBucketAnalyticsConfigurationRequestRestXmlSerializer()
      : super('DeleteBucketAnalyticsConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        DeleteBucketAnalyticsConfigurationRequest,
        _$DeleteBucketAnalyticsConfigurationRequest,
        DeleteBucketAnalyticsConfigurationRequestPayload,
        _$DeleteBucketAnalyticsConfigurationRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  DeleteBucketAnalyticsConfigurationRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteBucketAnalyticsConfigurationRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteBucketAnalyticsConfigurationRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
