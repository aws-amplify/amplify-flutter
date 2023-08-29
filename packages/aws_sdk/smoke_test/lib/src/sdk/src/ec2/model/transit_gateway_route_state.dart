// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_route_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TransitGatewayRouteState
    extends _i1.SmithyEnum<TransitGatewayRouteState> {
  const TransitGatewayRouteState._(
    super.index,
    super.name,
    super.value,
  );

  const TransitGatewayRouteState._sdkUnknown(super.value) : super.sdkUnknown();

  static const active = TransitGatewayRouteState._(
    0,
    'active',
    'active',
  );

  static const blackhole = TransitGatewayRouteState._(
    1,
    'blackhole',
    'blackhole',
  );

  static const deleted = TransitGatewayRouteState._(
    2,
    'deleted',
    'deleted',
  );

  static const deleting = TransitGatewayRouteState._(
    3,
    'deleting',
    'deleting',
  );

  static const pending = TransitGatewayRouteState._(
    4,
    'pending',
    'pending',
  );

  /// All values of [TransitGatewayRouteState].
  static const values = <TransitGatewayRouteState>[
    TransitGatewayRouteState.active,
    TransitGatewayRouteState.blackhole,
    TransitGatewayRouteState.deleted,
    TransitGatewayRouteState.deleting,
    TransitGatewayRouteState.pending,
  ];

  static const List<_i1.SmithySerializer<TransitGatewayRouteState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'TransitGatewayRouteState',
      values: values,
      sdkUnknown: TransitGatewayRouteState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TransitGatewayRouteStateHelpers on List<TransitGatewayRouteState> {
  /// Returns the value of [TransitGatewayRouteState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TransitGatewayRouteState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TransitGatewayRouteState] whose value matches [value].
  TransitGatewayRouteState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
