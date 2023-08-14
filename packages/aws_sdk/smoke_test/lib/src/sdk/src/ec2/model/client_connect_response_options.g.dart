// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_connect_response_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientConnectResponseOptions extends ClientConnectResponseOptions {
  @override
  final bool enabled;
  @override
  final String? lambdaFunctionArn;
  @override
  final ClientVpnEndpointAttributeStatus? status;

  factory _$ClientConnectResponseOptions(
          [void Function(ClientConnectResponseOptionsBuilder)? updates]) =>
      (new ClientConnectResponseOptionsBuilder()..update(updates))._build();

  _$ClientConnectResponseOptions._(
      {required this.enabled, this.lambdaFunctionArn, this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'ClientConnectResponseOptions', 'enabled');
  }

  @override
  ClientConnectResponseOptions rebuild(
          void Function(ClientConnectResponseOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientConnectResponseOptionsBuilder toBuilder() =>
      new ClientConnectResponseOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientConnectResponseOptions &&
        enabled == other.enabled &&
        lambdaFunctionArn == other.lambdaFunctionArn &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, lambdaFunctionArn.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ClientConnectResponseOptionsBuilder
    implements
        Builder<ClientConnectResponseOptions,
            ClientConnectResponseOptionsBuilder> {
  _$ClientConnectResponseOptions? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _lambdaFunctionArn;
  String? get lambdaFunctionArn => _$this._lambdaFunctionArn;
  set lambdaFunctionArn(String? lambdaFunctionArn) =>
      _$this._lambdaFunctionArn = lambdaFunctionArn;

  ClientVpnEndpointAttributeStatusBuilder? _status;
  ClientVpnEndpointAttributeStatusBuilder get status =>
      _$this._status ??= new ClientVpnEndpointAttributeStatusBuilder();
  set status(ClientVpnEndpointAttributeStatusBuilder? status) =>
      _$this._status = status;

  ClientConnectResponseOptionsBuilder() {
    ClientConnectResponseOptions._init(this);
  }

  ClientConnectResponseOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _lambdaFunctionArn = $v.lambdaFunctionArn;
      _status = $v.status?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientConnectResponseOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientConnectResponseOptions;
  }

  @override
  void update(void Function(ClientConnectResponseOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientConnectResponseOptions build() => _build();

  _$ClientConnectResponseOptions _build() {
    _$ClientConnectResponseOptions _$result;
    try {
      _$result = _$v ??
          new _$ClientConnectResponseOptions._(
              enabled: BuiltValueNullFieldError.checkNotNull(
                  enabled, r'ClientConnectResponseOptions', 'enabled'),
              lambdaFunctionArn: lambdaFunctionArn,
              status: _status?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'status';
        _status?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ClientConnectResponseOptions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
