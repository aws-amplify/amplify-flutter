// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_connect_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientConnectOptions extends ClientConnectOptions {
  @override
  final bool enabled;
  @override
  final String? lambdaFunctionArn;

  factory _$ClientConnectOptions(
          [void Function(ClientConnectOptionsBuilder)? updates]) =>
      (new ClientConnectOptionsBuilder()..update(updates))._build();

  _$ClientConnectOptions._({required this.enabled, this.lambdaFunctionArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'ClientConnectOptions', 'enabled');
  }

  @override
  ClientConnectOptions rebuild(
          void Function(ClientConnectOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientConnectOptionsBuilder toBuilder() =>
      new ClientConnectOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientConnectOptions &&
        enabled == other.enabled &&
        lambdaFunctionArn == other.lambdaFunctionArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, lambdaFunctionArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ClientConnectOptionsBuilder
    implements Builder<ClientConnectOptions, ClientConnectOptionsBuilder> {
  _$ClientConnectOptions? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _lambdaFunctionArn;
  String? get lambdaFunctionArn => _$this._lambdaFunctionArn;
  set lambdaFunctionArn(String? lambdaFunctionArn) =>
      _$this._lambdaFunctionArn = lambdaFunctionArn;

  ClientConnectOptionsBuilder() {
    ClientConnectOptions._init(this);
  }

  ClientConnectOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _lambdaFunctionArn = $v.lambdaFunctionArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientConnectOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientConnectOptions;
  }

  @override
  void update(void Function(ClientConnectOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientConnectOptions build() => _build();

  _$ClientConnectOptions _build() {
    final _$result = _$v ??
        new _$ClientConnectOptions._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'ClientConnectOptions', 'enabled'),
            lambdaFunctionArn: lambdaFunctionArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
