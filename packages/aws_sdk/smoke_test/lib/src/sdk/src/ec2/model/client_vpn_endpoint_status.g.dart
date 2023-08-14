// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_vpn_endpoint_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientVpnEndpointStatus extends ClientVpnEndpointStatus {
  @override
  final ClientVpnEndpointStatusCode? code;
  @override
  final String? message;

  factory _$ClientVpnEndpointStatus(
          [void Function(ClientVpnEndpointStatusBuilder)? updates]) =>
      (new ClientVpnEndpointStatusBuilder()..update(updates))._build();

  _$ClientVpnEndpointStatus._({this.code, this.message}) : super._();

  @override
  ClientVpnEndpointStatus rebuild(
          void Function(ClientVpnEndpointStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientVpnEndpointStatusBuilder toBuilder() =>
      new ClientVpnEndpointStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientVpnEndpointStatus &&
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

class ClientVpnEndpointStatusBuilder
    implements
        Builder<ClientVpnEndpointStatus, ClientVpnEndpointStatusBuilder> {
  _$ClientVpnEndpointStatus? _$v;

  ClientVpnEndpointStatusCode? _code;
  ClientVpnEndpointStatusCode? get code => _$this._code;
  set code(ClientVpnEndpointStatusCode? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ClientVpnEndpointStatusBuilder();

  ClientVpnEndpointStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientVpnEndpointStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientVpnEndpointStatus;
  }

  @override
  void update(void Function(ClientVpnEndpointStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientVpnEndpointStatus build() => _build();

  _$ClientVpnEndpointStatus _build() {
    final _$result =
        _$v ?? new _$ClientVpnEndpointStatus._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
