// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.resource_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ResourceType extends _i1.SmithyEnum<ResourceType> {
  const ResourceType._(
    super.index,
    super.name,
    super.value,
  );

  const ResourceType._sdkUnknown(super.value) : super.sdkUnknown();

  static const capacityReservation = ResourceType._(
    0,
    'capacity_reservation',
    'capacity-reservation',
  );

  static const capacityReservationFleet = ResourceType._(
    1,
    'capacity_reservation_fleet',
    'capacity-reservation-fleet',
  );

  static const carrierGateway = ResourceType._(
    2,
    'carrier_gateway',
    'carrier-gateway',
  );

  static const clientVpnEndpoint = ResourceType._(
    3,
    'client_vpn_endpoint',
    'client-vpn-endpoint',
  );

  static const coipPool = ResourceType._(
    4,
    'coip_pool',
    'coip-pool',
  );

  static const customerGateway = ResourceType._(
    5,
    'customer_gateway',
    'customer-gateway',
  );

  static const dedicatedHost = ResourceType._(
    6,
    'dedicated_host',
    'dedicated-host',
  );

  static const dhcpOptions = ResourceType._(
    7,
    'dhcp_options',
    'dhcp-options',
  );

  static const egressOnlyInternetGateway = ResourceType._(
    8,
    'egress_only_internet_gateway',
    'egress-only-internet-gateway',
  );

  static const elasticGpu = ResourceType._(
    9,
    'elastic_gpu',
    'elastic-gpu',
  );

  static const elasticIp = ResourceType._(
    10,
    'elastic_ip',
    'elastic-ip',
  );

  static const exportImageTask = ResourceType._(
    11,
    'export_image_task',
    'export-image-task',
  );

  static const exportInstanceTask = ResourceType._(
    12,
    'export_instance_task',
    'export-instance-task',
  );

  static const fleet = ResourceType._(
    13,
    'fleet',
    'fleet',
  );

  static const fpgaImage = ResourceType._(
    14,
    'fpga_image',
    'fpga-image',
  );

  static const hostReservation = ResourceType._(
    15,
    'host_reservation',
    'host-reservation',
  );

  static const image = ResourceType._(
    16,
    'image',
    'image',
  );

  static const importImageTask = ResourceType._(
    17,
    'import_image_task',
    'import-image-task',
  );

  static const importSnapshotTask = ResourceType._(
    18,
    'import_snapshot_task',
    'import-snapshot-task',
  );

  static const instance = ResourceType._(
    19,
    'instance',
    'instance',
  );

  static const instanceConnectEndpoint = ResourceType._(
    20,
    'instance_connect_endpoint',
    'instance-connect-endpoint',
  );

  static const instanceEventWindow = ResourceType._(
    21,
    'instance_event_window',
    'instance-event-window',
  );

  static const internetGateway = ResourceType._(
    22,
    'internet_gateway',
    'internet-gateway',
  );

  static const ipam = ResourceType._(
    23,
    'ipam',
    'ipam',
  );

  static const ipamPool = ResourceType._(
    24,
    'ipam_pool',
    'ipam-pool',
  );

  static const ipamResourceDiscovery = ResourceType._(
    25,
    'ipam_resource_discovery',
    'ipam-resource-discovery',
  );

  static const ipamResourceDiscoveryAssociation = ResourceType._(
    26,
    'ipam_resource_discovery_association',
    'ipam-resource-discovery-association',
  );

  static const ipamScope = ResourceType._(
    27,
    'ipam_scope',
    'ipam-scope',
  );

  static const ipv4PoolEc2 = ResourceType._(
    28,
    'ipv4pool_ec2',
    'ipv4pool-ec2',
  );

  static const ipv6PoolEc2 = ResourceType._(
    29,
    'ipv6pool_ec2',
    'ipv6pool-ec2',
  );

  static const keyPair = ResourceType._(
    30,
    'key_pair',
    'key-pair',
  );

  static const launchTemplate = ResourceType._(
    31,
    'launch_template',
    'launch-template',
  );

  static const localGateway = ResourceType._(
    32,
    'local_gateway',
    'local-gateway',
  );

  static const localGatewayRouteTable = ResourceType._(
    33,
    'local_gateway_route_table',
    'local-gateway-route-table',
  );

  static const localGatewayRouteTableVirtualInterfaceGroupAssociation =
      ResourceType._(
    34,
    'local_gateway_route_table_virtual_interface_group_association',
    'local-gateway-route-table-virtual-interface-group-association',
  );

  static const localGatewayRouteTableVpcAssociation = ResourceType._(
    35,
    'local_gateway_route_table_vpc_association',
    'local-gateway-route-table-vpc-association',
  );

  static const localGatewayVirtualInterface = ResourceType._(
    36,
    'local_gateway_virtual_interface',
    'local-gateway-virtual-interface',
  );

  static const localGatewayVirtualInterfaceGroup = ResourceType._(
    37,
    'local_gateway_virtual_interface_group',
    'local-gateway-virtual-interface-group',
  );

  static const natgateway = ResourceType._(
    38,
    'natgateway',
    'natgateway',
  );

  static const networkAcl = ResourceType._(
    39,
    'network_acl',
    'network-acl',
  );

  static const networkInsightsAccessScope = ResourceType._(
    40,
    'network_insights_access_scope',
    'network-insights-access-scope',
  );

  static const networkInsightsAccessScopeAnalysis = ResourceType._(
    41,
    'network_insights_access_scope_analysis',
    'network-insights-access-scope-analysis',
  );

  static const networkInsightsAnalysis = ResourceType._(
    42,
    'network_insights_analysis',
    'network-insights-analysis',
  );

  static const networkInsightsPath = ResourceType._(
    43,
    'network_insights_path',
    'network-insights-path',
  );

  static const networkInterface = ResourceType._(
    44,
    'network_interface',
    'network-interface',
  );

  static const placementGroup = ResourceType._(
    45,
    'placement_group',
    'placement-group',
  );

  static const prefixList = ResourceType._(
    46,
    'prefix_list',
    'prefix-list',
  );

  static const replaceRootVolumeTask = ResourceType._(
    47,
    'replace_root_volume_task',
    'replace-root-volume-task',
  );

  static const reservedInstances = ResourceType._(
    48,
    'reserved_instances',
    'reserved-instances',
  );

  static const routeTable = ResourceType._(
    49,
    'route_table',
    'route-table',
  );

  static const securityGroup = ResourceType._(
    50,
    'security_group',
    'security-group',
  );

  static const securityGroupRule = ResourceType._(
    51,
    'security_group_rule',
    'security-group-rule',
  );

  static const snapshot = ResourceType._(
    52,
    'snapshot',
    'snapshot',
  );

  static const spotFleetRequest = ResourceType._(
    53,
    'spot_fleet_request',
    'spot-fleet-request',
  );

  static const spotInstancesRequest = ResourceType._(
    54,
    'spot_instances_request',
    'spot-instances-request',
  );

  static const subnet = ResourceType._(
    55,
    'subnet',
    'subnet',
  );

  static const subnetCidrReservation = ResourceType._(
    56,
    'subnet_cidr_reservation',
    'subnet-cidr-reservation',
  );

  static const trafficMirrorFilter = ResourceType._(
    57,
    'traffic_mirror_filter',
    'traffic-mirror-filter',
  );

  static const trafficMirrorFilterRule = ResourceType._(
    58,
    'traffic_mirror_filter_rule',
    'traffic-mirror-filter-rule',
  );

  static const trafficMirrorSession = ResourceType._(
    59,
    'traffic_mirror_session',
    'traffic-mirror-session',
  );

  static const trafficMirrorTarget = ResourceType._(
    60,
    'traffic_mirror_target',
    'traffic-mirror-target',
  );

  static const transitGateway = ResourceType._(
    61,
    'transit_gateway',
    'transit-gateway',
  );

  static const transitGatewayAttachment = ResourceType._(
    62,
    'transit_gateway_attachment',
    'transit-gateway-attachment',
  );

  static const transitGatewayConnectPeer = ResourceType._(
    63,
    'transit_gateway_connect_peer',
    'transit-gateway-connect-peer',
  );

  static const transitGatewayMulticastDomain = ResourceType._(
    64,
    'transit_gateway_multicast_domain',
    'transit-gateway-multicast-domain',
  );

  static const transitGatewayPolicyTable = ResourceType._(
    65,
    'transit_gateway_policy_table',
    'transit-gateway-policy-table',
  );

  static const transitGatewayRouteTable = ResourceType._(
    66,
    'transit_gateway_route_table',
    'transit-gateway-route-table',
  );

  static const transitGatewayRouteTableAnnouncement = ResourceType._(
    67,
    'transit_gateway_route_table_announcement',
    'transit-gateway-route-table-announcement',
  );

  static const verifiedAccessEndpoint = ResourceType._(
    68,
    'verified_access_endpoint',
    'verified-access-endpoint',
  );

  static const verifiedAccessGroup = ResourceType._(
    69,
    'verified_access_group',
    'verified-access-group',
  );

  static const verifiedAccessInstance = ResourceType._(
    70,
    'verified_access_instance',
    'verified-access-instance',
  );

  static const verifiedAccessPolicy = ResourceType._(
    71,
    'verified_access_policy',
    'verified-access-policy',
  );

  static const verifiedAccessTrustProvider = ResourceType._(
    72,
    'verified_access_trust_provider',
    'verified-access-trust-provider',
  );

  static const volume = ResourceType._(
    73,
    'volume',
    'volume',
  );

  static const vpc = ResourceType._(
    74,
    'vpc',
    'vpc',
  );

  static const vpcBlockPublicAccessExclusion = ResourceType._(
    75,
    'vpc_block_public_access_exclusion',
    'vpc-block-public-access-exclusion',
  );

  static const vpcEndpoint = ResourceType._(
    76,
    'vpc_endpoint',
    'vpc-endpoint',
  );

  static const vpcEndpointConnection = ResourceType._(
    77,
    'vpc_endpoint_connection',
    'vpc-endpoint-connection',
  );

  static const vpcEndpointConnectionDeviceType = ResourceType._(
    78,
    'vpc_endpoint_connection_device_type',
    'vpc-endpoint-connection-device-type',
  );

  static const vpcEndpointService = ResourceType._(
    79,
    'vpc_endpoint_service',
    'vpc-endpoint-service',
  );

  static const vpcEndpointServicePermission = ResourceType._(
    80,
    'vpc_endpoint_service_permission',
    'vpc-endpoint-service-permission',
  );

  static const vpcFlowLog = ResourceType._(
    81,
    'vpc_flow_log',
    'vpc-flow-log',
  );

  static const vpcPeeringConnection = ResourceType._(
    82,
    'vpc_peering_connection',
    'vpc-peering-connection',
  );

  static const vpnConnection = ResourceType._(
    83,
    'vpn_connection',
    'vpn-connection',
  );

  static const vpnConnectionDeviceType = ResourceType._(
    84,
    'vpn_connection_device_type',
    'vpn-connection-device-type',
  );

  static const vpnGateway = ResourceType._(
    85,
    'vpn_gateway',
    'vpn-gateway',
  );

  /// All values of [ResourceType].
  static const values = <ResourceType>[
    ResourceType.capacityReservation,
    ResourceType.capacityReservationFleet,
    ResourceType.carrierGateway,
    ResourceType.clientVpnEndpoint,
    ResourceType.coipPool,
    ResourceType.customerGateway,
    ResourceType.dedicatedHost,
    ResourceType.dhcpOptions,
    ResourceType.egressOnlyInternetGateway,
    ResourceType.elasticGpu,
    ResourceType.elasticIp,
    ResourceType.exportImageTask,
    ResourceType.exportInstanceTask,
    ResourceType.fleet,
    ResourceType.fpgaImage,
    ResourceType.hostReservation,
    ResourceType.image,
    ResourceType.importImageTask,
    ResourceType.importSnapshotTask,
    ResourceType.instance,
    ResourceType.instanceConnectEndpoint,
    ResourceType.instanceEventWindow,
    ResourceType.internetGateway,
    ResourceType.ipam,
    ResourceType.ipamPool,
    ResourceType.ipamResourceDiscovery,
    ResourceType.ipamResourceDiscoveryAssociation,
    ResourceType.ipamScope,
    ResourceType.ipv4PoolEc2,
    ResourceType.ipv6PoolEc2,
    ResourceType.keyPair,
    ResourceType.launchTemplate,
    ResourceType.localGateway,
    ResourceType.localGatewayRouteTable,
    ResourceType.localGatewayRouteTableVirtualInterfaceGroupAssociation,
    ResourceType.localGatewayRouteTableVpcAssociation,
    ResourceType.localGatewayVirtualInterface,
    ResourceType.localGatewayVirtualInterfaceGroup,
    ResourceType.natgateway,
    ResourceType.networkAcl,
    ResourceType.networkInsightsAccessScope,
    ResourceType.networkInsightsAccessScopeAnalysis,
    ResourceType.networkInsightsAnalysis,
    ResourceType.networkInsightsPath,
    ResourceType.networkInterface,
    ResourceType.placementGroup,
    ResourceType.prefixList,
    ResourceType.replaceRootVolumeTask,
    ResourceType.reservedInstances,
    ResourceType.routeTable,
    ResourceType.securityGroup,
    ResourceType.securityGroupRule,
    ResourceType.snapshot,
    ResourceType.spotFleetRequest,
    ResourceType.spotInstancesRequest,
    ResourceType.subnet,
    ResourceType.subnetCidrReservation,
    ResourceType.trafficMirrorFilter,
    ResourceType.trafficMirrorFilterRule,
    ResourceType.trafficMirrorSession,
    ResourceType.trafficMirrorTarget,
    ResourceType.transitGateway,
    ResourceType.transitGatewayAttachment,
    ResourceType.transitGatewayConnectPeer,
    ResourceType.transitGatewayMulticastDomain,
    ResourceType.transitGatewayPolicyTable,
    ResourceType.transitGatewayRouteTable,
    ResourceType.transitGatewayRouteTableAnnouncement,
    ResourceType.verifiedAccessEndpoint,
    ResourceType.verifiedAccessGroup,
    ResourceType.verifiedAccessInstance,
    ResourceType.verifiedAccessPolicy,
    ResourceType.verifiedAccessTrustProvider,
    ResourceType.volume,
    ResourceType.vpc,
    ResourceType.vpcBlockPublicAccessExclusion,
    ResourceType.vpcEndpoint,
    ResourceType.vpcEndpointConnection,
    ResourceType.vpcEndpointConnectionDeviceType,
    ResourceType.vpcEndpointService,
    ResourceType.vpcEndpointServicePermission,
    ResourceType.vpcFlowLog,
    ResourceType.vpcPeeringConnection,
    ResourceType.vpnConnection,
    ResourceType.vpnConnectionDeviceType,
    ResourceType.vpnGateway,
  ];

  static const List<_i1.SmithySerializer<ResourceType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ResourceType',
      values: values,
      sdkUnknown: ResourceType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ResourceTypeHelpers on List<ResourceType> {
  /// Returns the value of [ResourceType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ResourceType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ResourceType] whose value matches [value].
  ResourceType byValue(String value) => firstWhere((el) => el.value == value);
}
