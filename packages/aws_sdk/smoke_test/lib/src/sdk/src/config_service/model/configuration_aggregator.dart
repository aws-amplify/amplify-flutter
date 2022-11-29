// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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
    List<_i2.AccountAggregationSource>? accountAggregationSources,
    String? configurationAggregatorArn,
    String? configurationAggregatorName,
    String? createdBy,
    DateTime? creationTime,
    DateTime? lastUpdatedTime,
    _i3.OrganizationAggregationSource? organizationAggregationSource,
  }) {
    return _$ConfigurationAggregator._(
      accountAggregationSources: accountAggregationSources == null
          ? null
          : _i4.BuiltList(accountAggregationSources),
      configurationAggregatorArn: configurationAggregatorArn,
      configurationAggregatorName: configurationAggregatorName,
      createdBy: createdBy,
      creationTime: creationTime,
      lastUpdatedTime: lastUpdatedTime,
      organizationAggregationSource: organizationAggregationSource,
    );
  }

  /// The details about the configuration aggregator, including information about source accounts, regions, and metadata of the aggregator.
  factory ConfigurationAggregator.build(
          [void Function(ConfigurationAggregatorBuilder) updates]) =
      _$ConfigurationAggregator;

  const ConfigurationAggregator._();

  static const List<_i5.SmithySerializer> serializers = [
    ConfigurationAggregatorAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfigurationAggregatorBuilder b) {}

  /// Provides a list of source accounts and regions to be aggregated.
  _i4.BuiltList<_i2.AccountAggregationSource>? get accountAggregationSources;

  /// The Amazon Resource Name (ARN) of the aggregator.
  String? get configurationAggregatorArn;

  /// The name of the aggregator.
  String? get configurationAggregatorName;

  /// Amazon Web Services service that created the configuration aggregator.
  String? get createdBy;

  /// The time stamp when the configuration aggregator was created.
  DateTime? get creationTime;

  /// The time of the last update.
  DateTime? get lastUpdatedTime;

  /// Provides an organization and list of regions to be aggregated.
  _i3.OrganizationAggregationSource? get organizationAggregationSource;
  @override
  List<Object?> get props => [
        accountAggregationSources,
        configurationAggregatorArn,
        configurationAggregatorName,
        createdBy,
        creationTime,
        lastUpdatedTime,
        organizationAggregationSource,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfigurationAggregator');
    helper.add(
      'accountAggregationSources',
      accountAggregationSources,
    );
    helper.add(
      'configurationAggregatorArn',
      configurationAggregatorArn,
    );
    helper.add(
      'configurationAggregatorName',
      configurationAggregatorName,
    );
    helper.add(
      'createdBy',
      createdBy,
    );
    helper.add(
      'creationTime',
      creationTime,
    );
    helper.add(
      'lastUpdatedTime',
      lastUpdatedTime,
    );
    helper.add(
      'organizationAggregationSource',
      organizationAggregationSource,
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
      switch (key) {
        case 'AccountAggregationSources':
          if (value != null) {
            result.accountAggregationSources.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.AccountAggregationSource)],
              ),
            ) as _i4.BuiltList<_i2.AccountAggregationSource>));
          }
          break;
        case 'ConfigurationAggregatorArn':
          if (value != null) {
            result.configurationAggregatorArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ConfigurationAggregatorName':
          if (value != null) {
            result.configurationAggregatorName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'CreatedBy':
          if (value != null) {
            result.createdBy = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'CreationTime':
          if (value != null) {
            result.creationTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'LastUpdatedTime':
          if (value != null) {
            result.lastUpdatedTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'OrganizationAggregationSource':
          if (value != null) {
            result.organizationAggregationSource
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.OrganizationAggregationSource),
            ) as _i3.OrganizationAggregationSource));
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
    final payload = (object as ConfigurationAggregator);
    final result = <Object?>[];
    if (payload.accountAggregationSources != null) {
      result
        ..add('AccountAggregationSources')
        ..add(serializers.serialize(
          payload.accountAggregationSources!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i2.AccountAggregationSource)],
          ),
        ));
    }
    if (payload.configurationAggregatorArn != null) {
      result
        ..add('ConfigurationAggregatorArn')
        ..add(serializers.serialize(
          payload.configurationAggregatorArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.configurationAggregatorName != null) {
      result
        ..add('ConfigurationAggregatorName')
        ..add(serializers.serialize(
          payload.configurationAggregatorName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.createdBy != null) {
      result
        ..add('CreatedBy')
        ..add(serializers.serialize(
          payload.createdBy!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.creationTime != null) {
      result
        ..add('CreationTime')
        ..add(serializers.serialize(
          payload.creationTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.lastUpdatedTime != null) {
      result
        ..add('LastUpdatedTime')
        ..add(serializers.serialize(
          payload.lastUpdatedTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.organizationAggregationSource != null) {
      result
        ..add('OrganizationAggregationSource')
        ..add(serializers.serialize(
          payload.organizationAggregationSource!,
          specifiedType: const FullType(_i3.OrganizationAggregationSource),
        ));
    }
    return result;
  }
}
