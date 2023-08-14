// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vpn_protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VpnProtocol extends _i1.SmithyEnum<VpnProtocol> {
  const VpnProtocol._(
    super.index,
    super.name,
    super.value,
  );

  const VpnProtocol._sdkUnknown(super.value) : super.sdkUnknown();

  static const openvpn = VpnProtocol._(
    0,
    'openvpn',
    'openvpn',
  );

  /// All values of [VpnProtocol].
  static const values = <VpnProtocol>[VpnProtocol.openvpn];

  static const List<_i1.SmithySerializer<VpnProtocol>> serializers = [
    _i1.SmithyEnumSerializer(
      'VpnProtocol',
      values: values,
      sdkUnknown: VpnProtocol._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VpnProtocolHelpers on List<VpnProtocol> {
  /// Returns the value of [VpnProtocol] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VpnProtocol byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VpnProtocol] whose value matches [value].
  VpnProtocol byValue(String value) => firstWhere((el) => el.value == value);
}
