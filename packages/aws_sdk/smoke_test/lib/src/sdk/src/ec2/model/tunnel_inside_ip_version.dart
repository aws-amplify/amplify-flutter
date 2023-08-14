// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.tunnel_inside_ip_version; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TunnelInsideIpVersion extends _i1.SmithyEnum<TunnelInsideIpVersion> {
  const TunnelInsideIpVersion._(
    super.index,
    super.name,
    super.value,
  );

  const TunnelInsideIpVersion._sdkUnknown(super.value) : super.sdkUnknown();

  static const ipv4 = TunnelInsideIpVersion._(
    0,
    'ipv4',
    'ipv4',
  );

  static const ipv6 = TunnelInsideIpVersion._(
    1,
    'ipv6',
    'ipv6',
  );

  /// All values of [TunnelInsideIpVersion].
  static const values = <TunnelInsideIpVersion>[
    TunnelInsideIpVersion.ipv4,
    TunnelInsideIpVersion.ipv6,
  ];

  static const List<_i1.SmithySerializer<TunnelInsideIpVersion>> serializers = [
    _i1.SmithyEnumSerializer(
      'TunnelInsideIpVersion',
      values: values,
      sdkUnknown: TunnelInsideIpVersion._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TunnelInsideIpVersionHelpers on List<TunnelInsideIpVersion> {
  /// Returns the value of [TunnelInsideIpVersion] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TunnelInsideIpVersion byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TunnelInsideIpVersion] whose value matches [value].
  TunnelInsideIpVersion byValue(String value) =>
      firstWhere((el) => el.value == value);
}
