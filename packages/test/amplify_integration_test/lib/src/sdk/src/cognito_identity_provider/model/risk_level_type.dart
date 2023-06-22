// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_integration_test.cognito_identity_provider.model.risk_level_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RiskLevelType extends _i1.SmithyEnum<RiskLevelType> {
  const RiskLevelType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const RiskLevelType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const high = RiskLevelType._(
    0,
    'High',
    'High',
  );

  static const low = RiskLevelType._(
    1,
    'Low',
    'Low',
  );

  static const medium = RiskLevelType._(
    2,
    'Medium',
    'Medium',
  );

  /// All values of [RiskLevelType].
  static const values = <RiskLevelType>[
    RiskLevelType.high,
    RiskLevelType.low,
    RiskLevelType.medium,
  ];

  static const List<_i1.SmithySerializer<RiskLevelType>> serializers = [
    _i1.SmithyEnumSerializer(
      'RiskLevelType',
      values: values,
      sdkUnknown: RiskLevelType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension RiskLevelTypeHelpers on List<RiskLevelType> {
  /// Returns the value of [RiskLevelType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RiskLevelType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RiskLevelType] whose value matches [value].
  RiskLevelType byValue(String value) => firstWhere((el) => el.value == value);
}
