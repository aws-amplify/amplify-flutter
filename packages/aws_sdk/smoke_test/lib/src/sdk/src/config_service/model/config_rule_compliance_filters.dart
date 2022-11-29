// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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
    String? accountId,
    String? awsRegion,
    _i2.ComplianceType? complianceType,
    String? configRuleName,
  }) {
    return _$ConfigRuleComplianceFilters._(
      accountId: accountId,
      awsRegion: awsRegion,
      complianceType: complianceType,
      configRuleName: configRuleName,
    );
  }

  /// Filters the compliance results based on account ID, region, compliance type, and rule name.
  factory ConfigRuleComplianceFilters.build(
          [void Function(ConfigRuleComplianceFiltersBuilder) updates]) =
      _$ConfigRuleComplianceFilters;

  const ConfigRuleComplianceFilters._();

  static const List<_i3.SmithySerializer> serializers = [
    ConfigRuleComplianceFiltersAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfigRuleComplianceFiltersBuilder b) {}

  /// The 12-digit account ID of the source account.
  String? get accountId;

  /// The source region where the data is aggregated.
  String? get awsRegion;

  /// The rule compliance status.
  ///
  /// For the `ConfigRuleComplianceFilters` data type, Config supports only `COMPLIANT` and `NON_COMPLIANT`. Config does not support the `NOT_APPLICABLE` and the `INSUFFICIENT_DATA` values.
  _i2.ComplianceType? get complianceType;

  /// The name of the Config rule.
  String? get configRuleName;
  @override
  List<Object?> get props => [
        accountId,
        awsRegion,
        complianceType,
        configRuleName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfigRuleComplianceFilters');
    helper.add(
      'accountId',
      accountId,
    );
    helper.add(
      'awsRegion',
      awsRegion,
    );
    helper.add(
      'complianceType',
      complianceType,
    );
    helper.add(
      'configRuleName',
      configRuleName,
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
      switch (key) {
        case 'AccountId':
          if (value != null) {
            result.accountId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'AwsRegion':
          if (value != null) {
            result.awsRegion = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ComplianceType':
          if (value != null) {
            result.complianceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ComplianceType),
            ) as _i2.ComplianceType);
          }
          break;
        case 'ConfigRuleName':
          if (value != null) {
            result.configRuleName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as ConfigRuleComplianceFilters);
    final result = <Object?>[];
    if (payload.accountId != null) {
      result
        ..add('AccountId')
        ..add(serializers.serialize(
          payload.accountId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.awsRegion != null) {
      result
        ..add('AwsRegion')
        ..add(serializers.serialize(
          payload.awsRegion!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.complianceType != null) {
      result
        ..add('ComplianceType')
        ..add(serializers.serialize(
          payload.complianceType!,
          specifiedType: const FullType(_i2.ComplianceType),
        ));
    }
    if (payload.configRuleName != null) {
      result
        ..add('ConfigRuleName')
        ..add(serializers.serialize(
          payload.configRuleName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
