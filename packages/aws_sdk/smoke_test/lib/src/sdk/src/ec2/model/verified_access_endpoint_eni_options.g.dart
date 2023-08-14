// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_access_endpoint_eni_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifiedAccessEndpointEniOptions
    extends VerifiedAccessEndpointEniOptions {
  @override
  final String? networkInterfaceId;
  @override
  final VerifiedAccessEndpointProtocol? protocol;
  @override
  final int port;

  factory _$VerifiedAccessEndpointEniOptions(
          [void Function(VerifiedAccessEndpointEniOptionsBuilder)? updates]) =>
      (new VerifiedAccessEndpointEniOptionsBuilder()..update(updates))._build();

  _$VerifiedAccessEndpointEniOptions._(
      {this.networkInterfaceId, this.protocol, required this.port})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        port, r'VerifiedAccessEndpointEniOptions', 'port');
  }

  @override
  VerifiedAccessEndpointEniOptions rebuild(
          void Function(VerifiedAccessEndpointEniOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifiedAccessEndpointEniOptionsBuilder toBuilder() =>
      new VerifiedAccessEndpointEniOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifiedAccessEndpointEniOptions &&
        networkInterfaceId == other.networkInterfaceId &&
        protocol == other.protocol &&
        port == other.port;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, port.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VerifiedAccessEndpointEniOptionsBuilder
    implements
        Builder<VerifiedAccessEndpointEniOptions,
            VerifiedAccessEndpointEniOptionsBuilder> {
  _$VerifiedAccessEndpointEniOptions? _$v;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  VerifiedAccessEndpointProtocol? _protocol;
  VerifiedAccessEndpointProtocol? get protocol => _$this._protocol;
  set protocol(VerifiedAccessEndpointProtocol? protocol) =>
      _$this._protocol = protocol;

  int? _port;
  int? get port => _$this._port;
  set port(int? port) => _$this._port = port;

  VerifiedAccessEndpointEniOptionsBuilder() {
    VerifiedAccessEndpointEniOptions._init(this);
  }

  VerifiedAccessEndpointEniOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInterfaceId = $v.networkInterfaceId;
      _protocol = $v.protocol;
      _port = $v.port;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifiedAccessEndpointEniOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifiedAccessEndpointEniOptions;
  }

  @override
  void update(void Function(VerifiedAccessEndpointEniOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifiedAccessEndpointEniOptions build() => _build();

  _$VerifiedAccessEndpointEniOptions _build() {
    final _$result = _$v ??
        new _$VerifiedAccessEndpointEniOptions._(
            networkInterfaceId: networkInterfaceId,
            protocol: protocol,
            port: BuiltValueNullFieldError.checkNotNull(
                port, r'VerifiedAccessEndpointEniOptions', 'port'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
