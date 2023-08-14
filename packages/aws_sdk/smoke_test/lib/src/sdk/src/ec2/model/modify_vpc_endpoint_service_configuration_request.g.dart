// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpc_endpoint_service_configuration_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpcEndpointServiceConfigurationRequest
    extends ModifyVpcEndpointServiceConfigurationRequest {
  @override
  final bool dryRun;
  @override
  final String? serviceId;
  @override
  final String? privateDnsName;
  @override
  final bool removePrivateDnsName;
  @override
  final bool acceptanceRequired;
  @override
  final _i3.BuiltList<String>? addNetworkLoadBalancerArns;
  @override
  final _i3.BuiltList<String>? removeNetworkLoadBalancerArns;
  @override
  final _i3.BuiltList<String>? addGatewayLoadBalancerArns;
  @override
  final _i3.BuiltList<String>? removeGatewayLoadBalancerArns;
  @override
  final _i3.BuiltList<String>? addSupportedIpAddressTypes;
  @override
  final _i3.BuiltList<String>? removeSupportedIpAddressTypes;

  factory _$ModifyVpcEndpointServiceConfigurationRequest(
          [void Function(ModifyVpcEndpointServiceConfigurationRequestBuilder)?
              updates]) =>
      (new ModifyVpcEndpointServiceConfigurationRequestBuilder()
            ..update(updates))
          ._build();

  _$ModifyVpcEndpointServiceConfigurationRequest._(
      {required this.dryRun,
      this.serviceId,
      this.privateDnsName,
      required this.removePrivateDnsName,
      required this.acceptanceRequired,
      this.addNetworkLoadBalancerArns,
      this.removeNetworkLoadBalancerArns,
      this.addGatewayLoadBalancerArns,
      this.removeGatewayLoadBalancerArns,
      this.addSupportedIpAddressTypes,
      this.removeSupportedIpAddressTypes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyVpcEndpointServiceConfigurationRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        removePrivateDnsName,
        r'ModifyVpcEndpointServiceConfigurationRequest',
        'removePrivateDnsName');
    BuiltValueNullFieldError.checkNotNull(acceptanceRequired,
        r'ModifyVpcEndpointServiceConfigurationRequest', 'acceptanceRequired');
  }

  @override
  ModifyVpcEndpointServiceConfigurationRequest rebuild(
          void Function(ModifyVpcEndpointServiceConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpcEndpointServiceConfigurationRequestBuilder toBuilder() =>
      new ModifyVpcEndpointServiceConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpcEndpointServiceConfigurationRequest &&
        dryRun == other.dryRun &&
        serviceId == other.serviceId &&
        privateDnsName == other.privateDnsName &&
        removePrivateDnsName == other.removePrivateDnsName &&
        acceptanceRequired == other.acceptanceRequired &&
        addNetworkLoadBalancerArns == other.addNetworkLoadBalancerArns &&
        removeNetworkLoadBalancerArns == other.removeNetworkLoadBalancerArns &&
        addGatewayLoadBalancerArns == other.addGatewayLoadBalancerArns &&
        removeGatewayLoadBalancerArns == other.removeGatewayLoadBalancerArns &&
        addSupportedIpAddressTypes == other.addSupportedIpAddressTypes &&
        removeSupportedIpAddressTypes == other.removeSupportedIpAddressTypes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jc(_$hash, privateDnsName.hashCode);
    _$hash = $jc(_$hash, removePrivateDnsName.hashCode);
    _$hash = $jc(_$hash, acceptanceRequired.hashCode);
    _$hash = $jc(_$hash, addNetworkLoadBalancerArns.hashCode);
    _$hash = $jc(_$hash, removeNetworkLoadBalancerArns.hashCode);
    _$hash = $jc(_$hash, addGatewayLoadBalancerArns.hashCode);
    _$hash = $jc(_$hash, removeGatewayLoadBalancerArns.hashCode);
    _$hash = $jc(_$hash, addSupportedIpAddressTypes.hashCode);
    _$hash = $jc(_$hash, removeSupportedIpAddressTypes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVpcEndpointServiceConfigurationRequestBuilder
    implements
        Builder<ModifyVpcEndpointServiceConfigurationRequest,
            ModifyVpcEndpointServiceConfigurationRequestBuilder> {
  _$ModifyVpcEndpointServiceConfigurationRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _serviceId;
  String? get serviceId => _$this._serviceId;
  set serviceId(String? serviceId) => _$this._serviceId = serviceId;

  String? _privateDnsName;
  String? get privateDnsName => _$this._privateDnsName;
  set privateDnsName(String? privateDnsName) =>
      _$this._privateDnsName = privateDnsName;

  bool? _removePrivateDnsName;
  bool? get removePrivateDnsName => _$this._removePrivateDnsName;
  set removePrivateDnsName(bool? removePrivateDnsName) =>
      _$this._removePrivateDnsName = removePrivateDnsName;

  bool? _acceptanceRequired;
  bool? get acceptanceRequired => _$this._acceptanceRequired;
  set acceptanceRequired(bool? acceptanceRequired) =>
      _$this._acceptanceRequired = acceptanceRequired;

  _i3.ListBuilder<String>? _addNetworkLoadBalancerArns;
  _i3.ListBuilder<String> get addNetworkLoadBalancerArns =>
      _$this._addNetworkLoadBalancerArns ??= new _i3.ListBuilder<String>();
  set addNetworkLoadBalancerArns(
          _i3.ListBuilder<String>? addNetworkLoadBalancerArns) =>
      _$this._addNetworkLoadBalancerArns = addNetworkLoadBalancerArns;

  _i3.ListBuilder<String>? _removeNetworkLoadBalancerArns;
  _i3.ListBuilder<String> get removeNetworkLoadBalancerArns =>
      _$this._removeNetworkLoadBalancerArns ??= new _i3.ListBuilder<String>();
  set removeNetworkLoadBalancerArns(
          _i3.ListBuilder<String>? removeNetworkLoadBalancerArns) =>
      _$this._removeNetworkLoadBalancerArns = removeNetworkLoadBalancerArns;

  _i3.ListBuilder<String>? _addGatewayLoadBalancerArns;
  _i3.ListBuilder<String> get addGatewayLoadBalancerArns =>
      _$this._addGatewayLoadBalancerArns ??= new _i3.ListBuilder<String>();
  set addGatewayLoadBalancerArns(
          _i3.ListBuilder<String>? addGatewayLoadBalancerArns) =>
      _$this._addGatewayLoadBalancerArns = addGatewayLoadBalancerArns;

  _i3.ListBuilder<String>? _removeGatewayLoadBalancerArns;
  _i3.ListBuilder<String> get removeGatewayLoadBalancerArns =>
      _$this._removeGatewayLoadBalancerArns ??= new _i3.ListBuilder<String>();
  set removeGatewayLoadBalancerArns(
          _i3.ListBuilder<String>? removeGatewayLoadBalancerArns) =>
      _$this._removeGatewayLoadBalancerArns = removeGatewayLoadBalancerArns;

  _i3.ListBuilder<String>? _addSupportedIpAddressTypes;
  _i3.ListBuilder<String> get addSupportedIpAddressTypes =>
      _$this._addSupportedIpAddressTypes ??= new _i3.ListBuilder<String>();
  set addSupportedIpAddressTypes(
          _i3.ListBuilder<String>? addSupportedIpAddressTypes) =>
      _$this._addSupportedIpAddressTypes = addSupportedIpAddressTypes;

  _i3.ListBuilder<String>? _removeSupportedIpAddressTypes;
  _i3.ListBuilder<String> get removeSupportedIpAddressTypes =>
      _$this._removeSupportedIpAddressTypes ??= new _i3.ListBuilder<String>();
  set removeSupportedIpAddressTypes(
          _i3.ListBuilder<String>? removeSupportedIpAddressTypes) =>
      _$this._removeSupportedIpAddressTypes = removeSupportedIpAddressTypes;

  ModifyVpcEndpointServiceConfigurationRequestBuilder() {
    ModifyVpcEndpointServiceConfigurationRequest._init(this);
  }

  ModifyVpcEndpointServiceConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _serviceId = $v.serviceId;
      _privateDnsName = $v.privateDnsName;
      _removePrivateDnsName = $v.removePrivateDnsName;
      _acceptanceRequired = $v.acceptanceRequired;
      _addNetworkLoadBalancerArns = $v.addNetworkLoadBalancerArns?.toBuilder();
      _removeNetworkLoadBalancerArns =
          $v.removeNetworkLoadBalancerArns?.toBuilder();
      _addGatewayLoadBalancerArns = $v.addGatewayLoadBalancerArns?.toBuilder();
      _removeGatewayLoadBalancerArns =
          $v.removeGatewayLoadBalancerArns?.toBuilder();
      _addSupportedIpAddressTypes = $v.addSupportedIpAddressTypes?.toBuilder();
      _removeSupportedIpAddressTypes =
          $v.removeSupportedIpAddressTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpcEndpointServiceConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpcEndpointServiceConfigurationRequest;
  }

  @override
  void update(
      void Function(ModifyVpcEndpointServiceConfigurationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpcEndpointServiceConfigurationRequest build() => _build();

  _$ModifyVpcEndpointServiceConfigurationRequest _build() {
    _$ModifyVpcEndpointServiceConfigurationRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyVpcEndpointServiceConfigurationRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'ModifyVpcEndpointServiceConfigurationRequest', 'dryRun'),
              serviceId: serviceId,
              privateDnsName: privateDnsName,
              removePrivateDnsName: BuiltValueNullFieldError.checkNotNull(
                  removePrivateDnsName,
                  r'ModifyVpcEndpointServiceConfigurationRequest',
                  'removePrivateDnsName'),
              acceptanceRequired: BuiltValueNullFieldError.checkNotNull(
                  acceptanceRequired,
                  r'ModifyVpcEndpointServiceConfigurationRequest',
                  'acceptanceRequired'),
              addNetworkLoadBalancerArns: _addNetworkLoadBalancerArns?.build(),
              removeNetworkLoadBalancerArns:
                  _removeNetworkLoadBalancerArns?.build(),
              addGatewayLoadBalancerArns: _addGatewayLoadBalancerArns?.build(),
              removeGatewayLoadBalancerArns:
                  _removeGatewayLoadBalancerArns?.build(),
              addSupportedIpAddressTypes: _addSupportedIpAddressTypes?.build(),
              removeSupportedIpAddressTypes:
                  _removeSupportedIpAddressTypes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addNetworkLoadBalancerArns';
        _addNetworkLoadBalancerArns?.build();
        _$failedField = 'removeNetworkLoadBalancerArns';
        _removeNetworkLoadBalancerArns?.build();
        _$failedField = 'addGatewayLoadBalancerArns';
        _addGatewayLoadBalancerArns?.build();
        _$failedField = 'removeGatewayLoadBalancerArns';
        _removeGatewayLoadBalancerArns?.build();
        _$failedField = 'addSupportedIpAddressTypes';
        _addSupportedIpAddressTypes?.build();
        _$failedField = 'removeSupportedIpAddressTypes';
        _removeSupportedIpAddressTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVpcEndpointServiceConfigurationRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
