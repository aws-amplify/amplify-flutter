// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.local_gateway_route_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class LocalGatewayRouteType extends _i1.SmithyEnum<LocalGatewayRouteType> {
  const LocalGatewayRouteType._(
    super.index,
    super.name,
    super.value,
  );

  const LocalGatewayRouteType._sdkUnknown(super.value) : super.sdkUnknown();

  static const propagated = LocalGatewayRouteType._(
    0,
    'propagated',
    'propagated',
  );

  static const static = LocalGatewayRouteType._(
    1,
    'static',
    'static',
  );

  /// All values of [LocalGatewayRouteType].
  static const values = <LocalGatewayRouteType>[
    LocalGatewayRouteType.propagated,
    LocalGatewayRouteType.static,
  ];

  static const List<_i1.SmithySerializer<LocalGatewayRouteType>> serializers = [
    _i1.SmithyEnumSerializer(
      'LocalGatewayRouteType',
      values: values,
      sdkUnknown: LocalGatewayRouteType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension LocalGatewayRouteTypeHelpers on List<LocalGatewayRouteType> {
  /// Returns the value of [LocalGatewayRouteType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  LocalGatewayRouteType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [LocalGatewayRouteType] whose value matches [value].
  LocalGatewayRouteType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
