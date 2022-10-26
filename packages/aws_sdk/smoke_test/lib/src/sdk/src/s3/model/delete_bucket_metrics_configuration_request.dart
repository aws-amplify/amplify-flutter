// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

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
    String? expectedBucketOwner,
    required String id,
  }) {
    return _$DeleteBucketMetricsConfigurationRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
      id: id,
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

  static const List<_i1.SmithySerializer> serializers = [
    DeleteBucketMetricsConfigurationRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketMetricsConfigurationRequestBuilder b) {}

  /// The name of the bucket containing the metrics configuration to delete.
  String get bucket;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// The ID used to identify the metrics configuration.
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
  DeleteBucketMetricsConfigurationRequestPayload getPayload() =>
      DeleteBucketMetricsConfigurationRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
        id,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteBucketMetricsConfigurationRequest');
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteBucketMetricsConfigurationRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
