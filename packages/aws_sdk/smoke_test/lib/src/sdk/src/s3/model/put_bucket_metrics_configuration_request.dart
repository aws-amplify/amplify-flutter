// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.put_bucket_metrics_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/metrics_configuration.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/metrics_filter.dart' as _i4;

part 'put_bucket_metrics_configuration_request.g.dart';

abstract class PutBucketMetricsConfigurationRequest
    with
        _i1.HttpInput<_i2.MetricsConfiguration>,
        _i3.AWSEquatable<PutBucketMetricsConfigurationRequest>
    implements
        Built<PutBucketMetricsConfigurationRequest,
            PutBucketMetricsConfigurationRequestBuilder>,
        _i1.HasPayload<_i2.MetricsConfiguration> {
  factory PutBucketMetricsConfigurationRequest({
    required String bucket,
    String? expectedBucketOwner,
    required String id,
    required _i2.MetricsConfiguration metricsConfiguration,
  }) {
    return _$PutBucketMetricsConfigurationRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
      id: id,
      metricsConfiguration: metricsConfiguration,
    );
  }

  factory PutBucketMetricsConfigurationRequest.build(
      [void Function(PutBucketMetricsConfigurationRequestBuilder)
          updates]) = _$PutBucketMetricsConfigurationRequest;

  const PutBucketMetricsConfigurationRequest._();

  factory PutBucketMetricsConfigurationRequest.fromRequest(
    _i2.MetricsConfiguration payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutBucketMetricsConfigurationRequest.build((b) {
        b.metricsConfiguration.replace(payload);
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
    PutBucketMetricsConfigurationRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutBucketMetricsConfigurationRequestBuilder b) {}

  /// The name of the bucket for which the metrics configuration is set.
  String get bucket;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// The ID used to identify the metrics configuration.
  String get id;

  /// Specifies the metrics configuration.
  _i2.MetricsConfiguration get metricsConfiguration;
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
  _i2.MetricsConfiguration getPayload() => metricsConfiguration;
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
        id,
        metricsConfiguration,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutBucketMetricsConfigurationRequest');
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
    helper.add(
      'metricsConfiguration',
      metricsConfiguration,
    );
    return helper.toString();
  }
}

class PutBucketMetricsConfigurationRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.MetricsConfiguration> {
  const PutBucketMetricsConfigurationRequestRestXmlSerializer()
      : super('PutBucketMetricsConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        PutBucketMetricsConfigurationRequest,
        _$PutBucketMetricsConfigurationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.MetricsConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.MetricsConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Id':
          result.id = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Filter':
          if (value != null) {
            result.filter = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.MetricsFilter),
            ) as _i4.MetricsFilter);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is PutBucketMetricsConfigurationRequest
        ? object.getPayload()
        : (object as _i2.MetricsConfiguration);
    final result = <Object?>[
      const _i1.XmlElementName(
        'MetricsConfiguration',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('Id'))
      ..add(serializers.serialize(
        payload.id,
        specifiedType: const FullType(String),
      ));
    if (payload.filter != null) {
      result
        ..add(const _i1.XmlElementName('Filter'))
        ..add(serializers.serialize(
          payload.filter!,
          specifiedType: const FullType(_i4.MetricsFilter),
        ));
    }
    return result;
  }
}
