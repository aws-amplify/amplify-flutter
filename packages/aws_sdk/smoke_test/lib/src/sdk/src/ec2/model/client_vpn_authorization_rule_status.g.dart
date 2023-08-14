// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_vpn_authorization_rule_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientVpnAuthorizationRuleStatus
    extends ClientVpnAuthorizationRuleStatus {
  @override
  final ClientVpnAuthorizationRuleStatusCode? code;
  @override
  final String? message;

  factory _$ClientVpnAuthorizationRuleStatus(
          [void Function(ClientVpnAuthorizationRuleStatusBuilder)? updates]) =>
      (new ClientVpnAuthorizationRuleStatusBuilder()..update(updates))._build();

  _$ClientVpnAuthorizationRuleStatus._({this.code, this.message}) : super._();

  @override
  ClientVpnAuthorizationRuleStatus rebuild(
          void Function(ClientVpnAuthorizationRuleStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientVpnAuthorizationRuleStatusBuilder toBuilder() =>
      new ClientVpnAuthorizationRuleStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientVpnAuthorizationRuleStatus &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ClientVpnAuthorizationRuleStatusBuilder
    implements
        Builder<ClientVpnAuthorizationRuleStatus,
            ClientVpnAuthorizationRuleStatusBuilder> {
  _$ClientVpnAuthorizationRuleStatus? _$v;

  ClientVpnAuthorizationRuleStatusCode? _code;
  ClientVpnAuthorizationRuleStatusCode? get code => _$this._code;
  set code(ClientVpnAuthorizationRuleStatusCode? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ClientVpnAuthorizationRuleStatusBuilder();

  ClientVpnAuthorizationRuleStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientVpnAuthorizationRuleStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientVpnAuthorizationRuleStatus;
  }

  @override
  void update(void Function(ClientVpnAuthorizationRuleStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientVpnAuthorizationRuleStatus build() => _build();

  _$ClientVpnAuthorizationRuleStatus _build() {
    final _$result = _$v ??
        new _$ClientVpnAuthorizationRuleStatus._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
