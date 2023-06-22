// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_integration_test.cognito_identity_provider.model.risk_decision_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RiskDecisionType extends _i1.SmithyEnum<RiskDecisionType> {
  const RiskDecisionType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const RiskDecisionType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const accountTakeover = RiskDecisionType._(
    0,
    'AccountTakeover',
    'AccountTakeover',
  );

  static const block = RiskDecisionType._(
    1,
    'Block',
    'Block',
  );

  static const noRisk = RiskDecisionType._(
    2,
    'NoRisk',
    'NoRisk',
  );

  /// All values of [RiskDecisionType].
  static const values = <RiskDecisionType>[
    RiskDecisionType.accountTakeover,
    RiskDecisionType.block,
    RiskDecisionType.noRisk,
  ];

  static const List<_i1.SmithySerializer<RiskDecisionType>> serializers = [
    _i1.SmithyEnumSerializer(
      'RiskDecisionType',
      values: values,
      sdkUnknown: RiskDecisionType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension RiskDecisionTypeHelpers on List<RiskDecisionType> {
  /// Returns the value of [RiskDecisionType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RiskDecisionType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RiskDecisionType] whose value matches [value].
  RiskDecisionType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
