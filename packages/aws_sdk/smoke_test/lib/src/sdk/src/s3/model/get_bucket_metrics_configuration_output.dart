// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.get_bucket_metrics_configuration_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/metrics_configuration.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/metrics_filter.dart' as _i4;

part 'get_bucket_metrics_configuration_output.g.dart';

abstract class GetBucketMetricsConfigurationOutput
    with
        _i1.AWSEquatable<GetBucketMetricsConfigurationOutput>
    implements
        Built<GetBucketMetricsConfigurationOutput,
            GetBucketMetricsConfigurationOutputBuilder>,
        _i2.HasPayload<_i3.MetricsConfiguration> {
  factory GetBucketMetricsConfigurationOutput(
      {_i3.MetricsConfiguration? metricsConfiguration}) {
    return _$GetBucketMetricsConfigurationOutput._(
        metricsConfiguration: metricsConfiguration);
  }

  factory GetBucketMetricsConfigurationOutput.build(
          [void Function(GetBucketMetricsConfigurationOutputBuilder) updates]) =
      _$GetBucketMetricsConfigurationOutput;

  const GetBucketMetricsConfigurationOutput._();

  /// Constructs a [GetBucketMetricsConfigurationOutput] from a [payload] and [response].
  factory GetBucketMetricsConfigurationOutput.fromResponse(
    _i3.MetricsConfiguration? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetBucketMetricsConfigurationOutput.build((b) {
        if (payload != null) {
          b.metricsConfiguration.replace(payload);
        }
      });

  static const List<_i2.SmithySerializer<_i3.MetricsConfiguration?>>
      serializers = [GetBucketMetricsConfigurationOutputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketMetricsConfigurationOutputBuilder b) {}

  /// Specifies the metrics configuration.
  _i3.MetricsConfiguration? get metricsConfiguration;
  @override
  _i3.MetricsConfiguration? getPayload() => metricsConfiguration;
  @override
  List<Object?> get props => [metricsConfiguration];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketMetricsConfigurationOutput')
          ..add(
            'metricsConfiguration',
            metricsConfiguration,
          );
    return helper.toString();
  }
}

class GetBucketMetricsConfigurationOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<_i3.MetricsConfiguration> {
  const GetBucketMetricsConfigurationOutputRestXmlSerializer()
      : super('GetBucketMetricsConfigurationOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketMetricsConfigurationOutput,
        _$GetBucketMetricsConfigurationOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i3.MetricsConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i3.MetricsConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Filter':
          result.filter = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.MetricsFilter),
          ) as _i4.MetricsFilter);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i3.MetricsConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'MetricsConfiguration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final _i3.MetricsConfiguration(:id, :filter) = object;
    result$
      ..add(const _i2.XmlElementName('Id'))
      ..add(serializers.serialize(
        id,
        specifiedType: const FullType(String),
      ));
    if (filter != null) {
      result$
        ..add(const _i2.XmlElementName('Filter'))
        ..add(serializers.serialize(
          filter,
          specifiedType: const FullType(_i4.MetricsFilter),
        ));
    }
    return result$;
  }
}
