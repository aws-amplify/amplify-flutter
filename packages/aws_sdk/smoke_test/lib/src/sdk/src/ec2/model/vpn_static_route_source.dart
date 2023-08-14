// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vpn_static_route_source; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VpnStaticRouteSource extends _i1.SmithyEnum<VpnStaticRouteSource> {
  const VpnStaticRouteSource._(
    super.index,
    super.name,
    super.value,
  );

  const VpnStaticRouteSource._sdkUnknown(super.value) : super.sdkUnknown();

  static const static = VpnStaticRouteSource._(
    0,
    'Static',
    'Static',
  );

  /// All values of [VpnStaticRouteSource].
  static const values = <VpnStaticRouteSource>[VpnStaticRouteSource.static];

  static const List<_i1.SmithySerializer<VpnStaticRouteSource>> serializers = [
    _i1.SmithyEnumSerializer(
      'VpnStaticRouteSource',
      values: values,
      sdkUnknown: VpnStaticRouteSource._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VpnStaticRouteSourceHelpers on List<VpnStaticRouteSource> {
  /// Returns the value of [VpnStaticRouteSource] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VpnStaticRouteSource byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VpnStaticRouteSource] whose value matches [value].
  VpnStaticRouteSource byValue(String value) =>
      firstWhere((el) => el.value == value);
}
