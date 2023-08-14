// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.local_gateway_route_table_mode; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class LocalGatewayRouteTableMode
    extends _i1.SmithyEnum<LocalGatewayRouteTableMode> {
  const LocalGatewayRouteTableMode._(
    super.index,
    super.name,
    super.value,
  );

  const LocalGatewayRouteTableMode._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const coip = LocalGatewayRouteTableMode._(
    0,
    'coip',
    'coip',
  );

  static const directVpcRouting = LocalGatewayRouteTableMode._(
    1,
    'direct_vpc_routing',
    'direct-vpc-routing',
  );

  /// All values of [LocalGatewayRouteTableMode].
  static const values = <LocalGatewayRouteTableMode>[
    LocalGatewayRouteTableMode.coip,
    LocalGatewayRouteTableMode.directVpcRouting,
  ];

  static const List<_i1.SmithySerializer<LocalGatewayRouteTableMode>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'LocalGatewayRouteTableMode',
      values: values,
      sdkUnknown: LocalGatewayRouteTableMode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension LocalGatewayRouteTableModeHelpers
    on List<LocalGatewayRouteTableMode> {
  /// Returns the value of [LocalGatewayRouteTableMode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  LocalGatewayRouteTableMode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [LocalGatewayRouteTableMode] whose value matches [value].
  LocalGatewayRouteTableMode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
