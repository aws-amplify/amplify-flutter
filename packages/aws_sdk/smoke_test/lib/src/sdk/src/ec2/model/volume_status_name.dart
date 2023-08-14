// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.volume_status_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VolumeStatusName extends _i1.SmithyEnum<VolumeStatusName> {
  const VolumeStatusName._(
    super.index,
    super.name,
    super.value,
  );

  const VolumeStatusName._sdkUnknown(super.value) : super.sdkUnknown();

  static const ioEnabled = VolumeStatusName._(
    0,
    'io_enabled',
    'io-enabled',
  );

  static const ioPerformance = VolumeStatusName._(
    1,
    'io_performance',
    'io-performance',
  );

  /// All values of [VolumeStatusName].
  static const values = <VolumeStatusName>[
    VolumeStatusName.ioEnabled,
    VolumeStatusName.ioPerformance,
  ];

  static const List<_i1.SmithySerializer<VolumeStatusName>> serializers = [
    _i1.SmithyEnumSerializer(
      'VolumeStatusName',
      values: values,
      sdkUnknown: VolumeStatusName._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VolumeStatusNameHelpers on List<VolumeStatusName> {
  /// Returns the value of [VolumeStatusName] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VolumeStatusName byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VolumeStatusName] whose value matches [value].
  VolumeStatusName byValue(String value) =>
      firstWhere((el) => el.value == value);
}
