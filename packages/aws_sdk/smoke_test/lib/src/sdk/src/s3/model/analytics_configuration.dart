// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.analytics_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/analytics_filter.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/storage_class_analysis.dart'
    as _i3;

part 'analytics_configuration.g.dart';

/// Specifies the configuration and any analyses for the analytics filter of an Amazon S3 bucket.
abstract class AnalyticsConfiguration
    with _i1.AWSEquatable<AnalyticsConfiguration>
    implements Built<AnalyticsConfiguration, AnalyticsConfigurationBuilder> {
  /// Specifies the configuration and any analyses for the analytics filter of an Amazon S3 bucket.
  factory AnalyticsConfiguration({
    _i2.AnalyticsFilter? filter,
    required String id,
    required _i3.StorageClassAnalysis storageClassAnalysis,
  }) {
    return _$AnalyticsConfiguration._(
      filter: filter,
      id: id,
      storageClassAnalysis: storageClassAnalysis,
    );
  }

  /// Specifies the configuration and any analyses for the analytics filter of an Amazon S3 bucket.
  factory AnalyticsConfiguration.build(
          [void Function(AnalyticsConfigurationBuilder) updates]) =
      _$AnalyticsConfiguration;

  const AnalyticsConfiguration._();

  static const List<_i4.SmithySerializer> serializers = [
    AnalyticsConfigurationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AnalyticsConfigurationBuilder b) {}

  /// The filter used to describe a set of objects for analyses. A filter must have exactly one prefix, one tag, or one conjunction (AnalyticsAndOperator). If no filter is provided, all objects will be considered in any analysis.
  _i2.AnalyticsFilter? get filter;

  /// The ID that identifies the analytics configuration.
  String get id;

  /// Contains data related to access patterns to be collected and made available to analyze the tradeoffs between different storage classes.
  _i3.StorageClassAnalysis get storageClassAnalysis;
  @override
  List<Object?> get props => [
        filter,
        id,
        storageClassAnalysis,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AnalyticsConfiguration');
    helper.add(
      'filter',
      filter,
    );
    helper.add(
      'id',
      id,
    );
    helper.add(
      'storageClassAnalysis',
      storageClassAnalysis,
    );
    return helper.toString();
  }
}

class AnalyticsConfigurationRestXmlSerializer
    extends _i4.StructuredSmithySerializer<AnalyticsConfiguration> {
  const AnalyticsConfigurationRestXmlSerializer()
      : super('AnalyticsConfiguration');

  @override
  Iterable<Type> get types => const [
        AnalyticsConfiguration,
        _$AnalyticsConfiguration,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Filter':
          if (value != null) {
            result.filter = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalyticsFilter),
            ) as _i2.AnalyticsFilter);
          }
          break;
        case 'Id':
          result.id = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'StorageClassAnalysis':
          result.storageClassAnalysis.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.StorageClassAnalysis),
          ) as _i3.StorageClassAnalysis));
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
    final payload = (object as AnalyticsConfiguration);
    final result = <Object?>[
      const _i4.XmlElementName(
        'AnalyticsConfiguration',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.filter != null) {
      result
        ..add(const _i4.XmlElementName('Filter'))
        ..add(serializers.serialize(
          payload.filter!,
          specifiedType: const FullType(_i2.AnalyticsFilter),
        ));
    }
    result
      ..add(const _i4.XmlElementName('Id'))
      ..add(serializers.serialize(
        payload.id,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i4.XmlElementName('StorageClassAnalysis'))
      ..add(serializers.serialize(
        payload.storageClassAnalysis,
        specifiedType: const FullType(_i3.StorageClassAnalysis),
      ));
    return result;
  }
}
