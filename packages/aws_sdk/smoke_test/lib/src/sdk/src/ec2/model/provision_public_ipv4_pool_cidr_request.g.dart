// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provision_public_ipv4_pool_cidr_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProvisionPublicIpv4PoolCidrRequest
    extends ProvisionPublicIpv4PoolCidrRequest {
  @override
  final bool dryRun;
  @override
  final String? ipamPoolId;
  @override
  final String? poolId;
  @override
  final int netmaskLength;

  factory _$ProvisionPublicIpv4PoolCidrRequest(
          [void Function(ProvisionPublicIpv4PoolCidrRequestBuilder)?
              updates]) =>
      (new ProvisionPublicIpv4PoolCidrRequestBuilder()..update(updates))
          ._build();

  _$ProvisionPublicIpv4PoolCidrRequest._(
      {required this.dryRun,
      this.ipamPoolId,
      this.poolId,
      required this.netmaskLength})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ProvisionPublicIpv4PoolCidrRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        netmaskLength, r'ProvisionPublicIpv4PoolCidrRequest', 'netmaskLength');
  }

  @override
  ProvisionPublicIpv4PoolCidrRequest rebuild(
          void Function(ProvisionPublicIpv4PoolCidrRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProvisionPublicIpv4PoolCidrRequestBuilder toBuilder() =>
      new ProvisionPublicIpv4PoolCidrRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProvisionPublicIpv4PoolCidrRequest &&
        dryRun == other.dryRun &&
        ipamPoolId == other.ipamPoolId &&
        poolId == other.poolId &&
        netmaskLength == other.netmaskLength;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamPoolId.hashCode);
    _$hash = $jc(_$hash, poolId.hashCode);
    _$hash = $jc(_$hash, netmaskLength.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ProvisionPublicIpv4PoolCidrRequestBuilder
    implements
        Builder<ProvisionPublicIpv4PoolCidrRequest,
            ProvisionPublicIpv4PoolCidrRequestBuilder> {
  _$ProvisionPublicIpv4PoolCidrRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _ipamPoolId;
  String? get ipamPoolId => _$this._ipamPoolId;
  set ipamPoolId(String? ipamPoolId) => _$this._ipamPoolId = ipamPoolId;

  String? _poolId;
  String? get poolId => _$this._poolId;
  set poolId(String? poolId) => _$this._poolId = poolId;

  int? _netmaskLength;
  int? get netmaskLength => _$this._netmaskLength;
  set netmaskLength(int? netmaskLength) =>
      _$this._netmaskLength = netmaskLength;

  ProvisionPublicIpv4PoolCidrRequestBuilder() {
    ProvisionPublicIpv4PoolCidrRequest._init(this);
  }

  ProvisionPublicIpv4PoolCidrRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamPoolId = $v.ipamPoolId;
      _poolId = $v.poolId;
      _netmaskLength = $v.netmaskLength;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProvisionPublicIpv4PoolCidrRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProvisionPublicIpv4PoolCidrRequest;
  }

  @override
  void update(
      void Function(ProvisionPublicIpv4PoolCidrRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProvisionPublicIpv4PoolCidrRequest build() => _build();

  _$ProvisionPublicIpv4PoolCidrRequest _build() {
    final _$result = _$v ??
        new _$ProvisionPublicIpv4PoolCidrRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ProvisionPublicIpv4PoolCidrRequest', 'dryRun'),
            ipamPoolId: ipamPoolId,
            poolId: poolId,
            netmaskLength: BuiltValueNullFieldError.checkNotNull(netmaskLength,
                r'ProvisionPublicIpv4PoolCidrRequest', 'netmaskLength'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
