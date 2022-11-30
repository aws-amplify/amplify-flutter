// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.metrics_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/metrics_filter.dart' as _i2;

part 'metrics_configuration.g.dart';

/// Specifies a metrics configuration for the CloudWatch request metrics (specified by the metrics configuration ID) from an Amazon S3 bucket. If you're updating an existing metrics configuration, note that this is a full replacement of the existing metrics configuration. If you don't include the elements you want to keep, they are erased. For more information, see [PutBucketMetricsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTMetricConfiguration.html).
abstract class MetricsConfiguration
    with _i1.AWSEquatable<MetricsConfiguration>
    implements Built<MetricsConfiguration, MetricsConfigurationBuilder> {
  /// Specifies a metrics configuration for the CloudWatch request metrics (specified by the metrics configuration ID) from an Amazon S3 bucket. If you're updating an existing metrics configuration, note that this is a full replacement of the existing metrics configuration. If you don't include the elements you want to keep, they are erased. For more information, see [PutBucketMetricsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTMetricConfiguration.html).
  factory MetricsConfiguration({
    _i2.MetricsFilter? filter,
    required String id,
  }) {
    return _$MetricsConfiguration._(
      filter: filter,
      id: id,
    );
  }

  /// Specifies a metrics configuration for the CloudWatch request metrics (specified by the metrics configuration ID) from an Amazon S3 bucket. If you're updating an existing metrics configuration, note that this is a full replacement of the existing metrics configuration. If you don't include the elements you want to keep, they are erased. For more information, see [PutBucketMetricsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTMetricConfiguration.html).
  factory MetricsConfiguration.build(
          [void Function(MetricsConfigurationBuilder) updates]) =
      _$MetricsConfiguration;

  const MetricsConfiguration._();

  static const List<_i3.SmithySerializer> serializers = [
    MetricsConfigurationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MetricsConfigurationBuilder b) {}

  /// Specifies a metrics configuration filter. The metrics configuration will only include objects that meet the filter's criteria. A filter must be a prefix, an object tag, an access point ARN, or a conjunction (MetricsAndOperator).
  _i2.MetricsFilter? get filter;

  /// The ID used to identify the metrics configuration.
  String get id;
  @override
  List<Object?> get props => [
        filter,
        id,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MetricsConfiguration');
    helper.add(
      'filter',
      filter,
    );
    helper.add(
      'id',
      id,
    );
    return helper.toString();
  }
}

class MetricsConfigurationRestXmlSerializer
    extends _i3.StructuredSmithySerializer<MetricsConfiguration> {
  const MetricsConfigurationRestXmlSerializer() : super('MetricsConfiguration');

  @override
  Iterable<Type> get types => const [
        MetricsConfiguration,
        _$MetricsConfiguration,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  MetricsConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetricsConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Filter':
          if (value != null) {
            result.filter = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.MetricsFilter),
            ) as _i2.MetricsFilter);
          }
          break;
        case 'Id':
          result.id = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as MetricsConfiguration);
    final result = <Object?>[
      const _i3.XmlElementName(
        'MetricsConfiguration',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.filter != null) {
      result
        ..add(const _i3.XmlElementName('Filter'))
        ..add(serializers.serialize(
          payload.filter!,
          specifiedType: const FullType(_i2.MetricsFilter),
        ));
    }
    result
      ..add(const _i3.XmlElementName('Id'))
      ..add(serializers.serialize(
        payload.id,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
