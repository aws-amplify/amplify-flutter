// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.target_capacity_unit_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TargetCapacityUnitType extends _i1.SmithyEnum<TargetCapacityUnitType> {
  const TargetCapacityUnitType._(
    super.index,
    super.name,
    super.value,
  );

  const TargetCapacityUnitType._sdkUnknown(super.value) : super.sdkUnknown();

  static const memoryMib = TargetCapacityUnitType._(
    0,
    'MEMORY_MIB',
    'memory-mib',
  );

  static const units = TargetCapacityUnitType._(
    1,
    'UNITS',
    'units',
  );

  static const vcpu = TargetCapacityUnitType._(
    2,
    'VCPU',
    'vcpu',
  );

  /// All values of [TargetCapacityUnitType].
  static const values = <TargetCapacityUnitType>[
    TargetCapacityUnitType.memoryMib,
    TargetCapacityUnitType.units,
    TargetCapacityUnitType.vcpu,
  ];

  static const List<_i1.SmithySerializer<TargetCapacityUnitType>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'TargetCapacityUnitType',
      values: values,
      sdkUnknown: TargetCapacityUnitType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TargetCapacityUnitTypeHelpers on List<TargetCapacityUnitType> {
  /// Returns the value of [TargetCapacityUnitType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TargetCapacityUnitType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TargetCapacityUnitType] whose value matches [value].
  TargetCapacityUnitType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
