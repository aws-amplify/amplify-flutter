// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_access_endpoint_load_balancer_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifiedAccessEndpointLoadBalancerOptions
    extends VerifiedAccessEndpointLoadBalancerOptions {
  @override
  final VerifiedAccessEndpointProtocol? protocol;
  @override
  final int port;
  @override
  final String? loadBalancerArn;
  @override
  final _i2.BuiltList<String>? subnetIds;

  factory _$VerifiedAccessEndpointLoadBalancerOptions(
          [void Function(VerifiedAccessEndpointLoadBalancerOptionsBuilder)?
              updates]) =>
      (new VerifiedAccessEndpointLoadBalancerOptionsBuilder()..update(updates))
          ._build();

  _$VerifiedAccessEndpointLoadBalancerOptions._(
      {this.protocol, required this.port, this.loadBalancerArn, this.subnetIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        port, r'VerifiedAccessEndpointLoadBalancerOptions', 'port');
  }

  @override
  VerifiedAccessEndpointLoadBalancerOptions rebuild(
          void Function(VerifiedAccessEndpointLoadBalancerOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifiedAccessEndpointLoadBalancerOptionsBuilder toBuilder() =>
      new VerifiedAccessEndpointLoadBalancerOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifiedAccessEndpointLoadBalancerOptions &&
        protocol == other.protocol &&
        port == other.port &&
        loadBalancerArn == other.loadBalancerArn &&
        subnetIds == other.subnetIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, port.hashCode);
    _$hash = $jc(_$hash, loadBalancerArn.hashCode);
    _$hash = $jc(_$hash, subnetIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VerifiedAccessEndpointLoadBalancerOptionsBuilder
    implements
        Builder<VerifiedAccessEndpointLoadBalancerOptions,
            VerifiedAccessEndpointLoadBalancerOptionsBuilder> {
  _$VerifiedAccessEndpointLoadBalancerOptions? _$v;

  VerifiedAccessEndpointProtocol? _protocol;
  VerifiedAccessEndpointProtocol? get protocol => _$this._protocol;
  set protocol(VerifiedAccessEndpointProtocol? protocol) =>
      _$this._protocol = protocol;

  int? _port;
  int? get port => _$this._port;
  set port(int? port) => _$this._port = port;

  String? _loadBalancerArn;
  String? get loadBalancerArn => _$this._loadBalancerArn;
  set loadBalancerArn(String? loadBalancerArn) =>
      _$this._loadBalancerArn = loadBalancerArn;

  _i2.ListBuilder<String>? _subnetIds;
  _i2.ListBuilder<String> get subnetIds =>
      _$this._subnetIds ??= new _i2.ListBuilder<String>();
  set subnetIds(_i2.ListBuilder<String>? subnetIds) =>
      _$this._subnetIds = subnetIds;

  VerifiedAccessEndpointLoadBalancerOptionsBuilder() {
    VerifiedAccessEndpointLoadBalancerOptions._init(this);
  }

  VerifiedAccessEndpointLoadBalancerOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _protocol = $v.protocol;
      _port = $v.port;
      _loadBalancerArn = $v.loadBalancerArn;
      _subnetIds = $v.subnetIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifiedAccessEndpointLoadBalancerOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifiedAccessEndpointLoadBalancerOptions;
  }

  @override
  void update(
      void Function(VerifiedAccessEndpointLoadBalancerOptionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifiedAccessEndpointLoadBalancerOptions build() => _build();

  _$VerifiedAccessEndpointLoadBalancerOptions _build() {
    _$VerifiedAccessEndpointLoadBalancerOptions _$result;
    try {
      _$result = _$v ??
          new _$VerifiedAccessEndpointLoadBalancerOptions._(
              protocol: protocol,
              port: BuiltValueNullFieldError.checkNotNull(
                  port, r'VerifiedAccessEndpointLoadBalancerOptions', 'port'),
              loadBalancerArn: loadBalancerArn,
              subnetIds: _subnetIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subnetIds';
        _subnetIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VerifiedAccessEndpointLoadBalancerOptions',
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
