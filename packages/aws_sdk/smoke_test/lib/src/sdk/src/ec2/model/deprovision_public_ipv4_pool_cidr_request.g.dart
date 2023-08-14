// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deprovision_public_ipv4_pool_cidr_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeprovisionPublicIpv4PoolCidrRequest
    extends DeprovisionPublicIpv4PoolCidrRequest {
  @override
  final bool dryRun;
  @override
  final String? poolId;
  @override
  final String? cidr;

  factory _$DeprovisionPublicIpv4PoolCidrRequest(
          [void Function(DeprovisionPublicIpv4PoolCidrRequestBuilder)?
              updates]) =>
      (new DeprovisionPublicIpv4PoolCidrRequestBuilder()..update(updates))
          ._build();

  _$DeprovisionPublicIpv4PoolCidrRequest._(
      {required this.dryRun, this.poolId, this.cidr})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeprovisionPublicIpv4PoolCidrRequest', 'dryRun');
  }

  @override
  DeprovisionPublicIpv4PoolCidrRequest rebuild(
          void Function(DeprovisionPublicIpv4PoolCidrRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeprovisionPublicIpv4PoolCidrRequestBuilder toBuilder() =>
      new DeprovisionPublicIpv4PoolCidrRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeprovisionPublicIpv4PoolCidrRequest &&
        dryRun == other.dryRun &&
        poolId == other.poolId &&
        cidr == other.cidr;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, poolId.hashCode);
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeprovisionPublicIpv4PoolCidrRequestBuilder
    implements
        Builder<DeprovisionPublicIpv4PoolCidrRequest,
            DeprovisionPublicIpv4PoolCidrRequestBuilder> {
  _$DeprovisionPublicIpv4PoolCidrRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _poolId;
  String? get poolId => _$this._poolId;
  set poolId(String? poolId) => _$this._poolId = poolId;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  DeprovisionPublicIpv4PoolCidrRequestBuilder() {
    DeprovisionPublicIpv4PoolCidrRequest._init(this);
  }

  DeprovisionPublicIpv4PoolCidrRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _poolId = $v.poolId;
      _cidr = $v.cidr;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeprovisionPublicIpv4PoolCidrRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeprovisionPublicIpv4PoolCidrRequest;
  }

  @override
  void update(
      void Function(DeprovisionPublicIpv4PoolCidrRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeprovisionPublicIpv4PoolCidrRequest build() => _build();

  _$DeprovisionPublicIpv4PoolCidrRequest _build() {
    final _$result = _$v ??
        new _$DeprovisionPublicIpv4PoolCidrRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeprovisionPublicIpv4PoolCidrRequest', 'dryRun'),
            poolId: poolId,
            cidr: cidr);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
