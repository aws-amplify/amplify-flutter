// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.period_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class PeriodType extends _i1.SmithyEnum<PeriodType> {
  const PeriodType._(
    super.index,
    super.name,
    super.value,
  );

  const PeriodType._sdkUnknown(super.value) : super.sdkUnknown();

  static const fifteenMinutes = PeriodType._(
    0,
    'fifteen_minutes',
    'fifteen-minutes',
  );

  static const fiveMinutes = PeriodType._(
    1,
    'five_minutes',
    'five-minutes',
  );

  static const oneDay = PeriodType._(
    2,
    'one_day',
    'one-day',
  );

  static const oneHour = PeriodType._(
    3,
    'one_hour',
    'one-hour',
  );

  static const oneWeek = PeriodType._(
    4,
    'one_week',
    'one-week',
  );

  static const threeHours = PeriodType._(
    5,
    'three_hours',
    'three-hours',
  );

  /// All values of [PeriodType].
  static const values = <PeriodType>[
    PeriodType.fifteenMinutes,
    PeriodType.fiveMinutes,
    PeriodType.oneDay,
    PeriodType.oneHour,
    PeriodType.oneWeek,
    PeriodType.threeHours,
  ];

  static const List<_i1.SmithySerializer<PeriodType>> serializers = [
    _i1.SmithyEnumSerializer(
      'PeriodType',
      values: values,
      sdkUnknown: PeriodType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension PeriodTypeHelpers on List<PeriodType> {
  /// Returns the value of [PeriodType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PeriodType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PeriodType] whose value matches [value].
  PeriodType byValue(String value) => firstWhere((el) => el.value == value);
}
