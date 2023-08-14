// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.partition_load_frequency; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class PartitionLoadFrequency extends _i1.SmithyEnum<PartitionLoadFrequency> {
  const PartitionLoadFrequency._(
    super.index,
    super.name,
    super.value,
  );

  const PartitionLoadFrequency._sdkUnknown(super.value) : super.sdkUnknown();

  static const daily = PartitionLoadFrequency._(
    0,
    'DAILY',
    'daily',
  );

  static const monthly = PartitionLoadFrequency._(
    1,
    'MONTHLY',
    'monthly',
  );

  static const none = PartitionLoadFrequency._(
    2,
    'NONE',
    'none',
  );

  static const weekly = PartitionLoadFrequency._(
    3,
    'WEEKLY',
    'weekly',
  );

  /// All values of [PartitionLoadFrequency].
  static const values = <PartitionLoadFrequency>[
    PartitionLoadFrequency.daily,
    PartitionLoadFrequency.monthly,
    PartitionLoadFrequency.none,
    PartitionLoadFrequency.weekly,
  ];

  static const List<_i1.SmithySerializer<PartitionLoadFrequency>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'PartitionLoadFrequency',
      values: values,
      sdkUnknown: PartitionLoadFrequency._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension PartitionLoadFrequencyHelpers on List<PartitionLoadFrequency> {
  /// Returns the value of [PartitionLoadFrequency] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PartitionLoadFrequency byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PartitionLoadFrequency] whose value matches [value].
  PartitionLoadFrequency byValue(String value) =>
      firstWhere((el) => el.value == value);
}
