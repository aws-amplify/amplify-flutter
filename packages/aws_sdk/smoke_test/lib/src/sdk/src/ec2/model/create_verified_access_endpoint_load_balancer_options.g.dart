// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_verified_access_endpoint_load_balancer_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVerifiedAccessEndpointLoadBalancerOptions
    extends CreateVerifiedAccessEndpointLoadBalancerOptions {
  @override
  final VerifiedAccessEndpointProtocol? protocol;
  @override
  final int port;
  @override
  final String? loadBalancerArn;
  @override
  final _i2.BuiltList<String>? subnetIds;

  factory _$CreateVerifiedAccessEndpointLoadBalancerOptions(
          [void Function(
                  CreateVerifiedAccessEndpointLoadBalancerOptionsBuilder)?
              updates]) =>
      (new CreateVerifiedAccessEndpointLoadBalancerOptionsBuilder()
            ..update(updates))
          ._build();

  _$CreateVerifiedAccessEndpointLoadBalancerOptions._(
      {this.protocol, required this.port, this.loadBalancerArn, this.subnetIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        port, r'CreateVerifiedAccessEndpointLoadBalancerOptions', 'port');
  }

  @override
  CreateVerifiedAccessEndpointLoadBalancerOptions rebuild(
          void Function(CreateVerifiedAccessEndpointLoadBalancerOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVerifiedAccessEndpointLoadBalancerOptionsBuilder toBuilder() =>
      new CreateVerifiedAccessEndpointLoadBalancerOptionsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVerifiedAccessEndpointLoadBalancerOptions &&
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

class CreateVerifiedAccessEndpointLoadBalancerOptionsBuilder
    implements
        Builder<CreateVerifiedAccessEndpointLoadBalancerOptions,
            CreateVerifiedAccessEndpointLoadBalancerOptionsBuilder> {
  _$CreateVerifiedAccessEndpointLoadBalancerOptions? _$v;

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

  CreateVerifiedAccessEndpointLoadBalancerOptionsBuilder() {
    CreateVerifiedAccessEndpointLoadBalancerOptions._init(this);
  }

  CreateVerifiedAccessEndpointLoadBalancerOptionsBuilder get _$this {
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
  void replace(CreateVerifiedAccessEndpointLoadBalancerOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVerifiedAccessEndpointLoadBalancerOptions;
  }

  @override
  void update(
      void Function(CreateVerifiedAccessEndpointLoadBalancerOptionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVerifiedAccessEndpointLoadBalancerOptions build() => _build();

  _$CreateVerifiedAccessEndpointLoadBalancerOptions _build() {
    _$CreateVerifiedAccessEndpointLoadBalancerOptions _$result;
    try {
      _$result = _$v ??
          new _$CreateVerifiedAccessEndpointLoadBalancerOptions._(
              protocol: protocol,
              port: BuiltValueNullFieldError.checkNotNull(port,
                  r'CreateVerifiedAccessEndpointLoadBalancerOptions', 'port'),
              loadBalancerArn: loadBalancerArn,
              subnetIds: _subnetIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subnetIds';
        _subnetIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVerifiedAccessEndpointLoadBalancerOptions',
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
