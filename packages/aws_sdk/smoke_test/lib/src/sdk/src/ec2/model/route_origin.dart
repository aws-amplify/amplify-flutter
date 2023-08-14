// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.route_origin; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RouteOrigin extends _i1.SmithyEnum<RouteOrigin> {
  const RouteOrigin._(
    super.index,
    super.name,
    super.value,
  );

  const RouteOrigin._sdkUnknown(super.value) : super.sdkUnknown();

  static const createRoute = RouteOrigin._(
    0,
    'CreateRoute',
    'CreateRoute',
  );

  static const createRouteTable = RouteOrigin._(
    1,
    'CreateRouteTable',
    'CreateRouteTable',
  );

  static const enableVgwRoutePropagation = RouteOrigin._(
    2,
    'EnableVgwRoutePropagation',
    'EnableVgwRoutePropagation',
  );

  /// All values of [RouteOrigin].
  static const values = <RouteOrigin>[
    RouteOrigin.createRoute,
    RouteOrigin.createRouteTable,
    RouteOrigin.enableVgwRoutePropagation,
  ];

  static const List<_i1.SmithySerializer<RouteOrigin>> serializers = [
    _i1.SmithyEnumSerializer(
      'RouteOrigin',
      values: values,
      sdkUnknown: RouteOrigin._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension RouteOriginHelpers on List<RouteOrigin> {
  /// Returns the value of [RouteOrigin] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RouteOrigin byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RouteOrigin] whose value matches [value].
  RouteOrigin byValue(String value) => firstWhere((el) => el.value == value);
}
