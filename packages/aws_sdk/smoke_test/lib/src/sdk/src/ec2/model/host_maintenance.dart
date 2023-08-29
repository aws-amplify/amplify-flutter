// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.host_maintenance; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class HostMaintenance extends _i1.SmithyEnum<HostMaintenance> {
  const HostMaintenance._(
    super.index,
    super.name,
    super.value,
  );

  const HostMaintenance._sdkUnknown(super.value) : super.sdkUnknown();

  static const off = HostMaintenance._(
    0,
    'off',
    'off',
  );

  static const on = HostMaintenance._(
    1,
    'on',
    'on',
  );

  /// All values of [HostMaintenance].
  static const values = <HostMaintenance>[
    HostMaintenance.off,
    HostMaintenance.on,
  ];

  static const List<_i1.SmithySerializer<HostMaintenance>> serializers = [
    _i1.SmithyEnumSerializer(
      'HostMaintenance',
      values: values,
      sdkUnknown: HostMaintenance._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension HostMaintenanceHelpers on List<HostMaintenance> {
  /// Returns the value of [HostMaintenance] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  HostMaintenance byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [HostMaintenance] whose value matches [value].
  HostMaintenance byValue(String value) =>
      firstWhere((el) => el.value == value);
}
