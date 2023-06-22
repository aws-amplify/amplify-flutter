// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.config_rule_compliance_filters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_type.dart'
    as _i2;

part 'config_rule_compliance_filters.g.dart';

/// Filters the compliance results based on account ID, region, compliance type, and rule name.
abstract class ConfigRuleComplianceFilters
    with _i1.AWSEquatable<ConfigRuleComplianceFilters>
    implements
        Built<ConfigRuleComplianceFilters, ConfigRuleComplianceFiltersBuilder> {
  /// Filters the compliance results based on account ID, region, compliance type, and rule name.
  factory ConfigRuleComplianceFilters({
    String? configRuleName,
    _i2.ComplianceType? complianceType,
    String? accountId,
    String? awsRegion,
  }) {
    return _$ConfigRuleComplianceFilters._(
      configRuleName: configRuleName,
      complianceType: complianceType,
      accountId: accountId,
      awsRegion: awsRegion,
    );
  }

  /// Filters the compliance results based on account ID, region, compliance type, and rule name.
  factory ConfigRuleComplianceFilters.build(
          [void Function(ConfigRuleComplianceFiltersBuilder) updates]) =
      _$ConfigRuleComplianceFilters;

  const ConfigRuleComplianceFilters._();

  static const List<_i3.SmithySerializer<ConfigRuleComplianceFilters>>
      serializers = [ConfigRuleComplianceFiltersAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfigRuleComplianceFiltersBuilder b) {}

  /// The name of the Config rule.
  String? get configRuleName;

  /// The rule compliance status.
  ///
  /// For the `ConfigRuleComplianceFilters` data type, Config supports only `COMPLIANT` and `NON_COMPLIANT`. Config does not support the `NOT_APPLICABLE` and the `INSUFFICIENT_DATA` values.
  _i2.ComplianceType? get complianceType;

  /// The 12-digit account ID of the source account.
  String? get accountId;

  /// The source region where the data is aggregated.
  String? get awsRegion;
  @override
  List<Object?> get props => [
        configRuleName,
        complianceType,
        accountId,
        awsRegion,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfigRuleComplianceFilters')
      ..add(
        'configRuleName',
        configRuleName,
      )
      ..add(
        'complianceType',
        complianceType,
      )
      ..add(
        'accountId',
        accountId,
      )
      ..add(
        'awsRegion',
        awsRegion,
      );
    return helper.toString();
  }
}

class ConfigRuleComplianceFiltersAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ConfigRuleComplianceFilters> {
  const ConfigRuleComplianceFiltersAwsJson11Serializer()
      : super('ConfigRuleComplianceFilters');

  @override
  Iterable<Type> get types => const [
        ConfigRuleComplianceFilters,
        _$ConfigRuleComplianceFilters,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConfigRuleComplianceFilters deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfigRuleComplianceFiltersBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigRuleName':
          result.configRuleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ComplianceType':
          result.complianceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ComplianceType),
          ) as _i2.ComplianceType);
        case 'AccountId':
          result.accountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AwsRegion':
          result.awsRegion = (serializers.deserialize(
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
    ConfigRuleComplianceFilters object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConfigRuleComplianceFilters(
      :configRuleName,
      :complianceType,
      :accountId,
      :awsRegion
    ) = object;
    if (configRuleName != null) {
      result$
        ..add('ConfigRuleName')
        ..add(serializers.serialize(
          configRuleName,
          specifiedType: const FullType(String),
        ));
    }
    if (complianceType != null) {
      result$
        ..add('ComplianceType')
        ..add(serializers.serialize(
          complianceType,
          specifiedType: const FullType(_i2.ComplianceType),
        ));
    }
    if (accountId != null) {
      result$
        ..add('AccountId')
        ..add(serializers.serialize(
          accountId,
          specifiedType: const FullType(String),
        ));
    }
    if (awsRegion != null) {
      result$
        ..add('AwsRegion')
        ..add(serializers.serialize(
          awsRegion,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
