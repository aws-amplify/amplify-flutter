// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_client_vpn_target_network_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateClientVpnTargetNetworkRequest
    extends DisassociateClientVpnTargetNetworkRequest {
  @override
  final String? clientVpnEndpointId;
  @override
  final String? associationId;
  @override
  final bool dryRun;

  factory _$DisassociateClientVpnTargetNetworkRequest(
          [void Function(DisassociateClientVpnTargetNetworkRequestBuilder)?
              updates]) =>
      (new DisassociateClientVpnTargetNetworkRequestBuilder()..update(updates))
          ._build();

  _$DisassociateClientVpnTargetNetworkRequest._(
      {this.clientVpnEndpointId, this.associationId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DisassociateClientVpnTargetNetworkRequest', 'dryRun');
  }

  @override
  DisassociateClientVpnTargetNetworkRequest rebuild(
          void Function(DisassociateClientVpnTargetNetworkRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateClientVpnTargetNetworkRequestBuilder toBuilder() =>
      new DisassociateClientVpnTargetNetworkRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateClientVpnTargetNetworkRequest &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        associationId == other.associationId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, associationId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisassociateClientVpnTargetNetworkRequestBuilder
    implements
        Builder<DisassociateClientVpnTargetNetworkRequest,
            DisassociateClientVpnTargetNetworkRequestBuilder> {
  _$DisassociateClientVpnTargetNetworkRequest? _$v;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DisassociateClientVpnTargetNetworkRequestBuilder() {
    DisassociateClientVpnTargetNetworkRequest._init(this);
  }

  DisassociateClientVpnTargetNetworkRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _associationId = $v.associationId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateClientVpnTargetNetworkRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateClientVpnTargetNetworkRequest;
  }

  @override
  void update(
      void Function(DisassociateClientVpnTargetNetworkRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateClientVpnTargetNetworkRequest build() => _build();

  _$DisassociateClientVpnTargetNetworkRequest _build() {
    final _$result = _$v ??
        new _$DisassociateClientVpnTargetNetworkRequest._(
            clientVpnEndpointId: clientVpnEndpointId,
            associationId: associationId,
            dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                r'DisassociateClientVpnTargetNetworkRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
