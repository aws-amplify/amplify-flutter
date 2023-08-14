// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'path_component.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PathComponent extends PathComponent {
  @override
  final int sequenceNumber;
  @override
  final AnalysisAclRule? aclRule;
  @override
  final AnalysisComponent? attachedTo;
  @override
  final AnalysisComponent? component;
  @override
  final AnalysisComponent? destinationVpc;
  @override
  final AnalysisPacketHeader? outboundHeader;
  @override
  final AnalysisPacketHeader? inboundHeader;
  @override
  final AnalysisRouteTableRoute? routeTableRoute;
  @override
  final AnalysisSecurityGroupRule? securityGroupRule;
  @override
  final AnalysisComponent? sourceVpc;
  @override
  final AnalysisComponent? subnet;
  @override
  final AnalysisComponent? vpc;
  @override
  final _i2.BuiltList<AdditionalDetail>? additionalDetails;
  @override
  final AnalysisComponent? transitGateway;
  @override
  final TransitGatewayRouteTableRoute? transitGatewayRouteTableRoute;
  @override
  final _i2.BuiltList<Explanation>? explanations;
  @override
  final AnalysisComponent? elasticLoadBalancerListener;
  @override
  final FirewallStatelessRule? firewallStatelessRule;
  @override
  final FirewallStatefulRule? firewallStatefulRule;
  @override
  final String? serviceName;

  factory _$PathComponent([void Function(PathComponentBuilder)? updates]) =>
      (new PathComponentBuilder()..update(updates))._build();

  _$PathComponent._(
      {required this.sequenceNumber,
      this.aclRule,
      this.attachedTo,
      this.component,
      this.destinationVpc,
      this.outboundHeader,
      this.inboundHeader,
      this.routeTableRoute,
      this.securityGroupRule,
      this.sourceVpc,
      this.subnet,
      this.vpc,
      this.additionalDetails,
      this.transitGateway,
      this.transitGatewayRouteTableRoute,
      this.explanations,
      this.elasticLoadBalancerListener,
      this.firewallStatelessRule,
      this.firewallStatefulRule,
      this.serviceName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        sequenceNumber, r'PathComponent', 'sequenceNumber');
  }

  @override
  PathComponent rebuild(void Function(PathComponentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PathComponentBuilder toBuilder() => new PathComponentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PathComponent &&
        sequenceNumber == other.sequenceNumber &&
        aclRule == other.aclRule &&
        attachedTo == other.attachedTo &&
        component == other.component &&
        destinationVpc == other.destinationVpc &&
        outboundHeader == other.outboundHeader &&
        inboundHeader == other.inboundHeader &&
        routeTableRoute == other.routeTableRoute &&
        securityGroupRule == other.securityGroupRule &&
        sourceVpc == other.sourceVpc &&
        subnet == other.subnet &&
        vpc == other.vpc &&
        additionalDetails == other.additionalDetails &&
        transitGateway == other.transitGateway &&
        transitGatewayRouteTableRoute == other.transitGatewayRouteTableRoute &&
        explanations == other.explanations &&
        elasticLoadBalancerListener == other.elasticLoadBalancerListener &&
        firewallStatelessRule == other.firewallStatelessRule &&
        firewallStatefulRule == other.firewallStatefulRule &&
        serviceName == other.serviceName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sequenceNumber.hashCode);
    _$hash = $jc(_$hash, aclRule.hashCode);
    _$hash = $jc(_$hash, attachedTo.hashCode);
    _$hash = $jc(_$hash, component.hashCode);
    _$hash = $jc(_$hash, destinationVpc.hashCode);
    _$hash = $jc(_$hash, outboundHeader.hashCode);
    _$hash = $jc(_$hash, inboundHeader.hashCode);
    _$hash = $jc(_$hash, routeTableRoute.hashCode);
    _$hash = $jc(_$hash, securityGroupRule.hashCode);
    _$hash = $jc(_$hash, sourceVpc.hashCode);
    _$hash = $jc(_$hash, subnet.hashCode);
    _$hash = $jc(_$hash, vpc.hashCode);
    _$hash = $jc(_$hash, additionalDetails.hashCode);
    _$hash = $jc(_$hash, transitGateway.hashCode);
    _$hash = $jc(_$hash, transitGatewayRouteTableRoute.hashCode);
    _$hash = $jc(_$hash, explanations.hashCode);
    _$hash = $jc(_$hash, elasticLoadBalancerListener.hashCode);
    _$hash = $jc(_$hash, firewallStatelessRule.hashCode);
    _$hash = $jc(_$hash, firewallStatefulRule.hashCode);
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PathComponentBuilder
    implements Builder<PathComponent, PathComponentBuilder> {
  _$PathComponent? _$v;

  int? _sequenceNumber;
  int? get sequenceNumber => _$this._sequenceNumber;
  set sequenceNumber(int? sequenceNumber) =>
      _$this._sequenceNumber = sequenceNumber;

  AnalysisAclRuleBuilder? _aclRule;
  AnalysisAclRuleBuilder get aclRule =>
      _$this._aclRule ??= new AnalysisAclRuleBuilder();
  set aclRule(AnalysisAclRuleBuilder? aclRule) => _$this._aclRule = aclRule;

  AnalysisComponentBuilder? _attachedTo;
  AnalysisComponentBuilder get attachedTo =>
      _$this._attachedTo ??= new AnalysisComponentBuilder();
  set attachedTo(AnalysisComponentBuilder? attachedTo) =>
      _$this._attachedTo = attachedTo;

  AnalysisComponentBuilder? _component;
  AnalysisComponentBuilder get component =>
      _$this._component ??= new AnalysisComponentBuilder();
  set component(AnalysisComponentBuilder? component) =>
      _$this._component = component;

  AnalysisComponentBuilder? _destinationVpc;
  AnalysisComponentBuilder get destinationVpc =>
      _$this._destinationVpc ??= new AnalysisComponentBuilder();
  set destinationVpc(AnalysisComponentBuilder? destinationVpc) =>
      _$this._destinationVpc = destinationVpc;

  AnalysisPacketHeaderBuilder? _outboundHeader;
  AnalysisPacketHeaderBuilder get outboundHeader =>
      _$this._outboundHeader ??= new AnalysisPacketHeaderBuilder();
  set outboundHeader(AnalysisPacketHeaderBuilder? outboundHeader) =>
      _$this._outboundHeader = outboundHeader;

  AnalysisPacketHeaderBuilder? _inboundHeader;
  AnalysisPacketHeaderBuilder get inboundHeader =>
      _$this._inboundHeader ??= new AnalysisPacketHeaderBuilder();
  set inboundHeader(AnalysisPacketHeaderBuilder? inboundHeader) =>
      _$this._inboundHeader = inboundHeader;

  AnalysisRouteTableRouteBuilder? _routeTableRoute;
  AnalysisRouteTableRouteBuilder get routeTableRoute =>
      _$this._routeTableRoute ??= new AnalysisRouteTableRouteBuilder();
  set routeTableRoute(AnalysisRouteTableRouteBuilder? routeTableRoute) =>
      _$this._routeTableRoute = routeTableRoute;

  AnalysisSecurityGroupRuleBuilder? _securityGroupRule;
  AnalysisSecurityGroupRuleBuilder get securityGroupRule =>
      _$this._securityGroupRule ??= new AnalysisSecurityGroupRuleBuilder();
  set securityGroupRule(AnalysisSecurityGroupRuleBuilder? securityGroupRule) =>
      _$this._securityGroupRule = securityGroupRule;

  AnalysisComponentBuilder? _sourceVpc;
  AnalysisComponentBuilder get sourceVpc =>
      _$this._sourceVpc ??= new AnalysisComponentBuilder();
  set sourceVpc(AnalysisComponentBuilder? sourceVpc) =>
      _$this._sourceVpc = sourceVpc;

  AnalysisComponentBuilder? _subnet;
  AnalysisComponentBuilder get subnet =>
      _$this._subnet ??= new AnalysisComponentBuilder();
  set subnet(AnalysisComponentBuilder? subnet) => _$this._subnet = subnet;

  AnalysisComponentBuilder? _vpc;
  AnalysisComponentBuilder get vpc =>
      _$this._vpc ??= new AnalysisComponentBuilder();
  set vpc(AnalysisComponentBuilder? vpc) => _$this._vpc = vpc;

  _i2.ListBuilder<AdditionalDetail>? _additionalDetails;
  _i2.ListBuilder<AdditionalDetail> get additionalDetails =>
      _$this._additionalDetails ??= new _i2.ListBuilder<AdditionalDetail>();
  set additionalDetails(_i2.ListBuilder<AdditionalDetail>? additionalDetails) =>
      _$this._additionalDetails = additionalDetails;

  AnalysisComponentBuilder? _transitGateway;
  AnalysisComponentBuilder get transitGateway =>
      _$this._transitGateway ??= new AnalysisComponentBuilder();
  set transitGateway(AnalysisComponentBuilder? transitGateway) =>
      _$this._transitGateway = transitGateway;

  TransitGatewayRouteTableRouteBuilder? _transitGatewayRouteTableRoute;
  TransitGatewayRouteTableRouteBuilder get transitGatewayRouteTableRoute =>
      _$this._transitGatewayRouteTableRoute ??=
          new TransitGatewayRouteTableRouteBuilder();
  set transitGatewayRouteTableRoute(
          TransitGatewayRouteTableRouteBuilder?
              transitGatewayRouteTableRoute) =>
      _$this._transitGatewayRouteTableRoute = transitGatewayRouteTableRoute;

  _i2.ListBuilder<Explanation>? _explanations;
  _i2.ListBuilder<Explanation> get explanations =>
      _$this._explanations ??= new _i2.ListBuilder<Explanation>();
  set explanations(_i2.ListBuilder<Explanation>? explanations) =>
      _$this._explanations = explanations;

  AnalysisComponentBuilder? _elasticLoadBalancerListener;
  AnalysisComponentBuilder get elasticLoadBalancerListener =>
      _$this._elasticLoadBalancerListener ??= new AnalysisComponentBuilder();
  set elasticLoadBalancerListener(
          AnalysisComponentBuilder? elasticLoadBalancerListener) =>
      _$this._elasticLoadBalancerListener = elasticLoadBalancerListener;

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

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  PathComponentBuilder() {
    PathComponent._init(this);
  }

  PathComponentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sequenceNumber = $v.sequenceNumber;
      _aclRule = $v.aclRule?.toBuilder();
      _attachedTo = $v.attachedTo?.toBuilder();
      _component = $v.component?.toBuilder();
      _destinationVpc = $v.destinationVpc?.toBuilder();
      _outboundHeader = $v.outboundHeader?.toBuilder();
      _inboundHeader = $v.inboundHeader?.toBuilder();
      _routeTableRoute = $v.routeTableRoute?.toBuilder();
      _securityGroupRule = $v.securityGroupRule?.toBuilder();
      _sourceVpc = $v.sourceVpc?.toBuilder();
      _subnet = $v.subnet?.toBuilder();
      _vpc = $v.vpc?.toBuilder();
      _additionalDetails = $v.additionalDetails?.toBuilder();
      _transitGateway = $v.transitGateway?.toBuilder();
      _transitGatewayRouteTableRoute =
          $v.transitGatewayRouteTableRoute?.toBuilder();
      _explanations = $v.explanations?.toBuilder();
      _elasticLoadBalancerListener =
          $v.elasticLoadBalancerListener?.toBuilder();
      _firewallStatelessRule = $v.firewallStatelessRule?.toBuilder();
      _firewallStatefulRule = $v.firewallStatefulRule?.toBuilder();
      _serviceName = $v.serviceName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PathComponent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PathComponent;
  }

  @override
  void update(void Function(PathComponentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PathComponent build() => _build();

  _$PathComponent _build() {
    _$PathComponent _$result;
    try {
      _$result = _$v ??
          new _$PathComponent._(
              sequenceNumber: BuiltValueNullFieldError.checkNotNull(
                  sequenceNumber, r'PathComponent', 'sequenceNumber'),
              aclRule: _aclRule?.build(),
              attachedTo: _attachedTo?.build(),
              component: _component?.build(),
              destinationVpc: _destinationVpc?.build(),
              outboundHeader: _outboundHeader?.build(),
              inboundHeader: _inboundHeader?.build(),
              routeTableRoute: _routeTableRoute?.build(),
              securityGroupRule: _securityGroupRule?.build(),
              sourceVpc: _sourceVpc?.build(),
              subnet: _subnet?.build(),
              vpc: _vpc?.build(),
              additionalDetails: _additionalDetails?.build(),
              transitGateway: _transitGateway?.build(),
              transitGatewayRouteTableRoute:
                  _transitGatewayRouteTableRoute?.build(),
              explanations: _explanations?.build(),
              elasticLoadBalancerListener:
                  _elasticLoadBalancerListener?.build(),
              firewallStatelessRule: _firewallStatelessRule?.build(),
              firewallStatefulRule: _firewallStatefulRule?.build(),
              serviceName: serviceName);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aclRule';
        _aclRule?.build();
        _$failedField = 'attachedTo';
        _attachedTo?.build();
        _$failedField = 'component';
        _component?.build();
        _$failedField = 'destinationVpc';
        _destinationVpc?.build();
        _$failedField = 'outboundHeader';
        _outboundHeader?.build();
        _$failedField = 'inboundHeader';
        _inboundHeader?.build();
        _$failedField = 'routeTableRoute';
        _routeTableRoute?.build();
        _$failedField = 'securityGroupRule';
        _securityGroupRule?.build();
        _$failedField = 'sourceVpc';
        _sourceVpc?.build();
        _$failedField = 'subnet';
        _subnet?.build();
        _$failedField = 'vpc';
        _vpc?.build();
        _$failedField = 'additionalDetails';
        _additionalDetails?.build();
        _$failedField = 'transitGateway';
        _transitGateway?.build();
        _$failedField = 'transitGatewayRouteTableRoute';
        _transitGatewayRouteTableRoute?.build();
        _$failedField = 'explanations';
        _explanations?.build();
        _$failedField = 'elasticLoadBalancerListener';
        _elasticLoadBalancerListener?.build();
        _$failedField = 'firewallStatelessRule';
        _firewallStatelessRule?.build();
        _$failedField = 'firewallStatefulRule';
        _firewallStatefulRule?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PathComponent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
