// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.get_bucket_analytics_configuration_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/analytics_configuration.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/analytics_filter.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/storage_class_analysis.dart'
    as _i5;

part 'get_bucket_analytics_configuration_output.g.dart';

abstract class GetBucketAnalyticsConfigurationOutput
    with
        _i1.AWSEquatable<GetBucketAnalyticsConfigurationOutput>
    implements
        Built<GetBucketAnalyticsConfigurationOutput,
            GetBucketAnalyticsConfigurationOutputBuilder>,
        _i2.HasPayload<_i3.AnalyticsConfiguration> {
  factory GetBucketAnalyticsConfigurationOutput(
      {_i3.AnalyticsConfiguration? analyticsConfiguration}) {
    return _$GetBucketAnalyticsConfigurationOutput._(
        analyticsConfiguration: analyticsConfiguration);
  }

  factory GetBucketAnalyticsConfigurationOutput.build(
      [void Function(GetBucketAnalyticsConfigurationOutputBuilder)
          updates]) = _$GetBucketAnalyticsConfigurationOutput;

  const GetBucketAnalyticsConfigurationOutput._();

  /// Constructs a [GetBucketAnalyticsConfigurationOutput] from a [payload] and [response].
  factory GetBucketAnalyticsConfigurationOutput.fromResponse(
    _i3.AnalyticsConfiguration? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetBucketAnalyticsConfigurationOutput.build((b) {
        if (payload != null) {
          b.analyticsConfiguration.replace(payload);
        }
      });

  static const List<_i2.SmithySerializer<_i3.AnalyticsConfiguration?>>
      serializers = [GetBucketAnalyticsConfigurationOutputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketAnalyticsConfigurationOutputBuilder b) {}

  /// The configuration and any analyses for the analytics filter.
  _i3.AnalyticsConfiguration? get analyticsConfiguration;
  @override
  _i3.AnalyticsConfiguration? getPayload() => analyticsConfiguration;
  @override
  List<Object?> get props => [analyticsConfiguration];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketAnalyticsConfigurationOutput')
          ..add(
            'analyticsConfiguration',
            analyticsConfiguration,
          );
    return helper.toString();
  }
}

class GetBucketAnalyticsConfigurationOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<_i3.AnalyticsConfiguration> {
  const GetBucketAnalyticsConfigurationOutputRestXmlSerializer()
      : super('GetBucketAnalyticsConfigurationOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketAnalyticsConfigurationOutput,
        _$GetBucketAnalyticsConfigurationOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i3.AnalyticsConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i3.AnalyticsConfigurationBuilder();
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
            specifiedType: const FullType(_i4.AnalyticsFilter),
          ) as _i4.AnalyticsFilter);
        case 'StorageClassAnalysis':
          result.storageClassAnalysis.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.StorageClassAnalysis),
          ) as _i5.StorageClassAnalysis));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i3.AnalyticsConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AnalyticsConfiguration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final _i3.AnalyticsConfiguration(:id, :filter, :storageClassAnalysis) =
        object;
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
          specifiedType: const FullType(_i4.AnalyticsFilter),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('StorageClassAnalysis'))
      ..add(serializers.serialize(
        storageClassAnalysis,
        specifiedType: const FullType(_i5.StorageClassAnalysis),
      ));
    return result$;
  }
}
