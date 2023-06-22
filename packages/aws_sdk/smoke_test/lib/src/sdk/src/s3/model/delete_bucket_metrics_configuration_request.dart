// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.delete_bucket_metrics_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_bucket_metrics_configuration_request.g.dart';

abstract class DeleteBucketMetricsConfigurationRequest
    with
        _i1.HttpInput<DeleteBucketMetricsConfigurationRequestPayload>,
        _i2.AWSEquatable<DeleteBucketMetricsConfigurationRequest>
    implements
        Built<DeleteBucketMetricsConfigurationRequest,
            DeleteBucketMetricsConfigurationRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteBucketMetricsConfigurationRequestPayload> {
  factory DeleteBucketMetricsConfigurationRequest({
    required String bucket,
    required String id,
    String? expectedBucketOwner,
  }) {
    return _$DeleteBucketMetricsConfigurationRequest._(
      bucket: bucket,
      id: id,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory DeleteBucketMetricsConfigurationRequest.build(
      [void Function(DeleteBucketMetricsConfigurationRequestBuilder)
          updates]) = _$DeleteBucketMetricsConfigurationRequest;

  const DeleteBucketMetricsConfigurationRequest._();

  factory DeleteBucketMetricsConfigurationRequest.fromRequest(
    DeleteBucketMetricsConfigurationRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteBucketMetricsConfigurationRequest.build((b) {
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

  static const List<
          _i1.SmithySerializer<DeleteBucketMetricsConfigurationRequestPayload>>
      serializers = [
    DeleteBucketMetricsConfigurationRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketMetricsConfigurationRequestBuilder b) {}

  /// The name of the bucket containing the metrics configuration to delete.
  String get bucket;

  /// The ID used to identify the metrics configuration. The ID has a 64 character limit and can only contain letters, numbers, periods, dashes, and underscores.
  String get id;

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
  DeleteBucketMetricsConfigurationRequestPayload getPayload() =>
      DeleteBucketMetricsConfigurationRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        id,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteBucketMetricsConfigurationRequest')
          ..add(
            'bucket',
            bucket,
          )
          ..add(
            'id',
            id,
          )
          ..add(
            'expectedBucketOwner',
            expectedBucketOwner,
          );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteBucketMetricsConfigurationRequestPayload
    with
        _i2.AWSEquatable<DeleteBucketMetricsConfigurationRequestPayload>
    implements
        Built<DeleteBucketMetricsConfigurationRequestPayload,
            DeleteBucketMetricsConfigurationRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteBucketMetricsConfigurationRequestPayload(
      [void Function(DeleteBucketMetricsConfigurationRequestPayloadBuilder)
          updates]) = _$DeleteBucketMetricsConfigurationRequestPayload;

  const DeleteBucketMetricsConfigurationRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketMetricsConfigurationRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteBucketMetricsConfigurationRequestPayload');
    return helper.toString();
  }
}

class DeleteBucketMetricsConfigurationRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<
        DeleteBucketMetricsConfigurationRequestPayload> {
  const DeleteBucketMetricsConfigurationRequestRestXmlSerializer()
      : super('DeleteBucketMetricsConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        DeleteBucketMetricsConfigurationRequest,
        _$DeleteBucketMetricsConfigurationRequest,
        DeleteBucketMetricsConfigurationRequestPayload,
        _$DeleteBucketMetricsConfigurationRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  DeleteBucketMetricsConfigurationRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteBucketMetricsConfigurationRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteBucketMetricsConfigurationRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteBucketMetricsConfigurationRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
