// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_security_groups_to_client_vpn_target_network_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplySecurityGroupsToClientVpnTargetNetworkRequest
    extends ApplySecurityGroupsToClientVpnTargetNetworkRequest {
  @override
  final String? clientVpnEndpointId;
  @override
  final String? vpcId;
  @override
  final _i3.BuiltList<String>? securityGroupIds;
  @override
  final bool dryRun;

  factory _$ApplySecurityGroupsToClientVpnTargetNetworkRequest(
          [void Function(
                  ApplySecurityGroupsToClientVpnTargetNetworkRequestBuilder)?
              updates]) =>
      (new ApplySecurityGroupsToClientVpnTargetNetworkRequestBuilder()
            ..update(updates))
          ._build();

  _$ApplySecurityGroupsToClientVpnTargetNetworkRequest._(
      {this.clientVpnEndpointId,
      this.vpcId,
      this.securityGroupIds,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dryRun,
        r'ApplySecurityGroupsToClientVpnTargetNetworkRequest', 'dryRun');
  }

  @override
  ApplySecurityGroupsToClientVpnTargetNetworkRequest rebuild(
          void Function(
                  ApplySecurityGroupsToClientVpnTargetNetworkRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplySecurityGroupsToClientVpnTargetNetworkRequestBuilder toBuilder() =>
      new ApplySecurityGroupsToClientVpnTargetNetworkRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplySecurityGroupsToClientVpnTargetNetworkRequest &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        vpcId == other.vpcId &&
        securityGroupIds == other.securityGroupIds &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, securityGroupIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ApplySecurityGroupsToClientVpnTargetNetworkRequestBuilder
    implements
        Builder<ApplySecurityGroupsToClientVpnTargetNetworkRequest,
            ApplySecurityGroupsToClientVpnTargetNetworkRequestBuilder> {
  _$ApplySecurityGroupsToClientVpnTargetNetworkRequest? _$v;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  _i3.ListBuilder<String>? _securityGroupIds;
  _i3.ListBuilder<String> get securityGroupIds =>
      _$this._securityGroupIds ??= new _i3.ListBuilder<String>();
  set securityGroupIds(_i3.ListBuilder<String>? securityGroupIds) =>
      _$this._securityGroupIds = securityGroupIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ApplySecurityGroupsToClientVpnTargetNetworkRequestBuilder() {
    ApplySecurityGroupsToClientVpnTargetNetworkRequest._init(this);
  }

  ApplySecurityGroupsToClientVpnTargetNetworkRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _vpcId = $v.vpcId;
      _securityGroupIds = $v.securityGroupIds?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplySecurityGroupsToClientVpnTargetNetworkRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplySecurityGroupsToClientVpnTargetNetworkRequest;
  }

  @override
  void update(
      void Function(ApplySecurityGroupsToClientVpnTargetNetworkRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplySecurityGroupsToClientVpnTargetNetworkRequest build() => _build();

  _$ApplySecurityGroupsToClientVpnTargetNetworkRequest _build() {
    _$ApplySecurityGroupsToClientVpnTargetNetworkRequest _$result;
    try {
      _$result = _$v ??
          new _$ApplySecurityGroupsToClientVpnTargetNetworkRequest._(
              clientVpnEndpointId: clientVpnEndpointId,
              vpcId: vpcId,
              securityGroupIds: _securityGroupIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'ApplySecurityGroupsToClientVpnTargetNetworkRequest',
                  'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'securityGroupIds';
        _securityGroupIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplySecurityGroupsToClientVpnTargetNetworkRequest',
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
