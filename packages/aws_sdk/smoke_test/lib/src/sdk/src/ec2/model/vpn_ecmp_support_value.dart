// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vpn_ecmp_support_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VpnEcmpSupportValue extends _i1.SmithyEnum<VpnEcmpSupportValue> {
  const VpnEcmpSupportValue._(
    super.index,
    super.name,
    super.value,
  );

  const VpnEcmpSupportValue._sdkUnknown(super.value) : super.sdkUnknown();

  static const disable = VpnEcmpSupportValue._(
    0,
    'disable',
    'disable',
  );

  static const enable = VpnEcmpSupportValue._(
    1,
    'enable',
    'enable',
  );

  /// All values of [VpnEcmpSupportValue].
  static const values = <VpnEcmpSupportValue>[
    VpnEcmpSupportValue.disable,
    VpnEcmpSupportValue.enable,
  ];

  static const List<_i1.SmithySerializer<VpnEcmpSupportValue>> serializers = [
    _i1.SmithyEnumSerializer(
      'VpnEcmpSupportValue',
      values: values,
      sdkUnknown: VpnEcmpSupportValue._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VpnEcmpSupportValueHelpers on List<VpnEcmpSupportValue> {
  /// Returns the value of [VpnEcmpSupportValue] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VpnEcmpSupportValue byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VpnEcmpSupportValue] whose value matches [value].
  VpnEcmpSupportValue byValue(String value) =>
      firstWhere((el) => el.value == value);
}
