// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_route_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TransitGatewayRouteType extends _i1.SmithyEnum<TransitGatewayRouteType> {
  const TransitGatewayRouteType._(
    super.index,
    super.name,
    super.value,
  );

  const TransitGatewayRouteType._sdkUnknown(super.value) : super.sdkUnknown();

  static const propagated = TransitGatewayRouteType._(
    0,
    'propagated',
    'propagated',
  );

  static const static = TransitGatewayRouteType._(
    1,
    'static',
    'static',
  );

  /// All values of [TransitGatewayRouteType].
  static const values = <TransitGatewayRouteType>[
    TransitGatewayRouteType.propagated,
    TransitGatewayRouteType.static,
  ];

  static const List<_i1.SmithySerializer<TransitGatewayRouteType>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'TransitGatewayRouteType',
      values: values,
      sdkUnknown: TransitGatewayRouteType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TransitGatewayRouteTypeHelpers on List<TransitGatewayRouteType> {
  /// Returns the value of [TransitGatewayRouteType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TransitGatewayRouteType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TransitGatewayRouteType] whose value matches [value].
  TransitGatewayRouteType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
