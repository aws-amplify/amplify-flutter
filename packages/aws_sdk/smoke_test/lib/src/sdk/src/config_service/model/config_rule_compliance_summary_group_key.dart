// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.config_rule_compliance_summary_group_key; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ConfigRuleComplianceSummaryGroupKey
    extends _i1.SmithyEnum<ConfigRuleComplianceSummaryGroupKey> {
  const ConfigRuleComplianceSummaryGroupKey._(
    super.index,
    super.name,
    super.value,
  );

  const ConfigRuleComplianceSummaryGroupKey._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const accountId = ConfigRuleComplianceSummaryGroupKey._(
    0,
    'ACCOUNT_ID',
    'ACCOUNT_ID',
  );

  static const awsRegion = ConfigRuleComplianceSummaryGroupKey._(
    1,
    'AWS_REGION',
    'AWS_REGION',
  );

  /// All values of [ConfigRuleComplianceSummaryGroupKey].
  static const values = <ConfigRuleComplianceSummaryGroupKey>[
    ConfigRuleComplianceSummaryGroupKey.accountId,
    ConfigRuleComplianceSummaryGroupKey.awsRegion,
  ];

  static const List<_i1.SmithySerializer<ConfigRuleComplianceSummaryGroupKey>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ConfigRuleComplianceSummaryGroupKey',
      values: values,
      sdkUnknown: ConfigRuleComplianceSummaryGroupKey._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension ConfigRuleComplianceSummaryGroupKeyHelpers
    on List<ConfigRuleComplianceSummaryGroupKey> {
  /// Returns the value of [ConfigRuleComplianceSummaryGroupKey] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ConfigRuleComplianceSummaryGroupKey byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ConfigRuleComplianceSummaryGroupKey] whose value matches [value].
  ConfigRuleComplianceSummaryGroupKey byValue(String value) =>
      firstWhere((el) => el.value == value);
}
