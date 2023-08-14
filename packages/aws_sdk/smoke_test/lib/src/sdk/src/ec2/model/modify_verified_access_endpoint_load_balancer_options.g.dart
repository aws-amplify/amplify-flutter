// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_verified_access_endpoint_load_balancer_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVerifiedAccessEndpointLoadBalancerOptions
    extends ModifyVerifiedAccessEndpointLoadBalancerOptions {
  @override
  final _i2.BuiltList<String>? subnetIds;
  @override
  final VerifiedAccessEndpointProtocol? protocol;
  @override
  final int port;

  factory _$ModifyVerifiedAccessEndpointLoadBalancerOptions(
          [void Function(
                  ModifyVerifiedAccessEndpointLoadBalancerOptionsBuilder)?
              updates]) =>
      (new ModifyVerifiedAccessEndpointLoadBalancerOptionsBuilder()
            ..update(updates))
          ._build();

  _$ModifyVerifiedAccessEndpointLoadBalancerOptions._(
      {this.subnetIds, this.protocol, required this.port})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        port, r'ModifyVerifiedAccessEndpointLoadBalancerOptions', 'port');
  }

  @override
  ModifyVerifiedAccessEndpointLoadBalancerOptions rebuild(
          void Function(ModifyVerifiedAccessEndpointLoadBalancerOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVerifiedAccessEndpointLoadBalancerOptionsBuilder toBuilder() =>
      new ModifyVerifiedAccessEndpointLoadBalancerOptionsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVerifiedAccessEndpointLoadBalancerOptions &&
        subnetIds == other.subnetIds &&
        protocol == other.protocol &&
        port == other.port;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subnetIds.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, port.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVerifiedAccessEndpointLoadBalancerOptionsBuilder
    implements
        Builder<ModifyVerifiedAccessEndpointLoadBalancerOptions,
            ModifyVerifiedAccessEndpointLoadBalancerOptionsBuilder> {
  _$ModifyVerifiedAccessEndpointLoadBalancerOptions? _$v;

  _i2.ListBuilder<String>? _subnetIds;
  _i2.ListBuilder<String> get subnetIds =>
      _$this._subnetIds ??= new _i2.ListBuilder<String>();
  set subnetIds(_i2.ListBuilder<String>? subnetIds) =>
      _$this._subnetIds = subnetIds;

  VerifiedAccessEndpointProtocol? _protocol;
  VerifiedAccessEndpointProtocol? get protocol => _$this._protocol;
  set protocol(VerifiedAccessEndpointProtocol? protocol) =>
      _$this._protocol = protocol;

  int? _port;
  int? get port => _$this._port;
  set port(int? port) => _$this._port = port;

  ModifyVerifiedAccessEndpointLoadBalancerOptionsBuilder() {
    ModifyVerifiedAccessEndpointLoadBalancerOptions._init(this);
  }

  ModifyVerifiedAccessEndpointLoadBalancerOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subnetIds = $v.subnetIds?.toBuilder();
      _protocol = $v.protocol;
      _port = $v.port;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVerifiedAccessEndpointLoadBalancerOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVerifiedAccessEndpointLoadBalancerOptions;
  }

  @override
  void update(
      void Function(ModifyVerifiedAccessEndpointLoadBalancerOptionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVerifiedAccessEndpointLoadBalancerOptions build() => _build();

  _$ModifyVerifiedAccessEndpointLoadBalancerOptions _build() {
    _$ModifyVerifiedAccessEndpointLoadBalancerOptions _$result;
    try {
      _$result = _$v ??
          new _$ModifyVerifiedAccessEndpointLoadBalancerOptions._(
              subnetIds: _subnetIds?.build(),
              protocol: protocol,
              port: BuiltValueNullFieldError.checkNotNull(port,
                  r'ModifyVerifiedAccessEndpointLoadBalancerOptions', 'port'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subnetIds';
        _subnetIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVerifiedAccessEndpointLoadBalancerOptions',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
