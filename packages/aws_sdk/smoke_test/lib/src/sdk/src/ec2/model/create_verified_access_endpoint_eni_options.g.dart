// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_verified_access_endpoint_eni_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVerifiedAccessEndpointEniOptions
    extends CreateVerifiedAccessEndpointEniOptions {
  @override
  final String? networkInterfaceId;
  @override
  final VerifiedAccessEndpointProtocol? protocol;
  @override
  final int port;

  factory _$CreateVerifiedAccessEndpointEniOptions(
          [void Function(CreateVerifiedAccessEndpointEniOptionsBuilder)?
              updates]) =>
      (new CreateVerifiedAccessEndpointEniOptionsBuilder()..update(updates))
          ._build();

  _$CreateVerifiedAccessEndpointEniOptions._(
      {this.networkInterfaceId, this.protocol, required this.port})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        port, r'CreateVerifiedAccessEndpointEniOptions', 'port');
  }

  @override
  CreateVerifiedAccessEndpointEniOptions rebuild(
          void Function(CreateVerifiedAccessEndpointEniOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVerifiedAccessEndpointEniOptionsBuilder toBuilder() =>
      new CreateVerifiedAccessEndpointEniOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVerifiedAccessEndpointEniOptions &&
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

class CreateVerifiedAccessEndpointEniOptionsBuilder
    implements
        Builder<CreateVerifiedAccessEndpointEniOptions,
            CreateVerifiedAccessEndpointEniOptionsBuilder> {
  _$CreateVerifiedAccessEndpointEniOptions? _$v;

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

  CreateVerifiedAccessEndpointEniOptionsBuilder() {
    CreateVerifiedAccessEndpointEniOptions._init(this);
  }

  CreateVerifiedAccessEndpointEniOptionsBuilder get _$this {
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
  void replace(CreateVerifiedAccessEndpointEniOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVerifiedAccessEndpointEniOptions;
  }

  @override
  void update(
      void Function(CreateVerifiedAccessEndpointEniOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVerifiedAccessEndpointEniOptions build() => _build();

  _$CreateVerifiedAccessEndpointEniOptions _build() {
    final _$result = _$v ??
        new _$CreateVerifiedAccessEndpointEniOptions._(
            networkInterfaceId: networkInterfaceId,
            protocol: protocol,
            port: BuiltValueNullFieldError.checkNotNull(
                port, r'CreateVerifiedAccessEndpointEniOptions', 'port'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
