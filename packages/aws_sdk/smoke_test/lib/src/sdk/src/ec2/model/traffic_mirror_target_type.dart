// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.traffic_mirror_target_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TrafficMirrorTargetType extends _i1.SmithyEnum<TrafficMirrorTargetType> {
  const TrafficMirrorTargetType._(
    super.index,
    super.name,
    super.value,
  );

  const TrafficMirrorTargetType._sdkUnknown(super.value) : super.sdkUnknown();

  static const gatewayLoadBalancerEndpoint = TrafficMirrorTargetType._(
    0,
    'gateway_load_balancer_endpoint',
    'gateway-load-balancer-endpoint',
  );

  static const networkInterface = TrafficMirrorTargetType._(
    1,
    'network_interface',
    'network-interface',
  );

  static const networkLoadBalancer = TrafficMirrorTargetType._(
    2,
    'network_load_balancer',
    'network-load-balancer',
  );

  /// All values of [TrafficMirrorTargetType].
  static const values = <TrafficMirrorTargetType>[
    TrafficMirrorTargetType.gatewayLoadBalancerEndpoint,
    TrafficMirrorTargetType.networkInterface,
    TrafficMirrorTargetType.networkLoadBalancer,
  ];

  static const List<_i1.SmithySerializer<TrafficMirrorTargetType>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'TrafficMirrorTargetType',
      values: values,
      sdkUnknown: TrafficMirrorTargetType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TrafficMirrorTargetTypeHelpers on List<TrafficMirrorTargetType> {
  /// Returns the value of [TrafficMirrorTargetType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TrafficMirrorTargetType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TrafficMirrorTargetType] whose value matches [value].
  TrafficMirrorTargetType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
