// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_verified_access_endpoint_eni_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVerifiedAccessEndpointEniOptions
    extends ModifyVerifiedAccessEndpointEniOptions {
  @override
  final VerifiedAccessEndpointProtocol? protocol;
  @override
  final int port;

  factory _$ModifyVerifiedAccessEndpointEniOptions(
          [void Function(ModifyVerifiedAccessEndpointEniOptionsBuilder)?
              updates]) =>
      (new ModifyVerifiedAccessEndpointEniOptionsBuilder()..update(updates))
          ._build();

  _$ModifyVerifiedAccessEndpointEniOptions._(
      {this.protocol, required this.port})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        port, r'ModifyVerifiedAccessEndpointEniOptions', 'port');
  }

  @override
  ModifyVerifiedAccessEndpointEniOptions rebuild(
          void Function(ModifyVerifiedAccessEndpointEniOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVerifiedAccessEndpointEniOptionsBuilder toBuilder() =>
      new ModifyVerifiedAccessEndpointEniOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVerifiedAccessEndpointEniOptions &&
        protocol == other.protocol &&
        port == other.port;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, port.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVerifiedAccessEndpointEniOptionsBuilder
    implements
        Builder<ModifyVerifiedAccessEndpointEniOptions,
            ModifyVerifiedAccessEndpointEniOptionsBuilder> {
  _$ModifyVerifiedAccessEndpointEniOptions? _$v;

  VerifiedAccessEndpointProtocol? _protocol;
  VerifiedAccessEndpointProtocol? get protocol => _$this._protocol;
  set protocol(VerifiedAccessEndpointProtocol? protocol) =>
      _$this._protocol = protocol;

  int? _port;
  int? get port => _$this._port;
  set port(int? port) => _$this._port = port;

  ModifyVerifiedAccessEndpointEniOptionsBuilder() {
    ModifyVerifiedAccessEndpointEniOptions._init(this);
  }

  ModifyVerifiedAccessEndpointEniOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _protocol = $v.protocol;
      _port = $v.port;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVerifiedAccessEndpointEniOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVerifiedAccessEndpointEniOptions;
  }

  @override
  void update(
      void Function(ModifyVerifiedAccessEndpointEniOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVerifiedAccessEndpointEniOptions build() => _build();

  _$ModifyVerifiedAccessEndpointEniOptions _build() {
    final _$result = _$v ??
        new _$ModifyVerifiedAccessEndpointEniOptions._(
            protocol: protocol,
            port: BuiltValueNullFieldError.checkNotNull(
                port, r'ModifyVerifiedAccessEndpointEniOptions', 'port'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
