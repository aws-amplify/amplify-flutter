// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_vpn_gateway_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVpnGatewayResult extends CreateVpnGatewayResult {
  @override
  final VpnGateway? vpnGateway;

  factory _$CreateVpnGatewayResult(
          [void Function(CreateVpnGatewayResultBuilder)? updates]) =>
      (new CreateVpnGatewayResultBuilder()..update(updates))._build();

  _$CreateVpnGatewayResult._({this.vpnGateway}) : super._();

  @override
  CreateVpnGatewayResult rebuild(
          void Function(CreateVpnGatewayResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVpnGatewayResultBuilder toBuilder() =>
      new CreateVpnGatewayResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVpnGatewayResult && vpnGateway == other.vpnGateway;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpnGateway.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVpnGatewayResultBuilder
    implements Builder<CreateVpnGatewayResult, CreateVpnGatewayResultBuilder> {
  _$CreateVpnGatewayResult? _$v;

  VpnGatewayBuilder? _vpnGateway;
  VpnGatewayBuilder get vpnGateway =>
      _$this._vpnGateway ??= new VpnGatewayBuilder();
  set vpnGateway(VpnGatewayBuilder? vpnGateway) =>
      _$this._vpnGateway = vpnGateway;

  CreateVpnGatewayResultBuilder();

  CreateVpnGatewayResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpnGateway = $v.vpnGateway?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVpnGatewayResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVpnGatewayResult;
  }

  @override
  void update(void Function(CreateVpnGatewayResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVpnGatewayResult build() => _build();

  _$CreateVpnGatewayResult _build() {
    _$CreateVpnGatewayResult _$result;
    try {
      _$result = _$v ??
          new _$CreateVpnGatewayResult._(vpnGateway: _vpnGateway?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpnGateway';
        _vpnGateway?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVpnGatewayResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
