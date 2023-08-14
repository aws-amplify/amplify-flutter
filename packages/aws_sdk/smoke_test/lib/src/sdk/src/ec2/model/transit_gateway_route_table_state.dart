// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_route_table_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TransitGatewayRouteTableState
    extends _i1.SmithyEnum<TransitGatewayRouteTableState> {
  const TransitGatewayRouteTableState._(
    super.index,
    super.name,
    super.value,
  );

  const TransitGatewayRouteTableState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const available = TransitGatewayRouteTableState._(
    0,
    'available',
    'available',
  );

  static const deleted = TransitGatewayRouteTableState._(
    1,
    'deleted',
    'deleted',
  );

  static const deleting = TransitGatewayRouteTableState._(
    2,
    'deleting',
    'deleting',
  );

  static const pending = TransitGatewayRouteTableState._(
    3,
    'pending',
    'pending',
  );

  /// All values of [TransitGatewayRouteTableState].
  static const values = <TransitGatewayRouteTableState>[
    TransitGatewayRouteTableState.available,
    TransitGatewayRouteTableState.deleted,
    TransitGatewayRouteTableState.deleting,
    TransitGatewayRouteTableState.pending,
  ];

  static const List<_i1.SmithySerializer<TransitGatewayRouteTableState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'TransitGatewayRouteTableState',
      values: values,
      sdkUnknown: TransitGatewayRouteTableState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TransitGatewayRouteTableStateHelpers
    on List<TransitGatewayRouteTableState> {
  /// Returns the value of [TransitGatewayRouteTableState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TransitGatewayRouteTableState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TransitGatewayRouteTableState] whose value matches [value].
  TransitGatewayRouteTableState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
