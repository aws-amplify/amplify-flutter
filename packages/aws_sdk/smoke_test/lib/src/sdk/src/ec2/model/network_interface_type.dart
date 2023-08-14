// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.network_interface_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class NetworkInterfaceType extends _i1.SmithyEnum<NetworkInterfaceType> {
  const NetworkInterfaceType._(
    super.index,
    super.name,
    super.value,
  );

  const NetworkInterfaceType._sdkUnknown(super.value) : super.sdkUnknown();

  static const apiGatewayManaged = NetworkInterfaceType._(
    0,
    'api_gateway_managed',
    'api_gateway_managed',
  );

  static const awsCodestarConnectionsManaged = NetworkInterfaceType._(
    1,
    'aws_codestar_connections_managed',
    'aws_codestar_connections_managed',
  );

  static const branch = NetworkInterfaceType._(
    2,
    'branch',
    'branch',
  );

  static const efa = NetworkInterfaceType._(
    3,
    'efa',
    'efa',
  );

  static const gatewayLoadBalancer = NetworkInterfaceType._(
    4,
    'gateway_load_balancer',
    'gateway_load_balancer',
  );

  static const gatewayLoadBalancerEndpoint = NetworkInterfaceType._(
    5,
    'gateway_load_balancer_endpoint',
    'gateway_load_balancer_endpoint',
  );

  static const globalAcceleratorManaged = NetworkInterfaceType._(
    6,
    'global_accelerator_managed',
    'global_accelerator_managed',
  );

  static const interface = NetworkInterfaceType._(
    7,
    'interface',
    'interface',
  );

  static const iotRulesManaged = NetworkInterfaceType._(
    8,
    'iot_rules_managed',
    'iot_rules_managed',
  );

  static const lambda = NetworkInterfaceType._(
    9,
    'lambda',
    'lambda',
  );

  static const loadBalancer = NetworkInterfaceType._(
    10,
    'load_balancer',
    'load_balancer',
  );

  static const natGateway = NetworkInterfaceType._(
    11,
    'natGateway',
    'natGateway',
  );

  static const networkLoadBalancer = NetworkInterfaceType._(
    12,
    'network_load_balancer',
    'network_load_balancer',
  );

  static const quicksight = NetworkInterfaceType._(
    13,
    'quicksight',
    'quicksight',
  );

  static const transitGateway = NetworkInterfaceType._(
    14,
    'transit_gateway',
    'transit_gateway',
  );

  static const trunk = NetworkInterfaceType._(
    15,
    'trunk',
    'trunk',
  );

  static const vpcEndpoint = NetworkInterfaceType._(
    16,
    'vpc_endpoint',
    'vpc_endpoint',
  );

  /// All values of [NetworkInterfaceType].
  static const values = <NetworkInterfaceType>[
    NetworkInterfaceType.apiGatewayManaged,
    NetworkInterfaceType.awsCodestarConnectionsManaged,
    NetworkInterfaceType.branch,
    NetworkInterfaceType.efa,
    NetworkInterfaceType.gatewayLoadBalancer,
    NetworkInterfaceType.gatewayLoadBalancerEndpoint,
    NetworkInterfaceType.globalAcceleratorManaged,
    NetworkInterfaceType.interface,
    NetworkInterfaceType.iotRulesManaged,
    NetworkInterfaceType.lambda,
    NetworkInterfaceType.loadBalancer,
    NetworkInterfaceType.natGateway,
    NetworkInterfaceType.networkLoadBalancer,
    NetworkInterfaceType.quicksight,
    NetworkInterfaceType.transitGateway,
    NetworkInterfaceType.trunk,
    NetworkInterfaceType.vpcEndpoint,
  ];

  static const List<_i1.SmithySerializer<NetworkInterfaceType>> serializers = [
    _i1.SmithyEnumSerializer(
      'NetworkInterfaceType',
      values: values,
      sdkUnknown: NetworkInterfaceType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension NetworkInterfaceTypeHelpers on List<NetworkInterfaceType> {
  /// Returns the value of [NetworkInterfaceType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  NetworkInterfaceType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [NetworkInterfaceType] whose value matches [value].
  NetworkInterfaceType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
