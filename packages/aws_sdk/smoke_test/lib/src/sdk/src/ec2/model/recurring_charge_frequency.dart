// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.recurring_charge_frequency; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RecurringChargeFrequency
    extends _i1.SmithyEnum<RecurringChargeFrequency> {
  const RecurringChargeFrequency._(
    super.index,
    super.name,
    super.value,
  );

  const RecurringChargeFrequency._sdkUnknown(super.value) : super.sdkUnknown();

  static const hourly = RecurringChargeFrequency._(
    0,
    'Hourly',
    'Hourly',
  );

  /// All values of [RecurringChargeFrequency].
  static const values = <RecurringChargeFrequency>[
    RecurringChargeFrequency.hourly
  ];

  static const List<_i1.SmithySerializer<RecurringChargeFrequency>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'RecurringChargeFrequency',
      values: values,
      sdkUnknown: RecurringChargeFrequency._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension RecurringChargeFrequencyHelpers on List<RecurringChargeFrequency> {
  /// Returns the value of [RecurringChargeFrequency] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RecurringChargeFrequency byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RecurringChargeFrequency] whose value matches [value].
  RecurringChargeFrequency byValue(String value) =>
      firstWhere((el) => el.value == value);
}
