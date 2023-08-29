// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.explanation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_acl_rule.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_component.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_load_balancer_listener.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_load_balancer_target.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_route_table_route.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_security_group_rule.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/firewall_stateful_rule.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/firewall_stateless_rule.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/port_range.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_route.dart';

part 'explanation.g.dart';

/// Describes an explanation code for an unreachable path. For more information, see [Reachability Analyzer explanation codes](https://docs.aws.amazon.com/vpc/latest/reachability/explanation-codes.html).
abstract class Explanation
    with _i1.AWSEquatable<Explanation>
    implements Built<Explanation, ExplanationBuilder> {
  /// Describes an explanation code for an unreachable path. For more information, see [Reachability Analyzer explanation codes](https://docs.aws.amazon.com/vpc/latest/reachability/explanation-codes.html).
  factory Explanation({
    AnalysisComponent? acl,
    AnalysisAclRule? aclRule,
    String? address,
    List<String>? addresses,
    AnalysisComponent? attachedTo,
    List<String>? availabilityZones,
    List<String>? cidrs,
    AnalysisComponent? component,
    AnalysisComponent? customerGateway,
    AnalysisComponent? destination,
    AnalysisComponent? destinationVpc,
    String? direction,
    String? explanationCode,
    AnalysisComponent? ingressRouteTable,
    AnalysisComponent? internetGateway,
    String? loadBalancerArn,
    AnalysisLoadBalancerListener? classicLoadBalancerListener,
    int? loadBalancerListenerPort,
    AnalysisLoadBalancerTarget? loadBalancerTarget,
    AnalysisComponent? loadBalancerTargetGroup,
    List<AnalysisComponent>? loadBalancerTargetGroups,
    int? loadBalancerTargetPort,
    AnalysisComponent? elasticLoadBalancerListener,
    String? missingComponent,
    AnalysisComponent? natGateway,
    AnalysisComponent? networkInterface,
    String? packetField,
    AnalysisComponent? vpcPeeringConnection,
    int? port,
    List<PortRange>? portRanges,
    AnalysisComponent? prefixList,
    List<String>? protocols,
    AnalysisRouteTableRoute? routeTableRoute,
    AnalysisComponent? routeTable,
    AnalysisComponent? securityGroup,
    AnalysisSecurityGroupRule? securityGroupRule,
    List<AnalysisComponent>? securityGroups,
    AnalysisComponent? sourceVpc,
    String? state,
    AnalysisComponent? subnet,
    AnalysisComponent? subnetRouteTable,
    AnalysisComponent? vpc,
    AnalysisComponent? vpcEndpoint,
    AnalysisComponent? vpnConnection,
    AnalysisComponent? vpnGateway,
    AnalysisComponent? transitGateway,
    AnalysisComponent? transitGatewayRouteTable,
    TransitGatewayRouteTableRoute? transitGatewayRouteTableRoute,
    AnalysisComponent? transitGatewayAttachment,
    String? componentAccount,
    String? componentRegion,
    FirewallStatelessRule? firewallStatelessRule,
    FirewallStatefulRule? firewallStatefulRule,
  }) {
    loadBalancerListenerPort ??= 0;
    loadBalancerTargetPort ??= 0;
    port ??= 0;
    return _$Explanation._(
      acl: acl,
      aclRule: aclRule,
      address: address,
      addresses: addresses == null ? null : _i2.BuiltList(addresses),
      attachedTo: attachedTo,
      availabilityZones:
          availabilityZones == null ? null : _i2.BuiltList(availabilityZones),
      cidrs: cidrs == null ? null : _i2.BuiltList(cidrs),
      component: component,
      customerGateway: customerGateway,
      destination: destination,
      destinationVpc: destinationVpc,
      direction: direction,
      explanationCode: explanationCode,
      ingressRouteTable: ingressRouteTable,
      internetGateway: internetGateway,
      loadBalancerArn: loadBalancerArn,
      classicLoadBalancerListener: classicLoadBalancerListener,
      loadBalancerListenerPort: loadBalancerListenerPort,
      loadBalancerTarget: loadBalancerTarget,
      loadBalancerTargetGroup: loadBalancerTargetGroup,
      loadBalancerTargetGroups: loadBalancerTargetGroups == null
          ? null
          : _i2.BuiltList(loadBalancerTargetGroups),
      loadBalancerTargetPort: loadBalancerTargetPort,
      elasticLoadBalancerListener: elasticLoadBalancerListener,
      missingComponent: missingComponent,
      natGateway: natGateway,
      networkInterface: networkInterface,
      packetField: packetField,
      vpcPeeringConnection: vpcPeeringConnection,
      port: port,
      portRanges: portRanges == null ? null : _i2.BuiltList(portRanges),
      prefixList: prefixList,
      protocols: protocols == null ? null : _i2.BuiltList(protocols),
      routeTableRoute: routeTableRoute,
      routeTable: routeTable,
      securityGroup: securityGroup,
      securityGroupRule: securityGroupRule,
      securityGroups:
          securityGroups == null ? null : _i2.BuiltList(securityGroups),
      sourceVpc: sourceVpc,
      state: state,
      subnet: subnet,
      subnetRouteTable: subnetRouteTable,
      vpc: vpc,
      vpcEndpoint: vpcEndpoint,
      vpnConnection: vpnConnection,
      vpnGateway: vpnGateway,
      transitGateway: transitGateway,
      transitGatewayRouteTable: transitGatewayRouteTable,
      transitGatewayRouteTableRoute: transitGatewayRouteTableRoute,
      transitGatewayAttachment: transitGatewayAttachment,
      componentAccount: componentAccount,
      componentRegion: componentRegion,
      firewallStatelessRule: firewallStatelessRule,
      firewallStatefulRule: firewallStatefulRule,
    );
  }

  /// Describes an explanation code for an unreachable path. For more information, see [Reachability Analyzer explanation codes](https://docs.aws.amazon.com/vpc/latest/reachability/explanation-codes.html).
  factory Explanation.build([void Function(ExplanationBuilder) updates]) =
      _$Explanation;

  const Explanation._();

  static const List<_i3.SmithySerializer<Explanation>> serializers = [
    ExplanationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExplanationBuilder b) {
    b
      ..loadBalancerListenerPort = 0
      ..loadBalancerTargetPort = 0
      ..port = 0;
  }

  /// The network ACL.
  AnalysisComponent? get acl;

  /// The network ACL rule.
  AnalysisAclRule? get aclRule;

  /// The IPv4 address, in CIDR notation.
  String? get address;

  /// The IPv4 addresses, in CIDR notation.
  _i2.BuiltList<String>? get addresses;

  /// The resource to which the component is attached.
  AnalysisComponent? get attachedTo;

  /// The Availability Zones.
  _i2.BuiltList<String>? get availabilityZones;

  /// The CIDR ranges.
  _i2.BuiltList<String>? get cidrs;

  /// The component.
  AnalysisComponent? get component;

  /// The customer gateway.
  AnalysisComponent? get customerGateway;

  /// The destination.
  AnalysisComponent? get destination;

  /// The destination VPC.
  AnalysisComponent? get destinationVpc;

  /// The direction. The following are the possible values:
  ///
  /// *   egress
  ///
  /// *   ingress
  String? get direction;

  /// The explanation code.
  String? get explanationCode;

  /// The route table.
  AnalysisComponent? get ingressRouteTable;

  /// The internet gateway.
  AnalysisComponent? get internetGateway;

  /// The Amazon Resource Name (ARN) of the load balancer.
  String? get loadBalancerArn;

  /// The listener for a Classic Load Balancer.
  AnalysisLoadBalancerListener? get classicLoadBalancerListener;

  /// The listener port of the load balancer.
  int get loadBalancerListenerPort;

  /// The target.
  AnalysisLoadBalancerTarget? get loadBalancerTarget;

  /// The target group.
  AnalysisComponent? get loadBalancerTargetGroup;

  /// The target groups.
  _i2.BuiltList<AnalysisComponent>? get loadBalancerTargetGroups;

  /// The target port.
  int get loadBalancerTargetPort;

  /// The load balancer listener.
  AnalysisComponent? get elasticLoadBalancerListener;

  /// The missing component.
  String? get missingComponent;

  /// The NAT gateway.
  AnalysisComponent? get natGateway;

  /// The network interface.
  AnalysisComponent? get networkInterface;

  /// The packet field.
  String? get packetField;

  /// The VPC peering connection.
  AnalysisComponent? get vpcPeeringConnection;

  /// The port.
  int get port;

  /// The port ranges.
  _i2.BuiltList<PortRange>? get portRanges;

  /// The prefix list.
  AnalysisComponent? get prefixList;

  /// The protocols.
  _i2.BuiltList<String>? get protocols;

  /// The route table route.
  AnalysisRouteTableRoute? get routeTableRoute;

  /// The route table.
  AnalysisComponent? get routeTable;

  /// The security group.
  AnalysisComponent? get securityGroup;

  /// The security group rule.
  AnalysisSecurityGroupRule? get securityGroupRule;

  /// The security groups.
  _i2.BuiltList<AnalysisComponent>? get securityGroups;

  /// The source VPC.
  AnalysisComponent? get sourceVpc;

  /// The state.
  String? get state;

  /// The subnet.
  AnalysisComponent? get subnet;

  /// The route table for the subnet.
  AnalysisComponent? get subnetRouteTable;

  /// The component VPC.
  AnalysisComponent? get vpc;

  /// The VPC endpoint.
  AnalysisComponent? get vpcEndpoint;

  /// The VPN connection.
  AnalysisComponent? get vpnConnection;

  /// The VPN gateway.
  AnalysisComponent? get vpnGateway;

  /// The transit gateway.
  AnalysisComponent? get transitGateway;

  /// The transit gateway route table.
  AnalysisComponent? get transitGatewayRouteTable;

  /// The transit gateway route table route.
  TransitGatewayRouteTableRoute? get transitGatewayRouteTableRoute;

  /// The transit gateway attachment.
  AnalysisComponent? get transitGatewayAttachment;

  /// The Amazon Web Services account for the component.
  String? get componentAccount;

  /// The Region for the component.
  String? get componentRegion;

  /// The Network Firewall stateless rule.
  FirewallStatelessRule? get firewallStatelessRule;

  /// The Network Firewall stateful rule.
  FirewallStatefulRule? get firewallStatefulRule;
  @override
  List<Object?> get props => [
        acl,
        aclRule,
        address,
        addresses,
        attachedTo,
        availabilityZones,
        cidrs,
        component,
        customerGateway,
        destination,
        destinationVpc,
        direction,
        explanationCode,
        ingressRouteTable,
        internetGateway,
        loadBalancerArn,
        classicLoadBalancerListener,
        loadBalancerListenerPort,
        loadBalancerTarget,
        loadBalancerTargetGroup,
        loadBalancerTargetGroups,
        loadBalancerTargetPort,
        elasticLoadBalancerListener,
        missingComponent,
        natGateway,
        networkInterface,
        packetField,
        vpcPeeringConnection,
        port,
        portRanges,
        prefixList,
        protocols,
        routeTableRoute,
        routeTable,
        securityGroup,
        securityGroupRule,
        securityGroups,
        sourceVpc,
        state,
        subnet,
        subnetRouteTable,
        vpc,
        vpcEndpoint,
        vpnConnection,
        vpnGateway,
        transitGateway,
        transitGatewayRouteTable,
        transitGatewayRouteTableRoute,
        transitGatewayAttachment,
        componentAccount,
        componentRegion,
        firewallStatelessRule,
        firewallStatefulRule,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Explanation')
      ..add(
        'acl',
        acl,
      )
      ..add(
        'aclRule',
        aclRule,
      )
      ..add(
        'address',
        address,
      )
      ..add(
        'addresses',
        addresses,
      )
      ..add(
        'attachedTo',
        attachedTo,
      )
      ..add(
        'availabilityZones',
        availabilityZones,
      )
      ..add(
        'cidrs',
        cidrs,
      )
      ..add(
        'component',
        component,
      )
      ..add(
        'customerGateway',
        customerGateway,
      )
      ..add(
        'destination',
        destination,
      )
      ..add(
        'destinationVpc',
        destinationVpc,
      )
      ..add(
        'direction',
        direction,
      )
      ..add(
        'explanationCode',
        explanationCode,
      )
      ..add(
        'ingressRouteTable',
        ingressRouteTable,
      )
      ..add(
        'internetGateway',
        internetGateway,
      )
      ..add(
        'loadBalancerArn',
        loadBalancerArn,
      )
      ..add(
        'classicLoadBalancerListener',
        classicLoadBalancerListener,
      )
      ..add(
        'loadBalancerListenerPort',
        loadBalancerListenerPort,
      )
      ..add(
        'loadBalancerTarget',
        loadBalancerTarget,
      )
      ..add(
        'loadBalancerTargetGroup',
        loadBalancerTargetGroup,
      )
      ..add(
        'loadBalancerTargetGroups',
        loadBalancerTargetGroups,
      )
      ..add(
        'loadBalancerTargetPort',
        loadBalancerTargetPort,
      )
      ..add(
        'elasticLoadBalancerListener',
        elasticLoadBalancerListener,
      )
      ..add(
        'missingComponent',
        missingComponent,
      )
      ..add(
        'natGateway',
        natGateway,
      )
      ..add(
        'networkInterface',
        networkInterface,
      )
      ..add(
        'packetField',
        packetField,
      )
      ..add(
        'vpcPeeringConnection',
        vpcPeeringConnection,
      )
      ..add(
        'port',
        port,
      )
      ..add(
        'portRanges',
        portRanges,
      )
      ..add(
        'prefixList',
        prefixList,
      )
      ..add(
        'protocols',
        protocols,
      )
      ..add(
        'routeTableRoute',
        routeTableRoute,
      )
      ..add(
        'routeTable',
        routeTable,
      )
      ..add(
        'securityGroup',
        securityGroup,
      )
      ..add(
        'securityGroupRule',
        securityGroupRule,
      )
      ..add(
        'securityGroups',
        securityGroups,
      )
      ..add(
        'sourceVpc',
        sourceVpc,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'subnet',
        subnet,
      )
      ..add(
        'subnetRouteTable',
        subnetRouteTable,
      )
      ..add(
        'vpc',
        vpc,
      )
      ..add(
        'vpcEndpoint',
        vpcEndpoint,
      )
      ..add(
        'vpnConnection',
        vpnConnection,
      )
      ..add(
        'vpnGateway',
        vpnGateway,
      )
      ..add(
        'transitGateway',
        transitGateway,
      )
      ..add(
        'transitGatewayRouteTable',
        transitGatewayRouteTable,
      )
      ..add(
        'transitGatewayRouteTableRoute',
        transitGatewayRouteTableRoute,
      )
      ..add(
        'transitGatewayAttachment',
        transitGatewayAttachment,
      )
      ..add(
        'componentAccount',
        componentAccount,
      )
      ..add(
        'componentRegion',
        componentRegion,
      )
      ..add(
        'firewallStatelessRule',
        firewallStatelessRule,
      )
      ..add(
        'firewallStatefulRule',
        firewallStatefulRule,
      );
    return helper.toString();
  }
}

class ExplanationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<Explanation> {
  const ExplanationEc2QuerySerializer() : super('Explanation');

  @override
  Iterable<Type> get types => const [
        Explanation,
        _$Explanation,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Explanation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExplanationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'acl':
          result.acl.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'aclRule':
          result.aclRule.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisAclRule),
          ) as AnalysisAclRule));
        case 'address':
          result.address = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'addressSet':
          result.addresses.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'attachedTo':
          result.attachedTo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'availabilityZoneSet':
          result.availabilityZones.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'cidrSet':
          result.cidrs.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'component':
          result.component.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'customerGateway':
          result.customerGateway.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'destination':
          result.destination.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'destinationVpc':
          result.destinationVpc.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'direction':
          result.direction = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'explanationCode':
          result.explanationCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ingressRouteTable':
          result.ingressRouteTable.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'internetGateway':
          result.internetGateway.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'loadBalancerArn':
          result.loadBalancerArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'classicLoadBalancerListener':
          result.classicLoadBalancerListener.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisLoadBalancerListener),
          ) as AnalysisLoadBalancerListener));
        case 'loadBalancerListenerPort':
          result.loadBalancerListenerPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'loadBalancerTarget':
          result.loadBalancerTarget.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisLoadBalancerTarget),
          ) as AnalysisLoadBalancerTarget));
        case 'loadBalancerTargetGroup':
          result.loadBalancerTargetGroup.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'loadBalancerTargetGroupSet':
          result.loadBalancerTargetGroups
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AnalysisComponent)],
            ),
          ) as _i2.BuiltList<AnalysisComponent>));
        case 'loadBalancerTargetPort':
          result.loadBalancerTargetPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'elasticLoadBalancerListener':
          result.elasticLoadBalancerListener.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'missingComponent':
          result.missingComponent = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'natGateway':
          result.natGateway.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'networkInterface':
          result.networkInterface.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'packetField':
          result.packetField = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpcPeeringConnection':
          result.vpcPeeringConnection.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'port':
          result.port = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'portRangeSet':
          result.portRanges.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(PortRange)],
            ),
          ) as _i2.BuiltList<PortRange>));
        case 'prefixList':
          result.prefixList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'protocolSet':
          result.protocols.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'routeTableRoute':
          result.routeTableRoute.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisRouteTableRoute),
          ) as AnalysisRouteTableRoute));
        case 'routeTable':
          result.routeTable.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'securityGroup':
          result.securityGroup.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'securityGroupRule':
          result.securityGroupRule.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisSecurityGroupRule),
          ) as AnalysisSecurityGroupRule));
        case 'securityGroupSet':
          result.securityGroups.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AnalysisComponent)],
            ),
          ) as _i2.BuiltList<AnalysisComponent>));
        case 'sourceVpc':
          result.sourceVpc.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'subnet':
          result.subnet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'subnetRouteTable':
          result.subnetRouteTable.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'vpc':
          result.vpc.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'vpcEndpoint':
          result.vpcEndpoint.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'vpnConnection':
          result.vpnConnection.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'vpnGateway':
          result.vpnGateway.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'transitGateway':
          result.transitGateway.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'transitGatewayRouteTable':
          result.transitGatewayRouteTable.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'transitGatewayRouteTableRoute':
          result.transitGatewayRouteTableRoute.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayRouteTableRoute),
          ) as TransitGatewayRouteTableRoute));
        case 'transitGatewayAttachment':
          result.transitGatewayAttachment.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'componentAccount':
          result.componentAccount = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'componentRegion':
          result.componentRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'firewallStatelessRule':
          result.firewallStatelessRule.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(FirewallStatelessRule),
          ) as FirewallStatelessRule));
        case 'firewallStatefulRule':
          result.firewallStatefulRule.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(FirewallStatefulRule),
          ) as FirewallStatefulRule));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Explanation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ExplanationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Explanation(
      :acl,
      :aclRule,
      :address,
      :addresses,
      :attachedTo,
      :availabilityZones,
      :cidrs,
      :component,
      :customerGateway,
      :destination,
      :destinationVpc,
      :direction,
      :explanationCode,
      :ingressRouteTable,
      :internetGateway,
      :loadBalancerArn,
      :classicLoadBalancerListener,
      :loadBalancerListenerPort,
      :loadBalancerTarget,
      :loadBalancerTargetGroup,
      :loadBalancerTargetGroups,
      :loadBalancerTargetPort,
      :elasticLoadBalancerListener,
      :missingComponent,
      :natGateway,
      :networkInterface,
      :packetField,
      :vpcPeeringConnection,
      :port,
      :portRanges,
      :prefixList,
      :protocols,
      :routeTableRoute,
      :routeTable,
      :securityGroup,
      :securityGroupRule,
      :securityGroups,
      :sourceVpc,
      :state,
      :subnet,
      :subnetRouteTable,
      :vpc,
      :vpcEndpoint,
      :vpnConnection,
      :vpnGateway,
      :transitGateway,
      :transitGatewayRouteTable,
      :transitGatewayRouteTableRoute,
      :transitGatewayAttachment,
      :componentAccount,
      :componentRegion,
      :firewallStatelessRule,
      :firewallStatefulRule
    ) = object;
    if (acl != null) {
      result$
        ..add(const _i3.XmlElementName('Acl'))
        ..add(serializers.serialize(
          acl,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (aclRule != null) {
      result$
        ..add(const _i3.XmlElementName('AclRule'))
        ..add(serializers.serialize(
          aclRule,
          specifiedType: const FullType(AnalysisAclRule),
        ));
    }
    if (address != null) {
      result$
        ..add(const _i3.XmlElementName('Address'))
        ..add(serializers.serialize(
          address,
          specifiedType: const FullType(String),
        ));
    }
    if (addresses != null) {
      result$
        ..add(const _i3.XmlElementName('AddressSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          addresses,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (attachedTo != null) {
      result$
        ..add(const _i3.XmlElementName('AttachedTo'))
        ..add(serializers.serialize(
          attachedTo,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (availabilityZones != null) {
      result$
        ..add(const _i3.XmlElementName('AvailabilityZoneSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          availabilityZones,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (cidrs != null) {
      result$
        ..add(const _i3.XmlElementName('CidrSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          cidrs,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (component != null) {
      result$
        ..add(const _i3.XmlElementName('Component'))
        ..add(serializers.serialize(
          component,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (customerGateway != null) {
      result$
        ..add(const _i3.XmlElementName('CustomerGateway'))
        ..add(serializers.serialize(
          customerGateway,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (destination != null) {
      result$
        ..add(const _i3.XmlElementName('Destination'))
        ..add(serializers.serialize(
          destination,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (destinationVpc != null) {
      result$
        ..add(const _i3.XmlElementName('DestinationVpc'))
        ..add(serializers.serialize(
          destinationVpc,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (direction != null) {
      result$
        ..add(const _i3.XmlElementName('Direction'))
        ..add(serializers.serialize(
          direction,
          specifiedType: const FullType(String),
        ));
    }
    if (explanationCode != null) {
      result$
        ..add(const _i3.XmlElementName('ExplanationCode'))
        ..add(serializers.serialize(
          explanationCode,
          specifiedType: const FullType(String),
        ));
    }
    if (ingressRouteTable != null) {
      result$
        ..add(const _i3.XmlElementName('IngressRouteTable'))
        ..add(serializers.serialize(
          ingressRouteTable,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (internetGateway != null) {
      result$
        ..add(const _i3.XmlElementName('InternetGateway'))
        ..add(serializers.serialize(
          internetGateway,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (loadBalancerArn != null) {
      result$
        ..add(const _i3.XmlElementName('LoadBalancerArn'))
        ..add(serializers.serialize(
          loadBalancerArn,
          specifiedType: const FullType(String),
        ));
    }
    if (classicLoadBalancerListener != null) {
      result$
        ..add(const _i3.XmlElementName('ClassicLoadBalancerListener'))
        ..add(serializers.serialize(
          classicLoadBalancerListener,
          specifiedType: const FullType(AnalysisLoadBalancerListener),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('LoadBalancerListenerPort'))
      ..add(serializers.serialize(
        loadBalancerListenerPort,
        specifiedType: const FullType(int),
      ));
    if (loadBalancerTarget != null) {
      result$
        ..add(const _i3.XmlElementName('LoadBalancerTarget'))
        ..add(serializers.serialize(
          loadBalancerTarget,
          specifiedType: const FullType(AnalysisLoadBalancerTarget),
        ));
    }
    if (loadBalancerTargetGroup != null) {
      result$
        ..add(const _i3.XmlElementName('LoadBalancerTargetGroup'))
        ..add(serializers.serialize(
          loadBalancerTargetGroup,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (loadBalancerTargetGroups != null) {
      result$
        ..add(const _i3.XmlElementName('LoadBalancerTargetGroupSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          loadBalancerTargetGroups,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(AnalysisComponent)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('LoadBalancerTargetPort'))
      ..add(serializers.serialize(
        loadBalancerTargetPort,
        specifiedType: const FullType(int),
      ));
    if (elasticLoadBalancerListener != null) {
      result$
        ..add(const _i3.XmlElementName('ElasticLoadBalancerListener'))
        ..add(serializers.serialize(
          elasticLoadBalancerListener,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (missingComponent != null) {
      result$
        ..add(const _i3.XmlElementName('MissingComponent'))
        ..add(serializers.serialize(
          missingComponent,
          specifiedType: const FullType(String),
        ));
    }
    if (natGateway != null) {
      result$
        ..add(const _i3.XmlElementName('NatGateway'))
        ..add(serializers.serialize(
          natGateway,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (networkInterface != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInterface'))
        ..add(serializers.serialize(
          networkInterface,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (packetField != null) {
      result$
        ..add(const _i3.XmlElementName('PacketField'))
        ..add(serializers.serialize(
          packetField,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcPeeringConnection != null) {
      result$
        ..add(const _i3.XmlElementName('VpcPeeringConnection'))
        ..add(serializers.serialize(
          vpcPeeringConnection,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Port'))
      ..add(serializers.serialize(
        port,
        specifiedType: const FullType(int),
      ));
    if (portRanges != null) {
      result$
        ..add(const _i3.XmlElementName('PortRangeSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          portRanges,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(PortRange)],
          ),
        ));
    }
    if (prefixList != null) {
      result$
        ..add(const _i3.XmlElementName('PrefixList'))
        ..add(serializers.serialize(
          prefixList,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (protocols != null) {
      result$
        ..add(const _i3.XmlElementName('ProtocolSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          protocols,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (routeTableRoute != null) {
      result$
        ..add(const _i3.XmlElementName('RouteTableRoute'))
        ..add(serializers.serialize(
          routeTableRoute,
          specifiedType: const FullType(AnalysisRouteTableRoute),
        ));
    }
    if (routeTable != null) {
      result$
        ..add(const _i3.XmlElementName('RouteTable'))
        ..add(serializers.serialize(
          routeTable,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (securityGroup != null) {
      result$
        ..add(const _i3.XmlElementName('SecurityGroup'))
        ..add(serializers.serialize(
          securityGroup,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (securityGroupRule != null) {
      result$
        ..add(const _i3.XmlElementName('SecurityGroupRule'))
        ..add(serializers.serialize(
          securityGroupRule,
          specifiedType: const FullType(AnalysisSecurityGroupRule),
        ));
    }
    if (securityGroups != null) {
      result$
        ..add(const _i3.XmlElementName('SecurityGroupSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroups,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(AnalysisComponent)],
          ),
        ));
    }
    if (sourceVpc != null) {
      result$
        ..add(const _i3.XmlElementName('SourceVpc'))
        ..add(serializers.serialize(
          sourceVpc,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(String),
        ));
    }
    if (subnet != null) {
      result$
        ..add(const _i3.XmlElementName('Subnet'))
        ..add(serializers.serialize(
          subnet,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (subnetRouteTable != null) {
      result$
        ..add(const _i3.XmlElementName('SubnetRouteTable'))
        ..add(serializers.serialize(
          subnetRouteTable,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (vpc != null) {
      result$
        ..add(const _i3.XmlElementName('Vpc'))
        ..add(serializers.serialize(
          vpc,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (vpcEndpoint != null) {
      result$
        ..add(const _i3.XmlElementName('VpcEndpoint'))
        ..add(serializers.serialize(
          vpcEndpoint,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (vpnConnection != null) {
      result$
        ..add(const _i3.XmlElementName('VpnConnection'))
        ..add(serializers.serialize(
          vpnConnection,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (vpnGateway != null) {
      result$
        ..add(const _i3.XmlElementName('VpnGateway'))
        ..add(serializers.serialize(
          vpnGateway,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (transitGateway != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGateway'))
        ..add(serializers.serialize(
          transitGateway,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (transitGatewayRouteTable != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayRouteTable'))
        ..add(serializers.serialize(
          transitGatewayRouteTable,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (transitGatewayRouteTableRoute != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayRouteTableRoute'))
        ..add(serializers.serialize(
          transitGatewayRouteTableRoute,
          specifiedType: const FullType(TransitGatewayRouteTableRoute),
        ));
    }
    if (transitGatewayAttachment != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayAttachment'))
        ..add(serializers.serialize(
          transitGatewayAttachment,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (componentAccount != null) {
      result$
        ..add(const _i3.XmlElementName('ComponentAccount'))
        ..add(serializers.serialize(
          componentAccount,
          specifiedType: const FullType(String),
        ));
    }
    if (componentRegion != null) {
      result$
        ..add(const _i3.XmlElementName('ComponentRegion'))
        ..add(serializers.serialize(
          componentRegion,
          specifiedType: const FullType(String),
        ));
    }
    if (firewallStatelessRule != null) {
      result$
        ..add(const _i3.XmlElementName('FirewallStatelessRule'))
        ..add(serializers.serialize(
          firewallStatelessRule,
          specifiedType: const FullType(FirewallStatelessRule),
        ));
    }
    if (firewallStatefulRule != null) {
      result$
        ..add(const _i3.XmlElementName('FirewallStatefulRule'))
        ..add(serializers.serialize(
          firewallStatefulRule,
          specifiedType: const FullType(FirewallStatefulRule),
        ));
    }
    return result$;
  }
}
