// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_client_vpn_target_network_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateClientVpnTargetNetworkRequest
    extends AssociateClientVpnTargetNetworkRequest {
  @override
  final String? clientVpnEndpointId;
  @override
  final String? subnetId;
  @override
  final String? clientToken;
  @override
  final bool dryRun;

  factory _$AssociateClientVpnTargetNetworkRequest(
          [void Function(AssociateClientVpnTargetNetworkRequestBuilder)?
              updates]) =>
      (new AssociateClientVpnTargetNetworkRequestBuilder()..update(updates))
          ._build();

  _$AssociateClientVpnTargetNetworkRequest._(
      {this.clientVpnEndpointId,
      this.subnetId,
      this.clientToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AssociateClientVpnTargetNetworkRequest', 'dryRun');
  }

  @override
  AssociateClientVpnTargetNetworkRequest rebuild(
          void Function(AssociateClientVpnTargetNetworkRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateClientVpnTargetNetworkRequestBuilder toBuilder() =>
      new AssociateClientVpnTargetNetworkRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateClientVpnTargetNetworkRequest &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        subnetId == other.subnetId &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociateClientVpnTargetNetworkRequestBuilder
    implements
        Builder<AssociateClientVpnTargetNetworkRequest,
            AssociateClientVpnTargetNetworkRequestBuilder> {
  _$AssociateClientVpnTargetNetworkRequest? _$v;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  AssociateClientVpnTargetNetworkRequestBuilder() {
    AssociateClientVpnTargetNetworkRequest._init(this);
  }

  AssociateClientVpnTargetNetworkRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _subnetId = $v.subnetId;
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateClientVpnTargetNetworkRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateClientVpnTargetNetworkRequest;
  }

  @override
  void update(
      void Function(AssociateClientVpnTargetNetworkRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateClientVpnTargetNetworkRequest build() => _build();

  _$AssociateClientVpnTargetNetworkRequest _build() {
    final _$result = _$v ??
        new _$AssociateClientVpnTargetNetworkRequest._(
            clientVpnEndpointId: clientVpnEndpointId,
            subnetId: subnetId,
            clientToken: clientToken,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'AssociateClientVpnTargetNetworkRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
