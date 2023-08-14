// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revoke_client_vpn_ingress_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RevokeClientVpnIngressResult extends RevokeClientVpnIngressResult {
  @override
  final ClientVpnAuthorizationRuleStatus? status;

  factory _$RevokeClientVpnIngressResult(
          [void Function(RevokeClientVpnIngressResultBuilder)? updates]) =>
      (new RevokeClientVpnIngressResultBuilder()..update(updates))._build();

  _$RevokeClientVpnIngressResult._({this.status}) : super._();

  @override
  RevokeClientVpnIngressResult rebuild(
          void Function(RevokeClientVpnIngressResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RevokeClientVpnIngressResultBuilder toBuilder() =>
      new RevokeClientVpnIngressResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RevokeClientVpnIngressResult && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RevokeClientVpnIngressResultBuilder
    implements
        Builder<RevokeClientVpnIngressResult,
            RevokeClientVpnIngressResultBuilder> {
  _$RevokeClientVpnIngressResult? _$v;

  ClientVpnAuthorizationRuleStatusBuilder? _status;
  ClientVpnAuthorizationRuleStatusBuilder get status =>
      _$this._status ??= new ClientVpnAuthorizationRuleStatusBuilder();
  set status(ClientVpnAuthorizationRuleStatusBuilder? status) =>
      _$this._status = status;

  RevokeClientVpnIngressResultBuilder();

  RevokeClientVpnIngressResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RevokeClientVpnIngressResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RevokeClientVpnIngressResult;
  }

  @override
  void update(void Function(RevokeClientVpnIngressResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RevokeClientVpnIngressResult build() => _build();

  _$RevokeClientVpnIngressResult _build() {
    _$RevokeClientVpnIngressResult _$result;
    try {
      _$result =
          _$v ?? new _$RevokeClientVpnIngressResult._(status: _status?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'status';
        _status?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RevokeClientVpnIngressResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
