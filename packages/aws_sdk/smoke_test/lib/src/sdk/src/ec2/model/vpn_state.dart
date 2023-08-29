// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vpn_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VpnState extends _i1.SmithyEnum<VpnState> {
  const VpnState._(
    super.index,
    super.name,
    super.value,
  );

  const VpnState._sdkUnknown(super.value) : super.sdkUnknown();

  static const available = VpnState._(
    0,
    'available',
    'available',
  );

  static const deleted = VpnState._(
    1,
    'deleted',
    'deleted',
  );

  static const deleting = VpnState._(
    2,
    'deleting',
    'deleting',
  );

  static const pending = VpnState._(
    3,
    'pending',
    'pending',
  );

  /// All values of [VpnState].
  static const values = <VpnState>[
    VpnState.available,
    VpnState.deleted,
    VpnState.deleting,
    VpnState.pending,
  ];

  static const List<_i1.SmithySerializer<VpnState>> serializers = [
    _i1.SmithyEnumSerializer(
      'VpnState',
      values: values,
      sdkUnknown: VpnState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VpnStateHelpers on List<VpnState> {
  /// Returns the value of [VpnState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VpnState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VpnState] whose value matches [value].
  VpnState byValue(String value) => firstWhere((el) => el.value == value);
}
