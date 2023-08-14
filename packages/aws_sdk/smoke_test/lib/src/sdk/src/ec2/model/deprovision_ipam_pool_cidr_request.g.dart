// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deprovision_ipam_pool_cidr_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeprovisionIpamPoolCidrRequest extends DeprovisionIpamPoolCidrRequest {
  @override
  final bool dryRun;
  @override
  final String? ipamPoolId;
  @override
  final String? cidr;

  factory _$DeprovisionIpamPoolCidrRequest(
          [void Function(DeprovisionIpamPoolCidrRequestBuilder)? updates]) =>
      (new DeprovisionIpamPoolCidrRequestBuilder()..update(updates))._build();

  _$DeprovisionIpamPoolCidrRequest._(
      {required this.dryRun, this.ipamPoolId, this.cidr})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeprovisionIpamPoolCidrRequest', 'dryRun');
  }

  @override
  DeprovisionIpamPoolCidrRequest rebuild(
          void Function(DeprovisionIpamPoolCidrRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeprovisionIpamPoolCidrRequestBuilder toBuilder() =>
      new DeprovisionIpamPoolCidrRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeprovisionIpamPoolCidrRequest &&
        dryRun == other.dryRun &&
        ipamPoolId == other.ipamPoolId &&
        cidr == other.cidr;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamPoolId.hashCode);
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeprovisionIpamPoolCidrRequestBuilder
    implements
        Builder<DeprovisionIpamPoolCidrRequest,
            DeprovisionIpamPoolCidrRequestBuilder> {
  _$DeprovisionIpamPoolCidrRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _ipamPoolId;
  String? get ipamPoolId => _$this._ipamPoolId;
  set ipamPoolId(String? ipamPoolId) => _$this._ipamPoolId = ipamPoolId;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  DeprovisionIpamPoolCidrRequestBuilder() {
    DeprovisionIpamPoolCidrRequest._init(this);
  }

  DeprovisionIpamPoolCidrRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamPoolId = $v.ipamPoolId;
      _cidr = $v.cidr;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeprovisionIpamPoolCidrRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeprovisionIpamPoolCidrRequest;
  }

  @override
  void update(void Function(DeprovisionIpamPoolCidrRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeprovisionIpamPoolCidrRequest build() => _build();

  _$DeprovisionIpamPoolCidrRequest _build() {
    final _$result = _$v ??
        new _$DeprovisionIpamPoolCidrRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeprovisionIpamPoolCidrRequest', 'dryRun'),
            ipamPoolId: ipamPoolId,
            cidr: cidr);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
