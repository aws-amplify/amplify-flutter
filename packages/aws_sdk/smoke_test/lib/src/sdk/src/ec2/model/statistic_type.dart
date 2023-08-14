// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.statistic_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class StatisticType extends _i1.SmithyEnum<StatisticType> {
  const StatisticType._(
    super.index,
    super.name,
    super.value,
  );

  const StatisticType._sdkUnknown(super.value) : super.sdkUnknown();

  static const p50 = StatisticType._(
    0,
    'p50',
    'p50',
  );

  /// All values of [StatisticType].
  static const values = <StatisticType>[StatisticType.p50];

  static const List<_i1.SmithySerializer<StatisticType>> serializers = [
    _i1.SmithyEnumSerializer(
      'StatisticType',
      values: values,
      sdkUnknown: StatisticType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension StatisticTypeHelpers on List<StatisticType> {
  /// Returns the value of [StatisticType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  StatisticType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [StatisticType] whose value matches [value].
  StatisticType byValue(String value) => firstWhere((el) => el.value == value);
}
