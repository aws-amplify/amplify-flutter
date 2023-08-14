// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_vpn_endpoint_attribute_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientVpnEndpointAttributeStatus
    extends ClientVpnEndpointAttributeStatus {
  @override
  final ClientVpnEndpointAttributeStatusCode? code;
  @override
  final String? message;

  factory _$ClientVpnEndpointAttributeStatus(
          [void Function(ClientVpnEndpointAttributeStatusBuilder)? updates]) =>
      (new ClientVpnEndpointAttributeStatusBuilder()..update(updates))._build();

  _$ClientVpnEndpointAttributeStatus._({this.code, this.message}) : super._();

  @override
  ClientVpnEndpointAttributeStatus rebuild(
          void Function(ClientVpnEndpointAttributeStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientVpnEndpointAttributeStatusBuilder toBuilder() =>
      new ClientVpnEndpointAttributeStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientVpnEndpointAttributeStatus &&
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

class ClientVpnEndpointAttributeStatusBuilder
    implements
        Builder<ClientVpnEndpointAttributeStatus,
            ClientVpnEndpointAttributeStatusBuilder> {
  _$ClientVpnEndpointAttributeStatus? _$v;

  ClientVpnEndpointAttributeStatusCode? _code;
  ClientVpnEndpointAttributeStatusCode? get code => _$this._code;
  set code(ClientVpnEndpointAttributeStatusCode? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ClientVpnEndpointAttributeStatusBuilder();

  ClientVpnEndpointAttributeStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientVpnEndpointAttributeStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientVpnEndpointAttributeStatus;
  }

  @override
  void update(void Function(ClientVpnEndpointAttributeStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientVpnEndpointAttributeStatus build() => _build();

  _$ClientVpnEndpointAttributeStatus _build() {
    final _$result = _$v ??
        new _$ClientVpnEndpointAttributeStatus._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
