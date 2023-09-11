// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpc_endpoint_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpcEndpointRequest extends ModifyVpcEndpointRequest {
  @override
  final bool dryRun;
  @override
  final String? vpcEndpointId;
  @override
  final bool resetPolicy;
  @override
  final String? policyDocument;
  @override
  final _i3.BuiltList<String>? addRouteTableIds;
  @override
  final _i3.BuiltList<String>? removeRouteTableIds;
  @override
  final _i3.BuiltList<String>? addSubnetIds;
  @override
  final _i3.BuiltList<String>? removeSubnetIds;
  @override
  final _i3.BuiltList<String>? addSecurityGroupIds;
  @override
  final _i3.BuiltList<String>? removeSecurityGroupIds;
  @override
  final IpAddressType? ipAddressType;
  @override
  final DnsOptionsSpecification? dnsOptions;
  @override
  final bool privateDnsEnabled;
  @override
  final _i3.BuiltList<SubnetConfiguration>? subnetConfigurations;

  factory _$ModifyVpcEndpointRequest(
          [void Function(ModifyVpcEndpointRequestBuilder)? updates]) =>
      (new ModifyVpcEndpointRequestBuilder()..update(updates))._build();

  _$ModifyVpcEndpointRequest._(
      {required this.dryRun,
      this.vpcEndpointId,
      required this.resetPolicy,
      this.policyDocument,
      this.addRouteTableIds,
      this.removeRouteTableIds,
      this.addSubnetIds,
      this.removeSubnetIds,
      this.addSecurityGroupIds,
      this.removeSecurityGroupIds,
      this.ipAddressType,
      this.dnsOptions,
      required this.privateDnsEnabled,
      this.subnetConfigurations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyVpcEndpointRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        resetPolicy, r'ModifyVpcEndpointRequest', 'resetPolicy');
    BuiltValueNullFieldError.checkNotNull(
        privateDnsEnabled, r'ModifyVpcEndpointRequest', 'privateDnsEnabled');
  }

  @override
  ModifyVpcEndpointRequest rebuild(
          void Function(ModifyVpcEndpointRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpcEndpointRequestBuilder toBuilder() =>
      new ModifyVpcEndpointRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpcEndpointRequest &&
        dryRun == other.dryRun &&
        vpcEndpointId == other.vpcEndpointId &&
        resetPolicy == other.resetPolicy &&
        policyDocument == other.policyDocument &&
        addRouteTableIds == other.addRouteTableIds &&
        removeRouteTableIds == other.removeRouteTableIds &&
        addSubnetIds == other.addSubnetIds &&
        removeSubnetIds == other.removeSubnetIds &&
        addSecurityGroupIds == other.addSecurityGroupIds &&
        removeSecurityGroupIds == other.removeSecurityGroupIds &&
        ipAddressType == other.ipAddressType &&
        dnsOptions == other.dnsOptions &&
        privateDnsEnabled == other.privateDnsEnabled &&
        subnetConfigurations == other.subnetConfigurations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, vpcEndpointId.hashCode);
    _$hash = $jc(_$hash, resetPolicy.hashCode);
    _$hash = $jc(_$hash, policyDocument.hashCode);
    _$hash = $jc(_$hash, addRouteTableIds.hashCode);
    _$hash = $jc(_$hash, removeRouteTableIds.hashCode);
    _$hash = $jc(_$hash, addSubnetIds.hashCode);
    _$hash = $jc(_$hash, removeSubnetIds.hashCode);
    _$hash = $jc(_$hash, addSecurityGroupIds.hashCode);
    _$hash = $jc(_$hash, removeSecurityGroupIds.hashCode);
    _$hash = $jc(_$hash, ipAddressType.hashCode);
    _$hash = $jc(_$hash, dnsOptions.hashCode);
    _$hash = $jc(_$hash, privateDnsEnabled.hashCode);
    _$hash = $jc(_$hash, subnetConfigurations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVpcEndpointRequestBuilder
    implements
        Builder<ModifyVpcEndpointRequest, ModifyVpcEndpointRequestBuilder> {
  _$ModifyVpcEndpointRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _vpcEndpointId;
  String? get vpcEndpointId => _$this._vpcEndpointId;
  set vpcEndpointId(String? vpcEndpointId) =>
      _$this._vpcEndpointId = vpcEndpointId;

  bool? _resetPolicy;
  bool? get resetPolicy => _$this._resetPolicy;
  set resetPolicy(bool? resetPolicy) => _$this._resetPolicy = resetPolicy;

  String? _policyDocument;
  String? get policyDocument => _$this._policyDocument;
  set policyDocument(String? policyDocument) =>
      _$this._policyDocument = policyDocument;

  _i3.ListBuilder<String>? _addRouteTableIds;
  _i3.ListBuilder<String> get addRouteTableIds =>
      _$this._addRouteTableIds ??= new _i3.ListBuilder<String>();
  set addRouteTableIds(_i3.ListBuilder<String>? addRouteTableIds) =>
      _$this._addRouteTableIds = addRouteTableIds;

  _i3.ListBuilder<String>? _removeRouteTableIds;
  _i3.ListBuilder<String> get removeRouteTableIds =>
      _$this._removeRouteTableIds ??= new _i3.ListBuilder<String>();
  set removeRouteTableIds(_i3.ListBuilder<String>? removeRouteTableIds) =>
      _$this._removeRouteTableIds = removeRouteTableIds;

  _i3.ListBuilder<String>? _addSubnetIds;
  _i3.ListBuilder<String> get addSubnetIds =>
      _$this._addSubnetIds ??= new _i3.ListBuilder<String>();
  set addSubnetIds(_i3.ListBuilder<String>? addSubnetIds) =>
      _$this._addSubnetIds = addSubnetIds;

  _i3.ListBuilder<String>? _removeSubnetIds;
  _i3.ListBuilder<String> get removeSubnetIds =>
      _$this._removeSubnetIds ??= new _i3.ListBuilder<String>();
  set removeSubnetIds(_i3.ListBuilder<String>? removeSubnetIds) =>
      _$this._removeSubnetIds = removeSubnetIds;

  _i3.ListBuilder<String>? _addSecurityGroupIds;
  _i3.ListBuilder<String> get addSecurityGroupIds =>
      _$this._addSecurityGroupIds ??= new _i3.ListBuilder<String>();
  set addSecurityGroupIds(_i3.ListBuilder<String>? addSecurityGroupIds) =>
      _$this._addSecurityGroupIds = addSecurityGroupIds;

  _i3.ListBuilder<String>? _removeSecurityGroupIds;
  _i3.ListBuilder<String> get removeSecurityGroupIds =>
      _$this._removeSecurityGroupIds ??= new _i3.ListBuilder<String>();
  set removeSecurityGroupIds(_i3.ListBuilder<String>? removeSecurityGroupIds) =>
      _$this._removeSecurityGroupIds = removeSecurityGroupIds;

  IpAddressType? _ipAddressType;
  IpAddressType? get ipAddressType => _$this._ipAddressType;
  set ipAddressType(IpAddressType? ipAddressType) =>
      _$this._ipAddressType = ipAddressType;

  DnsOptionsSpecificationBuilder? _dnsOptions;
  DnsOptionsSpecificationBuilder get dnsOptions =>
      _$this._dnsOptions ??= new DnsOptionsSpecificationBuilder();
  set dnsOptions(DnsOptionsSpecificationBuilder? dnsOptions) =>
      _$this._dnsOptions = dnsOptions;

  bool? _privateDnsEnabled;
  bool? get privateDnsEnabled => _$this._privateDnsEnabled;
  set privateDnsEnabled(bool? privateDnsEnabled) =>
      _$this._privateDnsEnabled = privateDnsEnabled;

  _i3.ListBuilder<SubnetConfiguration>? _subnetConfigurations;
  _i3.ListBuilder<SubnetConfiguration> get subnetConfigurations =>
      _$this._subnetConfigurations ??=
          new _i3.ListBuilder<SubnetConfiguration>();
  set subnetConfigurations(
          _i3.ListBuilder<SubnetConfiguration>? subnetConfigurations) =>
      _$this._subnetConfigurations = subnetConfigurations;

  ModifyVpcEndpointRequestBuilder() {
    ModifyVpcEndpointRequest._init(this);
  }

  ModifyVpcEndpointRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _vpcEndpointId = $v.vpcEndpointId;
      _resetPolicy = $v.resetPolicy;
      _policyDocument = $v.policyDocument;
      _addRouteTableIds = $v.addRouteTableIds?.toBuilder();
      _removeRouteTableIds = $v.removeRouteTableIds?.toBuilder();
      _addSubnetIds = $v.addSubnetIds?.toBuilder();
      _removeSubnetIds = $v.removeSubnetIds?.toBuilder();
      _addSecurityGroupIds = $v.addSecurityGroupIds?.toBuilder();
      _removeSecurityGroupIds = $v.removeSecurityGroupIds?.toBuilder();
      _ipAddressType = $v.ipAddressType;
      _dnsOptions = $v.dnsOptions?.toBuilder();
      _privateDnsEnabled = $v.privateDnsEnabled;
      _subnetConfigurations = $v.subnetConfigurations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpcEndpointRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpcEndpointRequest;
  }

  @override
  void update(void Function(ModifyVpcEndpointRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpcEndpointRequest build() => _build();

  _$ModifyVpcEndpointRequest _build() {
    _$ModifyVpcEndpointRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyVpcEndpointRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifyVpcEndpointRequest', 'dryRun'),
              vpcEndpointId: vpcEndpointId,
              resetPolicy: BuiltValueNullFieldError.checkNotNull(
                  resetPolicy, r'ModifyVpcEndpointRequest', 'resetPolicy'),
              policyDocument: policyDocument,
              addRouteTableIds: _addRouteTableIds?.build(),
              removeRouteTableIds: _removeRouteTableIds?.build(),
              addSubnetIds: _addSubnetIds?.build(),
              removeSubnetIds: _removeSubnetIds?.build(),
              addSecurityGroupIds: _addSecurityGroupIds?.build(),
              removeSecurityGroupIds: _removeSecurityGroupIds?.build(),
              ipAddressType: ipAddressType,
              dnsOptions: _dnsOptions?.build(),
              privateDnsEnabled: BuiltValueNullFieldError.checkNotNull(
                  privateDnsEnabled,
                  r'ModifyVpcEndpointRequest',
                  'privateDnsEnabled'),
              subnetConfigurations: _subnetConfigurations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addRouteTableIds';
        _addRouteTableIds?.build();
        _$failedField = 'removeRouteTableIds';
        _removeRouteTableIds?.build();
        _$failedField = 'addSubnetIds';
        _addSubnetIds?.build();
        _$failedField = 'removeSubnetIds';
        _removeSubnetIds?.build();
        _$failedField = 'addSecurityGroupIds';
        _addSecurityGroupIds?.build();
        _$failedField = 'removeSecurityGroupIds';
        _removeSecurityGroupIds?.build();

        _$failedField = 'dnsOptions';
        _dnsOptions?.build();

        _$failedField = 'subnetConfigurations';
        _subnetConfigurations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVpcEndpointRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
