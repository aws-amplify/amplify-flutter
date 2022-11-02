// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.get_bucket_metrics_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_bucket_metrics_configuration_request.g.dart';

abstract class GetBucketMetricsConfigurationRequest
    with
        _i1.HttpInput<GetBucketMetricsConfigurationRequestPayload>,
        _i2.AWSEquatable<GetBucketMetricsConfigurationRequest>
    implements
        Built<GetBucketMetricsConfigurationRequest,
            GetBucketMetricsConfigurationRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetBucketMetricsConfigurationRequestPayload> {
  factory GetBucketMetricsConfigurationRequest({
    required String bucket,
    String? expectedBucketOwner,
    required String id,
  }) {
    return _$GetBucketMetricsConfigurationRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
      id: id,
    );
  }

  factory GetBucketMetricsConfigurationRequest.build(
      [void Function(GetBucketMetricsConfigurationRequestBuilder)
          updates]) = _$GetBucketMetricsConfigurationRequest;

  const GetBucketMetricsConfigurationRequest._();

  factory GetBucketMetricsConfigurationRequest.fromRequest(
    GetBucketMetricsConfigurationRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetBucketMetricsConfigurationRequest.build((b) {
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
    GetBucketMetricsConfigurationRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketMetricsConfigurationRequestBuilder b) {}

  /// The name of the bucket containing the metrics configuration to retrieve.
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
  GetBucketMetricsConfigurationRequestPayload getPayload() =>
      GetBucketMetricsConfigurationRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
        id,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketMetricsConfigurationRequest');
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
abstract class GetBucketMetricsConfigurationRequestPayload
    with
        _i2.AWSEquatable<GetBucketMetricsConfigurationRequestPayload>
    implements
        Built<GetBucketMetricsConfigurationRequestPayload,
            GetBucketMetricsConfigurationRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetBucketMetricsConfigurationRequestPayload(
      [void Function(GetBucketMetricsConfigurationRequestPayloadBuilder)
          updates]) = _$GetBucketMetricsConfigurationRequestPayload;

  const GetBucketMetricsConfigurationRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketMetricsConfigurationRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetBucketMetricsConfigurationRequestPayload');
    return helper.toString();
  }
}

class GetBucketMetricsConfigurationRequestRestXmlSerializer extends _i1
    .StructuredSmithySerializer<GetBucketMetricsConfigurationRequestPayload> {
  const GetBucketMetricsConfigurationRequestRestXmlSerializer()
      : super('GetBucketMetricsConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        GetBucketMetricsConfigurationRequest,
        _$GetBucketMetricsConfigurationRequest,
        GetBucketMetricsConfigurationRequestPayload,
        _$GetBucketMetricsConfigurationRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketMetricsConfigurationRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetBucketMetricsConfigurationRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetBucketMetricsConfigurationRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
