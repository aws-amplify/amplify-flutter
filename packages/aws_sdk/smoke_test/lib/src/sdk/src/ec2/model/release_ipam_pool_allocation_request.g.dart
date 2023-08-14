// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'release_ipam_pool_allocation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReleaseIpamPoolAllocationRequest
    extends ReleaseIpamPoolAllocationRequest {
  @override
  final bool dryRun;
  @override
  final String? ipamPoolId;
  @override
  final String? cidr;
  @override
  final String? ipamPoolAllocationId;

  factory _$ReleaseIpamPoolAllocationRequest(
          [void Function(ReleaseIpamPoolAllocationRequestBuilder)? updates]) =>
      (new ReleaseIpamPoolAllocationRequestBuilder()..update(updates))._build();

  _$ReleaseIpamPoolAllocationRequest._(
      {required this.dryRun,
      this.ipamPoolId,
      this.cidr,
      this.ipamPoolAllocationId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ReleaseIpamPoolAllocationRequest', 'dryRun');
  }

  @override
  ReleaseIpamPoolAllocationRequest rebuild(
          void Function(ReleaseIpamPoolAllocationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReleaseIpamPoolAllocationRequestBuilder toBuilder() =>
      new ReleaseIpamPoolAllocationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReleaseIpamPoolAllocationRequest &&
        dryRun == other.dryRun &&
        ipamPoolId == other.ipamPoolId &&
        cidr == other.cidr &&
        ipamPoolAllocationId == other.ipamPoolAllocationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamPoolId.hashCode);
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jc(_$hash, ipamPoolAllocationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReleaseIpamPoolAllocationRequestBuilder
    implements
        Builder<ReleaseIpamPoolAllocationRequest,
            ReleaseIpamPoolAllocationRequestBuilder> {
  _$ReleaseIpamPoolAllocationRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _ipamPoolId;
  String? get ipamPoolId => _$this._ipamPoolId;
  set ipamPoolId(String? ipamPoolId) => _$this._ipamPoolId = ipamPoolId;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  String? _ipamPoolAllocationId;
  String? get ipamPoolAllocationId => _$this._ipamPoolAllocationId;
  set ipamPoolAllocationId(String? ipamPoolAllocationId) =>
      _$this._ipamPoolAllocationId = ipamPoolAllocationId;

  ReleaseIpamPoolAllocationRequestBuilder() {
    ReleaseIpamPoolAllocationRequest._init(this);
  }

  ReleaseIpamPoolAllocationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamPoolId = $v.ipamPoolId;
      _cidr = $v.cidr;
      _ipamPoolAllocationId = $v.ipamPoolAllocationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReleaseIpamPoolAllocationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReleaseIpamPoolAllocationRequest;
  }

  @override
  void update(void Function(ReleaseIpamPoolAllocationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReleaseIpamPoolAllocationRequest build() => _build();

  _$ReleaseIpamPoolAllocationRequest _build() {
    final _$result = _$v ??
        new _$ReleaseIpamPoolAllocationRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ReleaseIpamPoolAllocationRequest', 'dryRun'),
            ipamPoolId: ipamPoolId,
            cidr: cidr,
            ipamPoolAllocationId: ipamPoolAllocationId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
