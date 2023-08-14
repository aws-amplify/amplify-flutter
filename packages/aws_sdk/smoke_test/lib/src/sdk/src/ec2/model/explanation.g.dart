// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explanation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Explanation extends Explanation {
  @override
  final AnalysisComponent? acl;
  @override
  final AnalysisAclRule? aclRule;
  @override
  final String? address;
  @override
  final _i2.BuiltList<String>? addresses;
  @override
  final AnalysisComponent? attachedTo;
  @override
  final _i2.BuiltList<String>? availabilityZones;
  @override
  final _i2.BuiltList<String>? cidrs;
  @override
  final AnalysisComponent? component;
  @override
  final AnalysisComponent? customerGateway;
  @override
  final AnalysisComponent? destination;
  @override
  final AnalysisComponent? destinationVpc;
  @override
  final String? direction;
  @override
  final String? explanationCode;
  @override
  final AnalysisComponent? ingressRouteTable;
  @override
  final AnalysisComponent? internetGateway;
  @override
  final String? loadBalancerArn;
  @override
  final AnalysisLoadBalancerListener? classicLoadBalancerListener;
  @override
  final int loadBalancerListenerPort;
  @override
  final AnalysisLoadBalancerTarget? loadBalancerTarget;
  @override
  final AnalysisComponent? loadBalancerTargetGroup;
  @override
  final _i2.BuiltList<AnalysisComponent>? loadBalancerTargetGroups;
  @override
  final int loadBalancerTargetPort;
  @override
  final AnalysisComponent? elasticLoadBalancerListener;
  @override
  final String? missingComponent;
  @override
  final AnalysisComponent? natGateway;
  @override
  final AnalysisComponent? networkInterface;
  @override
  final String? packetField;
  @override
  final AnalysisComponent? vpcPeeringConnection;
  @override
  final int port;
  @override
  final _i2.BuiltList<PortRange>? portRanges;
  @override
  final AnalysisComponent? prefixList;
  @override
  final _i2.BuiltList<String>? protocols;
  @override
  final AnalysisRouteTableRoute? routeTableRoute;
  @override
  final AnalysisComponent? routeTable;
  @override
  final AnalysisComponent? securityGroup;
  @override
  final AnalysisSecurityGroupRule? securityGroupRule;
  @override
  final _i2.BuiltList<AnalysisComponent>? securityGroups;
  @override
  final AnalysisComponent? sourceVpc;
  @override
  final String? state;
  @override
  final AnalysisComponent? subnet;
  @override
  final AnalysisComponent? subnetRouteTable;
  @override
  final AnalysisComponent? vpc;
  @override
  final AnalysisComponent? vpcEndpoint;
  @override
  final AnalysisComponent? vpnConnection;
  @override
  final AnalysisComponent? vpnGateway;
  @override
  final AnalysisComponent? transitGateway;
  @override
  final AnalysisComponent? transitGatewayRouteTable;
  @override
  final TransitGatewayRouteTableRoute? transitGatewayRouteTableRoute;
  @override
  final AnalysisComponent? transitGatewayAttachment;
  @override
  final String? componentAccount;
  @override
  final String? componentRegion;
  @override
  final FirewallStatelessRule? firewallStatelessRule;
  @override
  final FirewallStatefulRule? firewallStatefulRule;

  factory _$Explanation([void Function(ExplanationBuilder)? updates]) =>
      (new ExplanationBuilder()..update(updates))._build();

  _$Explanation._(
      {this.acl,
      this.aclRule,
      this.address,
      this.addresses,
      this.attachedTo,
      this.availabilityZones,
      this.cidrs,
      this.component,
      this.customerGateway,
      this.destination,
      this.destinationVpc,
      this.direction,
      this.explanationCode,
      this.ingressRouteTable,
      this.internetGateway,
      this.loadBalancerArn,
      this.classicLoadBalancerListener,
      required this.loadBalancerListenerPort,
      this.loadBalancerTarget,
      this.loadBalancerTargetGroup,
      this.loadBalancerTargetGroups,
      required this.loadBalancerTargetPort,
      this.elasticLoadBalancerListener,
      this.missingComponent,
      this.natGateway,
      this.networkInterface,
      this.packetField,
      this.vpcPeeringConnection,
      required this.port,
      this.portRanges,
      this.prefixList,
      this.protocols,
      this.routeTableRoute,
      this.routeTable,
      this.securityGroup,
      this.securityGroupRule,
      this.securityGroups,
      this.sourceVpc,
      this.state,
      this.subnet,
      this.subnetRouteTable,
      this.vpc,
      this.vpcEndpoint,
      this.vpnConnection,
      this.vpnGateway,
      this.transitGateway,
      this.transitGatewayRouteTable,
      this.transitGatewayRouteTableRoute,
      this.transitGatewayAttachment,
      this.componentAccount,
      this.componentRegion,
      this.firewallStatelessRule,
      this.firewallStatefulRule})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        loadBalancerListenerPort, r'Explanation', 'loadBalancerListenerPort');
    BuiltValueNullFieldError.checkNotNull(
        loadBalancerTargetPort, r'Explanation', 'loadBalancerTargetPort');
    BuiltValueNullFieldError.checkNotNull(port, r'Explanation', 'port');
  }

  @override
  Explanation rebuild(void Function(ExplanationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExplanationBuilder toBuilder() => new ExplanationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Explanation &&
        acl == other.acl &&
        aclRule == other.aclRule &&
        address == other.address &&
        addresses == other.addresses &&
        attachedTo == other.attachedTo &&
        availabilityZones == other.availabilityZones &&
        cidrs == other.cidrs &&
        component == other.component &&
        customerGateway == other.customerGateway &&
        destination == other.destination &&
        destinationVpc == other.destinationVpc &&
        direction == other.direction &&
        explanationCode == other.explanationCode &&
        ingressRouteTable == other.ingressRouteTable &&
        internetGateway == other.internetGateway &&
        loadBalancerArn == other.loadBalancerArn &&
        classicLoadBalancerListener == other.classicLoadBalancerListener &&
        loadBalancerListenerPort == other.loadBalancerListenerPort &&
        loadBalancerTarget == other.loadBalancerTarget &&
        loadBalancerTargetGroup == other.loadBalancerTargetGroup &&
        loadBalancerTargetGroups == other.loadBalancerTargetGroups &&
        loadBalancerTargetPort == other.loadBalancerTargetPort &&
        elasticLoadBalancerListener == other.elasticLoadBalancerListener &&
        missingComponent == other.missingComponent &&
        natGateway == other.natGateway &&
        networkInterface == other.networkInterface &&
        packetField == other.packetField &&
        vpcPeeringConnection == other.vpcPeeringConnection &&
        port == other.port &&
        portRanges == other.portRanges &&
        prefixList == other.prefixList &&
        protocols == other.protocols &&
        routeTableRoute == other.routeTableRoute &&
        routeTable == other.routeTable &&
        securityGroup == other.securityGroup &&
        securityGroupRule == other.securityGroupRule &&
        securityGroups == other.securityGroups &&
        sourceVpc == other.sourceVpc &&
        state == other.state &&
        subnet == other.subnet &&
        subnetRouteTable == other.subnetRouteTable &&
        vpc == other.vpc &&
        vpcEndpoint == other.vpcEndpoint &&
        vpnConnection == other.vpnConnection &&
        vpnGateway == other.vpnGateway &&
        transitGateway == other.transitGateway &&
        transitGatewayRouteTable == other.transitGatewayRouteTable &&
        transitGatewayRouteTableRoute == other.transitGatewayRouteTableRoute &&
        transitGatewayAttachment == other.transitGatewayAttachment &&
        componentAccount == other.componentAccount &&
        componentRegion == other.componentRegion &&
        firewallStatelessRule == other.firewallStatelessRule &&
        firewallStatefulRule == other.firewallStatefulRule;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, acl.hashCode);
    _$hash = $jc(_$hash, aclRule.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, addresses.hashCode);
    _$hash = $jc(_$hash, attachedTo.hashCode);
    _$hash = $jc(_$hash, availabilityZones.hashCode);
    _$hash = $jc(_$hash, cidrs.hashCode);
    _$hash = $jc(_$hash, component.hashCode);
    _$hash = $jc(_$hash, customerGateway.hashCode);
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jc(_$hash, destinationVpc.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jc(_$hash, explanationCode.hashCode);
    _$hash = $jc(_$hash, ingressRouteTable.hashCode);
    _$hash = $jc(_$hash, internetGateway.hashCode);
    _$hash = $jc(_$hash, loadBalancerArn.hashCode);
    _$hash = $jc(_$hash, classicLoadBalancerListener.hashCode);
    _$hash = $jc(_$hash, loadBalancerListenerPort.hashCode);
    _$hash = $jc(_$hash, loadBalancerTarget.hashCode);
    _$hash = $jc(_$hash, loadBalancerTargetGroup.hashCode);
    _$hash = $jc(_$hash, loadBalancerTargetGroups.hashCode);
    _$hash = $jc(_$hash, loadBalancerTargetPort.hashCode);
    _$hash = $jc(_$hash, elasticLoadBalancerListener.hashCode);
    _$hash = $jc(_$hash, missingComponent.hashCode);
    _$hash = $jc(_$hash, natGateway.hashCode);
    _$hash = $jc(_$hash, networkInterface.hashCode);
    _$hash = $jc(_$hash, packetField.hashCode);
    _$hash = $jc(_$hash, vpcPeeringConnection.hashCode);
    _$hash = $jc(_$hash, port.hashCode);
    _$hash = $jc(_$hash, portRanges.hashCode);
    _$hash = $jc(_$hash, prefixList.hashCode);
    _$hash = $jc(_$hash, protocols.hashCode);
    _$hash = $jc(_$hash, routeTableRoute.hashCode);
    _$hash = $jc(_$hash, routeTable.hashCode);
    _$hash = $jc(_$hash, securityGroup.hashCode);
    _$hash = $jc(_$hash, securityGroupRule.hashCode);
    _$hash = $jc(_$hash, securityGroups.hashCode);
    _$hash = $jc(_$hash, sourceVpc.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, subnet.hashCode);
    _$hash = $jc(_$hash, subnetRouteTable.hashCode);
    _$hash = $jc(_$hash, vpc.hashCode);
    _$hash = $jc(_$hash, vpcEndpoint.hashCode);
    _$hash = $jc(_$hash, vpnConnection.hashCode);
    _$hash = $jc(_$hash, vpnGateway.hashCode);
    _$hash = $jc(_$hash, transitGateway.hashCode);
    _$hash = $jc(_$hash, transitGatewayRouteTable.hashCode);
    _$hash = $jc(_$hash, transitGatewayRouteTableRoute.hashCode);
    _$hash = $jc(_$hash, transitGatewayAttachment.hashCode);
    _$hash = $jc(_$hash, componentAccount.hashCode);
    _$hash = $jc(_$hash, componentRegion.hashCode);
    _$hash = $jc(_$hash, firewallStatelessRule.hashCode);
    _$hash = $jc(_$hash, firewallStatefulRule.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExplanationBuilder implements Builder<Explanation, ExplanationBuilder> {
  _$Explanation? _$v;

  AnalysisComponentBuilder? _acl;
  AnalysisComponentBuilder get acl =>
      _$this._acl ??= new AnalysisComponentBuilder();
  set acl(AnalysisComponentBuilder? acl) => _$this._acl = acl;

  AnalysisAclRuleBuilder? _aclRule;
  AnalysisAclRuleBuilder get aclRule =>
      _$this._aclRule ??= new AnalysisAclRuleBuilder();
  set aclRule(AnalysisAclRuleBuilder? aclRule) => _$this._aclRule = aclRule;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  _i2.ListBuilder<String>? _addresses;
  _i2.ListBuilder<String> get addresses =>
      _$this._addresses ??= new _i2.ListBuilder<String>();
  set addresses(_i2.ListBuilder<String>? addresses) =>
      _$this._addresses = addresses;

  AnalysisComponentBuilder? _attachedTo;
  AnalysisComponentBuilder get attachedTo =>
      _$this._attachedTo ??= new AnalysisComponentBuilder();
  set attachedTo(AnalysisComponentBuilder? attachedTo) =>
      _$this._attachedTo = attachedTo;

  _i2.ListBuilder<String>? _availabilityZones;
  _i2.ListBuilder<String> get availabilityZones =>
      _$this._availabilityZones ??= new _i2.ListBuilder<String>();
  set availabilityZones(_i2.ListBuilder<String>? availabilityZones) =>
      _$this._availabilityZones = availabilityZones;

  _i2.ListBuilder<String>? _cidrs;
  _i2.ListBuilder<String> get cidrs =>
      _$this._cidrs ??= new _i2.ListBuilder<String>();
  set cidrs(_i2.ListBuilder<String>? cidrs) => _$this._cidrs = cidrs;

  AnalysisComponentBuilder? _component;
  AnalysisComponentBuilder get component =>
      _$this._component ??= new AnalysisComponentBuilder();
  set component(AnalysisComponentBuilder? component) =>
      _$this._component = component;

  AnalysisComponentBuilder? _customerGateway;
  AnalysisComponentBuilder get customerGateway =>
      _$this._customerGateway ??= new AnalysisComponentBuilder();
  set customerGateway(AnalysisComponentBuilder? customerGateway) =>
      _$this._customerGateway = customerGateway;

  AnalysisComponentBuilder? _destination;
  AnalysisComponentBuilder get destination =>
      _$this._destination ??= new AnalysisComponentBuilder();
  set destination(AnalysisComponentBuilder? destination) =>
      _$this._destination = destination;

  AnalysisComponentBuilder? _destinationVpc;
  AnalysisComponentBuilder get destinationVpc =>
      _$this._destinationVpc ??= new AnalysisComponentBuilder();
  set destinationVpc(AnalysisComponentBuilder? destinationVpc) =>
      _$this._destinationVpc = destinationVpc;

  String? _direction;
  String? get direction => _$this._direction;
  set direction(String? direction) => _$this._direction = direction;

  String? _explanationCode;
  String? get explanationCode => _$this._explanationCode;
  set explanationCode(String? explanationCode) =>
      _$this._explanationCode = explanationCode;

  AnalysisComponentBuilder? _ingressRouteTable;
  AnalysisComponentBuilder get ingressRouteTable =>
      _$this._ingressRouteTable ??= new AnalysisComponentBuilder();
  set ingressRouteTable(AnalysisComponentBuilder? ingressRouteTable) =>
      _$this._ingressRouteTable = ingressRouteTable;

  AnalysisComponentBuilder? _internetGateway;
  AnalysisComponentBuilder get internetGateway =>
      _$this._internetGateway ??= new AnalysisComponentBuilder();
  set internetGateway(AnalysisComponentBuilder? internetGateway) =>
      _$this._internetGateway = internetGateway;

  String? _loadBalancerArn;
  String? get loadBalancerArn => _$this._loadBalancerArn;
  set loadBalancerArn(String? loadBalancerArn) =>
      _$this._loadBalancerArn = loadBalancerArn;

  AnalysisLoadBalancerListenerBuilder? _classicLoadBalancerListener;
  AnalysisLoadBalancerListenerBuilder get classicLoadBalancerListener =>
      _$this._classicLoadBalancerListener ??=
          new AnalysisLoadBalancerListenerBuilder();
  set classicLoadBalancerListener(
          AnalysisLoadBalancerListenerBuilder? classicLoadBalancerListener) =>
      _$this._classicLoadBalancerListener = classicLoadBalancerListener;

  int? _loadBalancerListenerPort;
  int? get loadBalancerListenerPort => _$this._loadBalancerListenerPort;
  set loadBalancerListenerPort(int? loadBalancerListenerPort) =>
      _$this._loadBalancerListenerPort = loadBalancerListenerPort;

  AnalysisLoadBalancerTargetBuilder? _loadBalancerTarget;
  AnalysisLoadBalancerTargetBuilder get loadBalancerTarget =>
      _$this._loadBalancerTarget ??= new AnalysisLoadBalancerTargetBuilder();
  set loadBalancerTarget(
          AnalysisLoadBalancerTargetBuilder? loadBalancerTarget) =>
      _$this._loadBalancerTarget = loadBalancerTarget;

  AnalysisComponentBuilder? _loadBalancerTargetGroup;
  AnalysisComponentBuilder get loadBalancerTargetGroup =>
      _$this._loadBalancerTargetGroup ??= new AnalysisComponentBuilder();
  set loadBalancerTargetGroup(
          AnalysisComponentBuilder? loadBalancerTargetGroup) =>
      _$this._loadBalancerTargetGroup = loadBalancerTargetGroup;

  _i2.ListBuilder<AnalysisComponent>? _loadBalancerTargetGroups;
  _i2.ListBuilder<AnalysisComponent> get loadBalancerTargetGroups =>
      _$this._loadBalancerTargetGroups ??=
          new _i2.ListBuilder<AnalysisComponent>();
  set loadBalancerTargetGroups(
          _i2.ListBuilder<AnalysisComponent>? loadBalancerTargetGroups) =>
      _$this._loadBalancerTargetGroups = loadBalancerTargetGroups;

  int? _loadBalancerTargetPort;
  int? get loadBalancerTargetPort => _$this._loadBalancerTargetPort;
  set loadBalancerTargetPort(int? loadBalancerTargetPort) =>
      _$this._loadBalancerTargetPort = loadBalancerTargetPort;

  AnalysisComponentBuilder? _elasticLoadBalancerListener;
  AnalysisComponentBuilder get elasticLoadBalancerListener =>
      _$this._elasticLoadBalancerListener ??= new AnalysisComponentBuilder();
  set elasticLoadBalancerListener(
          AnalysisComponentBuilder? elasticLoadBalancerListener) =>
      _$this._elasticLoadBalancerListener = elasticLoadBalancerListener;

  String? _missingComponent;
  String? get missingComponent => _$this._missingComponent;
  set missingComponent(String? missingComponent) =>
      _$this._missingComponent = missingComponent;

  AnalysisComponentBuilder? _natGateway;
  AnalysisComponentBuilder get natGateway =>
      _$this._natGateway ??= new AnalysisComponentBuilder();
  set natGateway(AnalysisComponentBuilder? natGateway) =>
      _$this._natGateway = natGateway;

  AnalysisComponentBuilder? _networkInterface;
  AnalysisComponentBuilder get networkInterface =>
      _$this._networkInterface ??= new AnalysisComponentBuilder();
  set networkInterface(AnalysisComponentBuilder? networkInterface) =>
      _$this._networkInterface = networkInterface;

  String? _packetField;
  String? get packetField => _$this._packetField;
  set packetField(String? packetField) => _$this._packetField = packetField;

  AnalysisComponentBuilder? _vpcPeeringConnection;
  AnalysisComponentBuilder get vpcPeeringConnection =>
      _$this._vpcPeeringConnection ??= new AnalysisComponentBuilder();
  set vpcPeeringConnection(AnalysisComponentBuilder? vpcPeeringConnection) =>
      _$this._vpcPeeringConnection = vpcPeeringConnection;

  int? _port;
  int? get port => _$this._port;
  set port(int? port) => _$this._port = port;

  _i2.ListBuilder<PortRange>? _portRanges;
  _i2.ListBuilder<PortRange> get portRanges =>
      _$this._portRanges ??= new _i2.ListBuilder<PortRange>();
  set portRanges(_i2.ListBuilder<PortRange>? portRanges) =>
      _$this._portRanges = portRanges;

  AnalysisComponentBuilder? _prefixList;
  AnalysisComponentBuilder get prefixList =>
      _$this._prefixList ??= new AnalysisComponentBuilder();
  set prefixList(AnalysisComponentBuilder? prefixList) =>
      _$this._prefixList = prefixList;

  _i2.ListBuilder<String>? _protocols;
  _i2.ListBuilder<String> get protocols =>
      _$this._protocols ??= new _i2.ListBuilder<String>();
  set protocols(_i2.ListBuilder<String>? protocols) =>
      _$this._protocols = protocols;

  AnalysisRouteTableRouteBuilder? _routeTableRoute;
  AnalysisRouteTableRouteBuilder get routeTableRoute =>
      _$this._routeTableRoute ??= new AnalysisRouteTableRouteBuilder();
  set routeTableRoute(AnalysisRouteTableRouteBuilder? routeTableRoute) =>
      _$this._routeTableRoute = routeTableRoute;

  AnalysisComponentBuilder? _routeTable;
  AnalysisComponentBuilder get routeTable =>
      _$this._routeTable ??= new AnalysisComponentBuilder();
  set routeTable(AnalysisComponentBuilder? routeTable) =>
      _$this._routeTable = routeTable;

  AnalysisComponentBuilder? _securityGroup;
  AnalysisComponentBuilder get securityGroup =>
      _$this._securityGroup ??= new AnalysisComponentBuilder();
  set securityGroup(AnalysisComponentBuilder? securityGroup) =>
      _$this._securityGroup = securityGroup;

  AnalysisSecurityGroupRuleBuilder? _securityGroupRule;
  AnalysisSecurityGroupRuleBuilder get securityGroupRule =>
      _$this._securityGroupRule ??= new AnalysisSecurityGroupRuleBuilder();
  set securityGroupRule(AnalysisSecurityGroupRuleBuilder? securityGroupRule) =>
      _$this._securityGroupRule = securityGroupRule;

  _i2.ListBuilder<AnalysisComponent>? _securityGroups;
  _i2.ListBuilder<AnalysisComponent> get securityGroups =>
      _$this._securityGroups ??= new _i2.ListBuilder<AnalysisComponent>();
  set securityGroups(_i2.ListBuilder<AnalysisComponent>? securityGroups) =>
      _$this._securityGroups = securityGroups;

  AnalysisComponentBuilder? _sourceVpc;
  AnalysisComponentBuilder get sourceVpc =>
      _$this._sourceVpc ??= new AnalysisComponentBuilder();
  set sourceVpc(AnalysisComponentBuilder? sourceVpc) =>
      _$this._sourceVpc = sourceVpc;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  AnalysisComponentBuilder? _subnet;
  AnalysisComponentBuilder get subnet =>
      _$this._subnet ??= new AnalysisComponentBuilder();
  set subnet(AnalysisComponentBuilder? subnet) => _$this._subnet = subnet;

  AnalysisComponentBuilder? _subnetRouteTable;
  AnalysisComponentBuilder get subnetRouteTable =>
      _$this._subnetRouteTable ??= new AnalysisComponentBuilder();
  set subnetRouteTable(AnalysisComponentBuilder? subnetRouteTable) =>
      _$this._subnetRouteTable = subnetRouteTable;

  AnalysisComponentBuilder? _vpc;
  AnalysisComponentBuilder get vpc =>
      _$this._vpc ??= new AnalysisComponentBuilder();
  set vpc(AnalysisComponentBuilder? vpc) => _$this._vpc = vpc;

  AnalysisComponentBuilder? _vpcEndpoint;
  AnalysisComponentBuilder get vpcEndpoint =>
      _$this._vpcEndpoint ??= new AnalysisComponentBuilder();
  set vpcEndpoint(AnalysisComponentBuilder? vpcEndpoint) =>
      _$this._vpcEndpoint = vpcEndpoint;

  AnalysisComponentBuilder? _vpnConnection;
  AnalysisComponentBuilder get vpnConnection =>
      _$this._vpnConnection ??= new AnalysisComponentBuilder();
  set vpnConnection(AnalysisComponentBuilder? vpnConnection) =>
      _$this._vpnConnection = vpnConnection;

  AnalysisComponentBuilder? _vpnGateway;
  AnalysisComponentBuilder get vpnGateway =>
      _$this._vpnGateway ??= new AnalysisComponentBuilder();
  set vpnGateway(AnalysisComponentBuilder? vpnGateway) =>
      _$this._vpnGateway = vpnGateway;

  AnalysisComponentBuilder? _transitGateway;
  AnalysisComponentBuilder get transitGateway =>
      _$this._transitGateway ??= new AnalysisComponentBuilder();
  set transitGateway(AnalysisComponentBuilder? transitGateway) =>
      _$this._transitGateway = transitGateway;

  AnalysisComponentBuilder? _transitGatewayRouteTable;
  AnalysisComponentBuilder get transitGatewayRouteTable =>
      _$this._transitGatewayRouteTable ??= new AnalysisComponentBuilder();
  set transitGatewayRouteTable(
          AnalysisComponentBuilder? transitGatewayRouteTable) =>
      _$this._transitGatewayRouteTable = transitGatewayRouteTable;

  TransitGatewayRouteTableRouteBuilder? _transitGatewayRouteTableRoute;
  TransitGatewayRouteTableRouteBuilder get transitGatewayRouteTableRoute =>
      _$this._transitGatewayRouteTableRoute ??=
          new TransitGatewayRouteTableRouteBuilder();
  set transitGatewayRouteTableRoute(
          TransitGatewayRouteTableRouteBuilder?
              transitGatewayRouteTableRoute) =>
      _$this._transitGatewayRouteTableRoute = transitGatewayRouteTableRoute;

  AnalysisComponentBuilder? _transitGatewayAttachment;
  AnalysisComponentBuilder get transitGatewayAttachment =>
      _$this._transitGatewayAttachment ??= new AnalysisComponentBuilder();
  set transitGatewayAttachment(
          AnalysisComponentBuilder? transitGatewayAttachment) =>
      _$this._transitGatewayAttachment = transitGatewayAttachment;

  String? _componentAccount;
  String? get componentAccount => _$this._componentAccount;
  set componentAccount(String? componentAccount) =>
      _$this._componentAccount = componentAccount;

  String? _componentRegion;
  String? get componentRegion => _$this._componentRegion;
  set componentRegion(String? componentRegion) =>
      _$this._componentRegion = componentRegion;

  FirewallStatelessRuleBuilder? _firewallStatelessRule;
  FirewallStatelessRuleBuilder get firewallStatelessRule =>
      _$this._firewallStatelessRule ??= new FirewallStatelessRuleBuilder();
  set firewallStatelessRule(
          FirewallStatelessRuleBuilder? firewallStatelessRule) =>
      _$this._firewallStatelessRule = firewallStatelessRule;

  FirewallStatefulRuleBuilder? _firewallStatefulRule;
  FirewallStatefulRuleBuilder get firewallStatefulRule =>
      _$this._firewallStatefulRule ??= new FirewallStatefulRuleBuilder();
  set firewallStatefulRule(FirewallStatefulRuleBuilder? firewallStatefulRule) =>
      _$this._firewallStatefulRule = firewallStatefulRule;

  ExplanationBuilder() {
    Explanation._init(this);
  }

  ExplanationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _acl = $v.acl?.toBuilder();
      _aclRule = $v.aclRule?.toBuilder();
      _address = $v.address;
      _addresses = $v.addresses?.toBuilder();
      _attachedTo = $v.attachedTo?.toBuilder();
      _availabilityZones = $v.availabilityZones?.toBuilder();
      _cidrs = $v.cidrs?.toBuilder();
      _component = $v.component?.toBuilder();
      _customerGateway = $v.customerGateway?.toBuilder();
      _destination = $v.destination?.toBuilder();
      _destinationVpc = $v.destinationVpc?.toBuilder();
      _direction = $v.direction;
      _explanationCode = $v.explanationCode;
      _ingressRouteTable = $v.ingressRouteTable?.toBuilder();
      _internetGateway = $v.internetGateway?.toBuilder();
      _loadBalancerArn = $v.loadBalancerArn;
      _classicLoadBalancerListener =
          $v.classicLoadBalancerListener?.toBuilder();
      _loadBalancerListenerPort = $v.loadBalancerListenerPort;
      _loadBalancerTarget = $v.loadBalancerTarget?.toBuilder();
      _loadBalancerTargetGroup = $v.loadBalancerTargetGroup?.toBuilder();
      _loadBalancerTargetGroups = $v.loadBalancerTargetGroups?.toBuilder();
      _loadBalancerTargetPort = $v.loadBalancerTargetPort;
      _elasticLoadBalancerListener =
          $v.elasticLoadBalancerListener?.toBuilder();
      _missingComponent = $v.missingComponent;
      _natGateway = $v.natGateway?.toBuilder();
      _networkInterface = $v.networkInterface?.toBuilder();
      _packetField = $v.packetField;
      _vpcPeeringConnection = $v.vpcPeeringConnection?.toBuilder();
      _port = $v.port;
      _portRanges = $v.portRanges?.toBuilder();
      _prefixList = $v.prefixList?.toBuilder();
      _protocols = $v.protocols?.toBuilder();
      _routeTableRoute = $v.routeTableRoute?.toBuilder();
      _routeTable = $v.routeTable?.toBuilder();
      _securityGroup = $v.securityGroup?.toBuilder();
      _securityGroupRule = $v.securityGroupRule?.toBuilder();
      _securityGroups = $v.securityGroups?.toBuilder();
      _sourceVpc = $v.sourceVpc?.toBuilder();
      _state = $v.state;
      _subnet = $v.subnet?.toBuilder();
      _subnetRouteTable = $v.subnetRouteTable?.toBuilder();
      _vpc = $v.vpc?.toBuilder();
      _vpcEndpoint = $v.vpcEndpoint?.toBuilder();
      _vpnConnection = $v.vpnConnection?.toBuilder();
      _vpnGateway = $v.vpnGateway?.toBuilder();
      _transitGateway = $v.transitGateway?.toBuilder();
      _transitGatewayRouteTable = $v.transitGatewayRouteTable?.toBuilder();
      _transitGatewayRouteTableRoute =
          $v.transitGatewayRouteTableRoute?.toBuilder();
      _transitGatewayAttachment = $v.transitGatewayAttachment?.toBuilder();
      _componentAccount = $v.componentAccount;
      _componentRegion = $v.componentRegion;
      _firewallStatelessRule = $v.firewallStatelessRule?.toBuilder();
      _firewallStatefulRule = $v.firewallStatefulRule?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Explanation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Explanation;
  }

  @override
  void update(void Function(ExplanationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Explanation build() => _build();

  _$Explanation _build() {
    _$Explanation _$result;
    try {
      _$result = _$v ??
          new _$Explanation._(
              acl: _acl?.build(),
              aclRule: _aclRule?.build(),
              address: address,
              addresses: _addresses?.build(),
              attachedTo: _attachedTo?.build(),
              availabilityZones: _availabilityZones?.build(),
              cidrs: _cidrs?.build(),
              component: _component?.build(),
              customerGateway: _customerGateway?.build(),
              destination: _destination?.build(),
              destinationVpc: _destinationVpc?.build(),
              direction: direction,
              explanationCode: explanationCode,
              ingressRouteTable: _ingressRouteTable?.build(),
              internetGateway: _internetGateway?.build(),
              loadBalancerArn: loadBalancerArn,
              classicLoadBalancerListener:
                  _classicLoadBalancerListener?.build(),
              loadBalancerListenerPort: BuiltValueNullFieldError.checkNotNull(
                  loadBalancerListenerPort,
                  r'Explanation',
                  'loadBalancerListenerPort'),
              loadBalancerTarget: _loadBalancerTarget?.build(),
              loadBalancerTargetGroup: _loadBalancerTargetGroup?.build(),
              loadBalancerTargetGroups: _loadBalancerTargetGroups?.build(),
              loadBalancerTargetPort: BuiltValueNullFieldError.checkNotNull(
                  loadBalancerTargetPort,
                  r'Explanation',
                  'loadBalancerTargetPort'),
              elasticLoadBalancerListener:
                  _elasticLoadBalancerListener?.build(),
              missingComponent: missingComponent,
              natGateway: _natGateway?.build(),
              networkInterface: _networkInterface?.build(),
              packetField: packetField,
              vpcPeeringConnection: _vpcPeeringConnection?.build(),
              port: BuiltValueNullFieldError.checkNotNull(
                  port, r'Explanation', 'port'),
              portRanges: _portRanges?.build(),
              prefixList: _prefixList?.build(),
              protocols: _protocols?.build(),
              routeTableRoute: _routeTableRoute?.build(),
              routeTable: _routeTable?.build(),
              securityGroup: _securityGroup?.build(),
              securityGroupRule: _securityGroupRule?.build(),
              securityGroups: _securityGroups?.build(),
              sourceVpc: _sourceVpc?.build(),
              state: state,
              subnet: _subnet?.build(),
              subnetRouteTable: _subnetRouteTable?.build(),
              vpc: _vpc?.build(),
              vpcEndpoint: _vpcEndpoint?.build(),
              vpnConnection: _vpnConnection?.build(),
              vpnGateway: _vpnGateway?.build(),
              transitGateway: _transitGateway?.build(),
              transitGatewayRouteTable: _transitGatewayRouteTable?.build(),
              transitGatewayRouteTableRoute:
                  _transitGatewayRouteTableRoute?.build(),
              transitGatewayAttachment: _transitGatewayAttachment?.build(),
              componentAccount: componentAccount,
              componentRegion: componentRegion,
              firewallStatelessRule: _firewallStatelessRule?.build(),
              firewallStatefulRule: _firewallStatefulRule?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'acl';
        _acl?.build();
        _$failedField = 'aclRule';
        _aclRule?.build();

        _$failedField = 'addresses';
        _addresses?.build();
        _$failedField = 'attachedTo';
        _attachedTo?.build();
        _$failedField = 'availabilityZones';
        _availabilityZones?.build();
        _$failedField = 'cidrs';
        _cidrs?.build();
        _$failedField = 'component';
        _component?.build();
        _$failedField = 'customerGateway';
        _customerGateway?.build();
        _$failedField = 'destination';
        _destination?.build();
        _$failedField = 'destinationVpc';
        _destinationVpc?.build();

        _$failedField = 'ingressRouteTable';
        _ingressRouteTable?.build();
        _$failedField = 'internetGateway';
        _internetGateway?.build();

        _$failedField = 'classicLoadBalancerListener';
        _classicLoadBalancerListener?.build();

        _$failedField = 'loadBalancerTarget';
        _loadBalancerTarget?.build();
        _$failedField = 'loadBalancerTargetGroup';
        _loadBalancerTargetGroup?.build();
        _$failedField = 'loadBalancerTargetGroups';
        _loadBalancerTargetGroups?.build();

        _$failedField = 'elasticLoadBalancerListener';
        _elasticLoadBalancerListener?.build();

        _$failedField = 'natGateway';
        _natGateway?.build();
        _$failedField = 'networkInterface';
        _networkInterface?.build();

        _$failedField = 'vpcPeeringConnection';
        _vpcPeeringConnection?.build();

        _$failedField = 'portRanges';
        _portRanges?.build();
        _$failedField = 'prefixList';
        _prefixList?.build();
        _$failedField = 'protocols';
        _protocols?.build();
        _$failedField = 'routeTableRoute';
        _routeTableRoute?.build();
        _$failedField = 'routeTable';
        _routeTable?.build();
        _$failedField = 'securityGroup';
        _securityGroup?.build();
        _$failedField = 'securityGroupRule';
        _securityGroupRule?.build();
        _$failedField = 'securityGroups';
        _securityGroups?.build();
        _$failedField = 'sourceVpc';
        _sourceVpc?.build();

        _$failedField = 'subnet';
        _subnet?.build();
        _$failedField = 'subnetRouteTable';
        _subnetRouteTable?.build();
        _$failedField = 'vpc';
        _vpc?.build();
        _$failedField = 'vpcEndpoint';
        _vpcEndpoint?.build();
        _$failedField = 'vpnConnection';
        _vpnConnection?.build();
        _$failedField = 'vpnGateway';
        _vpnGateway?.build();
        _$failedField = 'transitGateway';
        _transitGateway?.build();
        _$failedField = 'transitGatewayRouteTable';
        _transitGatewayRouteTable?.build();
        _$failedField = 'transitGatewayRouteTableRoute';
        _transitGatewayRouteTableRoute?.build();
        _$failedField = 'transitGatewayAttachment';
        _transitGatewayAttachment?.build();

        _$failedField = 'firewallStatelessRule';
        _firewallStatelessRule?.build();
        _$failedField = 'firewallStatefulRule';
        _firewallStatefulRule?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Explanation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
