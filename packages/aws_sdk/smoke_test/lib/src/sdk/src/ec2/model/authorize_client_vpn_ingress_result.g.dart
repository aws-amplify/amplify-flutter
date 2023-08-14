// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorize_client_vpn_ingress_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthorizeClientVpnIngressResult
    extends AuthorizeClientVpnIngressResult {
  @override
  final ClientVpnAuthorizationRuleStatus? status;

  factory _$AuthorizeClientVpnIngressResult(
          [void Function(AuthorizeClientVpnIngressResultBuilder)? updates]) =>
      (new AuthorizeClientVpnIngressResultBuilder()..update(updates))._build();

  _$AuthorizeClientVpnIngressResult._({this.status}) : super._();

  @override
  AuthorizeClientVpnIngressResult rebuild(
          void Function(AuthorizeClientVpnIngressResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorizeClientVpnIngressResultBuilder toBuilder() =>
      new AuthorizeClientVpnIngressResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthorizeClientVpnIngressResult && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AuthorizeClientVpnIngressResultBuilder
    implements
        Builder<AuthorizeClientVpnIngressResult,
            AuthorizeClientVpnIngressResultBuilder> {
  _$AuthorizeClientVpnIngressResult? _$v;

  ClientVpnAuthorizationRuleStatusBuilder? _status;
  ClientVpnAuthorizationRuleStatusBuilder get status =>
      _$this._status ??= new ClientVpnAuthorizationRuleStatusBuilder();
  set status(ClientVpnAuthorizationRuleStatusBuilder? status) =>
      _$this._status = status;

  AuthorizeClientVpnIngressResultBuilder();

  AuthorizeClientVpnIngressResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthorizeClientVpnIngressResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthorizeClientVpnIngressResult;
  }

  @override
  void update(void Function(AuthorizeClientVpnIngressResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthorizeClientVpnIngressResult build() => _build();

  _$AuthorizeClientVpnIngressResult _build() {
    _$AuthorizeClientVpnIngressResult _$result;
    try {
      _$result = _$v ??
          new _$AuthorizeClientVpnIngressResult._(status: _status?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'status';
        _status?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthorizeClientVpnIngressResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
