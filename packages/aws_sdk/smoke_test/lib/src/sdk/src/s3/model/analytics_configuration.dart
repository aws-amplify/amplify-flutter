// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.analytics_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/analytics_filter.dart';
import 'package:smoke_test/src/sdk/src/s3/model/storage_class_analysis.dart';

part 'analytics_configuration.g.dart';

/// Specifies the configuration and any analyses for the analytics filter of an Amazon S3 bucket.
abstract class AnalyticsConfiguration
    with _i1.AWSEquatable<AnalyticsConfiguration>
    implements Built<AnalyticsConfiguration, AnalyticsConfigurationBuilder> {
  /// Specifies the configuration and any analyses for the analytics filter of an Amazon S3 bucket.
  factory AnalyticsConfiguration({
    required String id,
    AnalyticsFilter? filter,
    required StorageClassAnalysis storageClassAnalysis,
  }) {
    return _$AnalyticsConfiguration._(
      id: id,
      filter: filter,
      storageClassAnalysis: storageClassAnalysis,
    );
  }

  /// Specifies the configuration and any analyses for the analytics filter of an Amazon S3 bucket.
  factory AnalyticsConfiguration.build(
          [void Function(AnalyticsConfigurationBuilder) updates]) =
      _$AnalyticsConfiguration;

  const AnalyticsConfiguration._();

  static const List<_i2.SmithySerializer<AnalyticsConfiguration>> serializers =
      [AnalyticsConfigurationRestXmlSerializer()];

  /// The ID that identifies the analytics configuration.
  String get id;

  /// The filter used to describe a set of objects for analyses. A filter must have exactly one prefix, one tag, or one conjunction (AnalyticsAndOperator). If no filter is provided, all objects will be considered in any analysis.
  AnalyticsFilter? get filter;

  /// Contains data related to access patterns to be collected and made available to analyze the tradeoffs between different storage classes.
  StorageClassAnalysis get storageClassAnalysis;
  @override
  List<Object?> get props => [
        id,
        filter,
        storageClassAnalysis,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AnalyticsConfiguration')
      ..add(
        'id',
        id,
      )
      ..add(
        'filter',
        filter,
      )
      ..add(
        'storageClassAnalysis',
        storageClassAnalysis,
      );
    return helper.toString();
  }
}

class AnalyticsConfigurationRestXmlSerializer
    extends _i2.StructuredSmithySerializer<AnalyticsConfiguration> {
  const AnalyticsConfigurationRestXmlSerializer()
      : super('AnalyticsConfiguration');

  @override
  Iterable<Type> get types => const [
        AnalyticsConfiguration,
        _$AnalyticsConfiguration,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  AnalyticsConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalyticsConfigurationBuilder();
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
            specifiedType: const FullType(AnalyticsFilter),
          ) as AnalyticsFilter);
        case 'Id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StorageClassAnalysis':
          result.storageClassAnalysis.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(StorageClassAnalysis),
          ) as StorageClassAnalysis));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AnalyticsConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AnalyticsConfiguration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final AnalyticsConfiguration(:filter, :id, :storageClassAnalysis) = object;
    if (filter != null) {
      result$
        ..add(const _i2.XmlElementName('Filter'))
        ..add(serializers.serialize(
          filter,
          specifiedType: const FullType(AnalyticsFilter),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('Id'))
      ..add(serializers.serialize(
        id,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('StorageClassAnalysis'))
      ..add(serializers.serialize(
        storageClassAnalysis,
        specifiedType: const FullType(StorageClassAnalysis),
      ));
    return result$;
  }
}
