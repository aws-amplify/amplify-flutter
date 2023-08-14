// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_vpn_connection_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientVpnConnectionStatus extends ClientVpnConnectionStatus {
  @override
  final ClientVpnConnectionStatusCode? code;
  @override
  final String? message;

  factory _$ClientVpnConnectionStatus(
          [void Function(ClientVpnConnectionStatusBuilder)? updates]) =>
      (new ClientVpnConnectionStatusBuilder()..update(updates))._build();

  _$ClientVpnConnectionStatus._({this.code, this.message}) : super._();

  @override
  ClientVpnConnectionStatus rebuild(
          void Function(ClientVpnConnectionStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientVpnConnectionStatusBuilder toBuilder() =>
      new ClientVpnConnectionStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientVpnConnectionStatus &&
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

class ClientVpnConnectionStatusBuilder
    implements
        Builder<ClientVpnConnectionStatus, ClientVpnConnectionStatusBuilder> {
  _$ClientVpnConnectionStatus? _$v;

  ClientVpnConnectionStatusCode? _code;
  ClientVpnConnectionStatusCode? get code => _$this._code;
  set code(ClientVpnConnectionStatusCode? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ClientVpnConnectionStatusBuilder();

  ClientVpnConnectionStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientVpnConnectionStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientVpnConnectionStatus;
  }

  @override
  void update(void Function(ClientVpnConnectionStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientVpnConnectionStatus build() => _build();

  _$ClientVpnConnectionStatus _build() {
    final _$result =
        _$v ?? new _$ClientVpnConnectionStatus._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
