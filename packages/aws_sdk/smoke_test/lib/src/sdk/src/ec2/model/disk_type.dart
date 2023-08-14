// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disk_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DiskType extends _i1.SmithyEnum<DiskType> {
  const DiskType._(
    super.index,
    super.name,
    super.value,
  );

  const DiskType._sdkUnknown(super.value) : super.sdkUnknown();

  static const hdd = DiskType._(
    0,
    'hdd',
    'hdd',
  );

  static const ssd = DiskType._(
    1,
    'ssd',
    'ssd',
  );

  /// All values of [DiskType].
  static const values = <DiskType>[
    DiskType.hdd,
    DiskType.ssd,
  ];

  static const List<_i1.SmithySerializer<DiskType>> serializers = [
    _i1.SmithyEnumSerializer(
      'DiskType',
      values: values,
      sdkUnknown: DiskType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension DiskTypeHelpers on List<DiskType> {
  /// Returns the value of [DiskType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DiskType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DiskType] whose value matches [value].
  DiskType byValue(String value) => firstWhere((el) => el.value == value);
}
