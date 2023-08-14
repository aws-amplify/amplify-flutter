// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_vpn_route_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientVpnRouteStatus extends ClientVpnRouteStatus {
  @override
  final ClientVpnRouteStatusCode? code;
  @override
  final String? message;

  factory _$ClientVpnRouteStatus(
          [void Function(ClientVpnRouteStatusBuilder)? updates]) =>
      (new ClientVpnRouteStatusBuilder()..update(updates))._build();

  _$ClientVpnRouteStatus._({this.code, this.message}) : super._();

  @override
  ClientVpnRouteStatus rebuild(
          void Function(ClientVpnRouteStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientVpnRouteStatusBuilder toBuilder() =>
      new ClientVpnRouteStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientVpnRouteStatus &&
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

class ClientVpnRouteStatusBuilder
    implements Builder<ClientVpnRouteStatus, ClientVpnRouteStatusBuilder> {
  _$ClientVpnRouteStatus? _$v;

  ClientVpnRouteStatusCode? _code;
  ClientVpnRouteStatusCode? get code => _$this._code;
  set code(ClientVpnRouteStatusCode? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ClientVpnRouteStatusBuilder();

  ClientVpnRouteStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientVpnRouteStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientVpnRouteStatus;
  }

  @override
  void update(void Function(ClientVpnRouteStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientVpnRouteStatus build() => _build();

  _$ClientVpnRouteStatus _build() {
    final _$result =
        _$v ?? new _$ClientVpnRouteStatus._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
