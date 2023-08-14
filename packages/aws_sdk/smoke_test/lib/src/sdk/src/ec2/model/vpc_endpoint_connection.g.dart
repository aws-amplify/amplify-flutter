// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpc_endpoint_connection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VpcEndpointConnection extends VpcEndpointConnection {
  @override
  final String? serviceId;
  @override
  final String? vpcEndpointId;
  @override
  final String? vpcEndpointOwner;
  @override
  final State? vpcEndpointState;
  @override
  final DateTime? creationTimestamp;
  @override
  final _i2.BuiltList<DnsEntry>? dnsEntries;
  @override
  final _i2.BuiltList<String>? networkLoadBalancerArns;
  @override
  final _i2.BuiltList<String>? gatewayLoadBalancerArns;
  @override
  final IpAddressType? ipAddressType;
  @override
  final String? vpcEndpointConnectionId;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$VpcEndpointConnection(
          [void Function(VpcEndpointConnectionBuilder)? updates]) =>
      (new VpcEndpointConnectionBuilder()..update(updates))._build();

  _$VpcEndpointConnection._(
      {this.serviceId,
      this.vpcEndpointId,
      this.vpcEndpointOwner,
      this.vpcEndpointState,
      this.creationTimestamp,
      this.dnsEntries,
      this.networkLoadBalancerArns,
      this.gatewayLoadBalancerArns,
      this.ipAddressType,
      this.vpcEndpointConnectionId,
      this.tags})
      : super._();

  @override
  VpcEndpointConnection rebuild(
          void Function(VpcEndpointConnectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VpcEndpointConnectionBuilder toBuilder() =>
      new VpcEndpointConnectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VpcEndpointConnection &&
        serviceId == other.serviceId &&
        vpcEndpointId == other.vpcEndpointId &&
        vpcEndpointOwner == other.vpcEndpointOwner &&
        vpcEndpointState == other.vpcEndpointState &&
        creationTimestamp == other.creationTimestamp &&
        dnsEntries == other.dnsEntries &&
        networkLoadBalancerArns == other.networkLoadBalancerArns &&
        gatewayLoadBalancerArns == other.gatewayLoadBalancerArns &&
        ipAddressType == other.ipAddressType &&
        vpcEndpointConnectionId == other.vpcEndpointConnectionId &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jc(_$hash, vpcEndpointId.hashCode);
    _$hash = $jc(_$hash, vpcEndpointOwner.hashCode);
    _$hash = $jc(_$hash, vpcEndpointState.hashCode);
    _$hash = $jc(_$hash, creationTimestamp.hashCode);
    _$hash = $jc(_$hash, dnsEntries.hashCode);
    _$hash = $jc(_$hash, networkLoadBalancerArns.hashCode);
    _$hash = $jc(_$hash, gatewayLoadBalancerArns.hashCode);
    _$hash = $jc(_$hash, ipAddressType.hashCode);
    _$hash = $jc(_$hash, vpcEndpointConnectionId.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VpcEndpointConnectionBuilder
    implements Builder<VpcEndpointConnection, VpcEndpointConnectionBuilder> {
  _$VpcEndpointConnection? _$v;

  String? _serviceId;
  String? get serviceId => _$this._serviceId;
  set serviceId(String? serviceId) => _$this._serviceId = serviceId;

  String? _vpcEndpointId;
  String? get vpcEndpointId => _$this._vpcEndpointId;
  set vpcEndpointId(String? vpcEndpointId) =>
      _$this._vpcEndpointId = vpcEndpointId;

  String? _vpcEndpointOwner;
  String? get vpcEndpointOwner => _$this._vpcEndpointOwner;
  set vpcEndpointOwner(String? vpcEndpointOwner) =>
      _$this._vpcEndpointOwner = vpcEndpointOwner;

  State? _vpcEndpointState;
  State? get vpcEndpointState => _$this._vpcEndpointState;
  set vpcEndpointState(State? vpcEndpointState) =>
      _$this._vpcEndpointState = vpcEndpointState;

  DateTime? _creationTimestamp;
  DateTime? get creationTimestamp => _$this._creationTimestamp;
  set creationTimestamp(DateTime? creationTimestamp) =>
      _$this._creationTimestamp = creationTimestamp;

  _i2.ListBuilder<DnsEntry>? _dnsEntries;
  _i2.ListBuilder<DnsEntry> get dnsEntries =>
      _$this._dnsEntries ??= new _i2.ListBuilder<DnsEntry>();
  set dnsEntries(_i2.ListBuilder<DnsEntry>? dnsEntries) =>
      _$this._dnsEntries = dnsEntries;

  _i2.ListBuilder<String>? _networkLoadBalancerArns;
  _i2.ListBuilder<String> get networkLoadBalancerArns =>
      _$this._networkLoadBalancerArns ??= new _i2.ListBuilder<String>();
  set networkLoadBalancerArns(
          _i2.ListBuilder<String>? networkLoadBalancerArns) =>
      _$this._networkLoadBalancerArns = networkLoadBalancerArns;

  _i2.ListBuilder<String>? _gatewayLoadBalancerArns;
  _i2.ListBuilder<String> get gatewayLoadBalancerArns =>
      _$this._gatewayLoadBalancerArns ??= new _i2.ListBuilder<String>();
  set gatewayLoadBalancerArns(
          _i2.ListBuilder<String>? gatewayLoadBalancerArns) =>
      _$this._gatewayLoadBalancerArns = gatewayLoadBalancerArns;

  IpAddressType? _ipAddressType;
  IpAddressType? get ipAddressType => _$this._ipAddressType;
  set ipAddressType(IpAddressType? ipAddressType) =>
      _$this._ipAddressType = ipAddressType;

  String? _vpcEndpointConnectionId;
  String? get vpcEndpointConnectionId => _$this._vpcEndpointConnectionId;
  set vpcEndpointConnectionId(String? vpcEndpointConnectionId) =>
      _$this._vpcEndpointConnectionId = vpcEndpointConnectionId;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  VpcEndpointConnectionBuilder();

  VpcEndpointConnectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceId = $v.serviceId;
      _vpcEndpointId = $v.vpcEndpointId;
      _vpcEndpointOwner = $v.vpcEndpointOwner;
      _vpcEndpointState = $v.vpcEndpointState;
      _creationTimestamp = $v.creationTimestamp;
      _dnsEntries = $v.dnsEntries?.toBuilder();
      _networkLoadBalancerArns = $v.networkLoadBalancerArns?.toBuilder();
      _gatewayLoadBalancerArns = $v.gatewayLoadBalancerArns?.toBuilder();
      _ipAddressType = $v.ipAddressType;
      _vpcEndpointConnectionId = $v.vpcEndpointConnectionId;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VpcEndpointConnection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VpcEndpointConnection;
  }

  @override
  void update(void Function(VpcEndpointConnectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VpcEndpointConnection build() => _build();

  _$VpcEndpointConnection _build() {
    _$VpcEndpointConnection _$result;
    try {
      _$result = _$v ??
          new _$VpcEndpointConnection._(
              serviceId: serviceId,
              vpcEndpointId: vpcEndpointId,
              vpcEndpointOwner: vpcEndpointOwner,
              vpcEndpointState: vpcEndpointState,
              creationTimestamp: creationTimestamp,
              dnsEntries: _dnsEntries?.build(),
              networkLoadBalancerArns: _networkLoadBalancerArns?.build(),
              gatewayLoadBalancerArns: _gatewayLoadBalancerArns?.build(),
              ipAddressType: ipAddressType,
              vpcEndpointConnectionId: vpcEndpointConnectionId,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dnsEntries';
        _dnsEntries?.build();
        _$failedField = 'networkLoadBalancerArns';
        _networkLoadBalancerArns?.build();
        _$failedField = 'gatewayLoadBalancerArns';
        _gatewayLoadBalancerArns?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VpcEndpointConnection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
