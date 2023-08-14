// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.week_day; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class WeekDay extends _i1.SmithyEnum<WeekDay> {
  const WeekDay._(
    super.index,
    super.name,
    super.value,
  );

  const WeekDay._sdkUnknown(super.value) : super.sdkUnknown();

  static const friday = WeekDay._(
    0,
    'friday',
    'friday',
  );

  static const monday = WeekDay._(
    1,
    'monday',
    'monday',
  );

  static const saturday = WeekDay._(
    2,
    'saturday',
    'saturday',
  );

  static const sunday = WeekDay._(
    3,
    'sunday',
    'sunday',
  );

  static const thursday = WeekDay._(
    4,
    'thursday',
    'thursday',
  );

  static const tuesday = WeekDay._(
    5,
    'tuesday',
    'tuesday',
  );

  static const wednesday = WeekDay._(
    6,
    'wednesday',
    'wednesday',
  );

  /// All values of [WeekDay].
  static const values = <WeekDay>[
    WeekDay.friday,
    WeekDay.monday,
    WeekDay.saturday,
    WeekDay.sunday,
    WeekDay.thursday,
    WeekDay.tuesday,
    WeekDay.wednesday,
  ];

  static const List<_i1.SmithySerializer<WeekDay>> serializers = [
    _i1.SmithyEnumSerializer(
      'WeekDay',
      values: values,
      sdkUnknown: WeekDay._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension WeekDayHelpers on List<WeekDay> {
  /// Returns the value of [WeekDay] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  WeekDay byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [WeekDay] whose value matches [value].
  WeekDay byValue(String value) => firstWhere((el) => el.value == value);
}
