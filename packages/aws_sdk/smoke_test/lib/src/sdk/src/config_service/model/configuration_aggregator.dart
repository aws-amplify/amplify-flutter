// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.configuration_aggregator; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/account_aggregation_source.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_aggregation_source.dart'
    as _i3;

part 'configuration_aggregator.g.dart';

/// The details about the configuration aggregator, including information about source accounts, regions, and metadata of the aggregator.
abstract class ConfigurationAggregator
    with _i1.AWSEquatable<ConfigurationAggregator>
    implements Built<ConfigurationAggregator, ConfigurationAggregatorBuilder> {
  /// The details about the configuration aggregator, including information about source accounts, regions, and metadata of the aggregator.
  factory ConfigurationAggregator({
    String? configurationAggregatorName,
    String? configurationAggregatorArn,
    List<_i2.AccountAggregationSource>? accountAggregationSources,
    _i3.OrganizationAggregationSource? organizationAggregationSource,
    DateTime? creationTime,
    DateTime? lastUpdatedTime,
    String? createdBy,
  }) {
    return _$ConfigurationAggregator._(
      configurationAggregatorName: configurationAggregatorName,
      configurationAggregatorArn: configurationAggregatorArn,
      accountAggregationSources: accountAggregationSources == null
          ? null
          : _i4.BuiltList(accountAggregationSources),
      organizationAggregationSource: organizationAggregationSource,
      creationTime: creationTime,
      lastUpdatedTime: lastUpdatedTime,
      createdBy: createdBy,
    );
  }

  /// The details about the configuration aggregator, including information about source accounts, regions, and metadata of the aggregator.
  factory ConfigurationAggregator.build(
          [void Function(ConfigurationAggregatorBuilder) updates]) =
      _$ConfigurationAggregator;

  const ConfigurationAggregator._();

  static const List<_i5.SmithySerializer<ConfigurationAggregator>> serializers =
      [ConfigurationAggregatorAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfigurationAggregatorBuilder b) {}

  /// The name of the aggregator.
  String? get configurationAggregatorName;

  /// The Amazon Resource Name (ARN) of the aggregator.
  String? get configurationAggregatorArn;

  /// Provides a list of source accounts and regions to be aggregated.
  _i4.BuiltList<_i2.AccountAggregationSource>? get accountAggregationSources;

  /// Provides an organization and list of regions to be aggregated.
  _i3.OrganizationAggregationSource? get organizationAggregationSource;

  /// The time stamp when the configuration aggregator was created.
  DateTime? get creationTime;

  /// The time of the last update.
  DateTime? get lastUpdatedTime;

  /// Amazon Web Services service that created the configuration aggregator.
  String? get createdBy;
  @override
  List<Object?> get props => [
        configurationAggregatorName,
        configurationAggregatorArn,
        accountAggregationSources,
        organizationAggregationSource,
        creationTime,
        lastUpdatedTime,
        createdBy,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfigurationAggregator')
      ..add(
        'configurationAggregatorName',
        configurationAggregatorName,
      )
      ..add(
        'configurationAggregatorArn',
        configurationAggregatorArn,
      )
      ..add(
        'accountAggregationSources',
        accountAggregationSources,
      )
      ..add(
        'organizationAggregationSource',
        organizationAggregationSource,
      )
      ..add(
        'creationTime',
        creationTime,
      )
      ..add(
        'lastUpdatedTime',
        lastUpdatedTime,
      )
      ..add(
        'createdBy',
        createdBy,
      );
    return helper.toString();
  }
}

class ConfigurationAggregatorAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<ConfigurationAggregator> {
  const ConfigurationAggregatorAwsJson11Serializer()
      : super('ConfigurationAggregator');

  @override
  Iterable<Type> get types => const [
        ConfigurationAggregator,
        _$ConfigurationAggregator,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConfigurationAggregator deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfigurationAggregatorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigurationAggregatorName':
          result.configurationAggregatorName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConfigurationAggregatorArn':
          result.configurationAggregatorArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AccountAggregationSources':
          result.accountAggregationSources.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i2.AccountAggregationSource)],
            ),
          ) as _i4.BuiltList<_i2.AccountAggregationSource>));
        case 'OrganizationAggregationSource':
          result.organizationAggregationSource.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.OrganizationAggregationSource),
          ) as _i3.OrganizationAggregationSource));
        case 'CreationTime':
          result.creationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'LastUpdatedTime':
          result.lastUpdatedTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'CreatedBy':
          result.createdBy = (serializers.deserialize(
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
    ConfigurationAggregator object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConfigurationAggregator(
      :configurationAggregatorName,
      :configurationAggregatorArn,
      :accountAggregationSources,
      :organizationAggregationSource,
      :creationTime,
      :lastUpdatedTime,
      :createdBy
    ) = object;
    if (configurationAggregatorName != null) {
      result$
        ..add('ConfigurationAggregatorName')
        ..add(serializers.serialize(
          configurationAggregatorName,
          specifiedType: const FullType(String),
        ));
    }
    if (configurationAggregatorArn != null) {
      result$
        ..add('ConfigurationAggregatorArn')
        ..add(serializers.serialize(
          configurationAggregatorArn,
          specifiedType: const FullType(String),
        ));
    }
    if (accountAggregationSources != null) {
      result$
        ..add('AccountAggregationSources')
        ..add(serializers.serialize(
          accountAggregationSources,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i2.AccountAggregationSource)],
          ),
        ));
    }
    if (organizationAggregationSource != null) {
      result$
        ..add('OrganizationAggregationSource')
        ..add(serializers.serialize(
          organizationAggregationSource,
          specifiedType: const FullType(_i3.OrganizationAggregationSource),
        ));
    }
    if (creationTime != null) {
      result$
        ..add('CreationTime')
        ..add(serializers.serialize(
          creationTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (lastUpdatedTime != null) {
      result$
        ..add('LastUpdatedTime')
        ..add(serializers.serialize(
          lastUpdatedTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (createdBy != null) {
      result$
        ..add('CreatedBy')
        ..add(serializers.serialize(
          createdBy,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
