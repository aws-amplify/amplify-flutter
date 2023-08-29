// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_client_vpn_endpoint_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateClientVpnEndpointResult extends CreateClientVpnEndpointResult {
  @override
  final String? clientVpnEndpointId;
  @override
  final ClientVpnEndpointStatus? status;
  @override
  final String? dnsName;

  factory _$CreateClientVpnEndpointResult(
          [void Function(CreateClientVpnEndpointResultBuilder)? updates]) =>
      (new CreateClientVpnEndpointResultBuilder()..update(updates))._build();

  _$CreateClientVpnEndpointResult._(
      {this.clientVpnEndpointId, this.status, this.dnsName})
      : super._();

  @override
  CreateClientVpnEndpointResult rebuild(
          void Function(CreateClientVpnEndpointResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateClientVpnEndpointResultBuilder toBuilder() =>
      new CreateClientVpnEndpointResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateClientVpnEndpointResult &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        status == other.status &&
        dnsName == other.dnsName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, dnsName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateClientVpnEndpointResultBuilder
    implements
        Builder<CreateClientVpnEndpointResult,
            CreateClientVpnEndpointResultBuilder> {
  _$CreateClientVpnEndpointResult? _$v;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

  ClientVpnEndpointStatusBuilder? _status;
  ClientVpnEndpointStatusBuilder get status =>
      _$this._status ??= new ClientVpnEndpointStatusBuilder();
  set status(ClientVpnEndpointStatusBuilder? status) => _$this._status = status;

  String? _dnsName;
  String? get dnsName => _$this._dnsName;
  set dnsName(String? dnsName) => _$this._dnsName = dnsName;

  CreateClientVpnEndpointResultBuilder();

  CreateClientVpnEndpointResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _status = $v.status?.toBuilder();
      _dnsName = $v.dnsName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateClientVpnEndpointResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateClientVpnEndpointResult;
  }

  @override
  void update(void Function(CreateClientVpnEndpointResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateClientVpnEndpointResult build() => _build();

  _$CreateClientVpnEndpointResult _build() {
    _$CreateClientVpnEndpointResult _$result;
    try {
      _$result = _$v ??
          new _$CreateClientVpnEndpointResult._(
              clientVpnEndpointId: clientVpnEndpointId,
              status: _status?.build(),
              dnsName: dnsName);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'status';
        _status?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateClientVpnEndpointResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
