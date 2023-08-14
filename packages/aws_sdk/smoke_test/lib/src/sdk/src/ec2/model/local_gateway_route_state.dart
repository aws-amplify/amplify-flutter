// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.local_gateway_route_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class LocalGatewayRouteState extends _i1.SmithyEnum<LocalGatewayRouteState> {
  const LocalGatewayRouteState._(
    super.index,
    super.name,
    super.value,
  );

  const LocalGatewayRouteState._sdkUnknown(super.value) : super.sdkUnknown();

  static const active = LocalGatewayRouteState._(
    0,
    'active',
    'active',
  );

  static const blackhole = LocalGatewayRouteState._(
    1,
    'blackhole',
    'blackhole',
  );

  static const deleted = LocalGatewayRouteState._(
    2,
    'deleted',
    'deleted',
  );

  static const deleting = LocalGatewayRouteState._(
    3,
    'deleting',
    'deleting',
  );

  static const pending = LocalGatewayRouteState._(
    4,
    'pending',
    'pending',
  );

  /// All values of [LocalGatewayRouteState].
  static const values = <LocalGatewayRouteState>[
    LocalGatewayRouteState.active,
    LocalGatewayRouteState.blackhole,
    LocalGatewayRouteState.deleted,
    LocalGatewayRouteState.deleting,
    LocalGatewayRouteState.pending,
  ];

  static const List<_i1.SmithySerializer<LocalGatewayRouteState>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'LocalGatewayRouteState',
      values: values,
      sdkUnknown: LocalGatewayRouteState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension LocalGatewayRouteStateHelpers on List<LocalGatewayRouteState> {
  /// Returns the value of [LocalGatewayRouteState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  LocalGatewayRouteState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [LocalGatewayRouteState] whose value matches [value].
  LocalGatewayRouteState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
