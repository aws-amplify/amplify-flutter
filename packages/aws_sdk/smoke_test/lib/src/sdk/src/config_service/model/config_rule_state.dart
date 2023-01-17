// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.config_rule_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ConfigRuleState extends _i1.SmithyEnum<ConfigRuleState> {
  const ConfigRuleState._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ConfigRuleState._sdkUnknown(String value) : super.sdkUnknown(value);

  static const active = ConfigRuleState._(
    0,
    'ACTIVE',
    'ACTIVE',
  );

  static const deleting = ConfigRuleState._(
    1,
    'DELETING',
    'DELETING',
  );

  static const deletingResults = ConfigRuleState._(
    2,
    'DELETING_RESULTS',
    'DELETING_RESULTS',
  );

  static const evaluating = ConfigRuleState._(
    3,
    'EVALUATING',
    'EVALUATING',
  );

  /// All values of [ConfigRuleState].
  static const values = <ConfigRuleState>[
    ConfigRuleState.active,
    ConfigRuleState.deleting,
    ConfigRuleState.deletingResults,
    ConfigRuleState.evaluating,
  ];

  static const List<_i1.SmithySerializer<ConfigRuleState>> serializers = [
    _i1.SmithyEnumSerializer(
      'ConfigRuleState',
      values: values,
      sdkUnknown: ConfigRuleState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension ConfigRuleStateHelpers on List<ConfigRuleState> {
  /// Returns the value of [ConfigRuleState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ConfigRuleState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ConfigRuleState] whose value matches [value].
  ConfigRuleState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
