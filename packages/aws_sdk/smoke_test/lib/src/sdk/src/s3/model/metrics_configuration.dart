// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required String id,
    _i2.MetricsFilter? filter,
  }) {
    return _$MetricsConfiguration._(
      id: id,
      filter: filter,
    );
  }

  /// Specifies a metrics configuration for the CloudWatch request metrics (specified by the metrics configuration ID) from an Amazon S3 bucket. If you're updating an existing metrics configuration, note that this is a full replacement of the existing metrics configuration. If you don't include the elements you want to keep, they are erased. For more information, see [PutBucketMetricsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTMetricConfiguration.html).
  factory MetricsConfiguration.build(
          [void Function(MetricsConfigurationBuilder) updates]) =
      _$MetricsConfiguration;

  const MetricsConfiguration._();

  static const List<_i3.SmithySerializer<MetricsConfiguration>> serializers = [
    MetricsConfigurationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MetricsConfigurationBuilder b) {}

  /// The ID used to identify the metrics configuration. The ID has a 64 character limit and can only contain letters, numbers, periods, dashes, and underscores.
  String get id;

  /// Specifies a metrics configuration filter. The metrics configuration will only include objects that meet the filter's criteria. A filter must be a prefix, an object tag, an access point ARN, or a conjunction (MetricsAndOperator).
  _i2.MetricsFilter? get filter;
  @override
  List<Object?> get props => [
        id,
        filter,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MetricsConfiguration')
      ..add(
        'id',
        id,
      )
      ..add(
        'filter',
        filter,
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Filter':
          result.filter = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.MetricsFilter),
          ) as _i2.MetricsFilter);
        case 'Id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MetricsConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'MetricsConfiguration',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final MetricsConfiguration(:filter, :id) = object;
    if (filter != null) {
      result$
        ..add(const _i3.XmlElementName('Filter'))
        ..add(serializers.serialize(
          filter,
          specifiedType: const FullType(_i2.MetricsFilter),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Id'))
      ..add(serializers.serialize(
        id,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
