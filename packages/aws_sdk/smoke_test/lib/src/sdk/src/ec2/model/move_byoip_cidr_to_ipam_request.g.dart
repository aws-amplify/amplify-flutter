// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_byoip_cidr_to_ipam_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MoveByoipCidrToIpamRequest extends MoveByoipCidrToIpamRequest {
  @override
  final bool dryRun;
  @override
  final String? cidr;
  @override
  final String? ipamPoolId;
  @override
  final String? ipamPoolOwner;

  factory _$MoveByoipCidrToIpamRequest(
          [void Function(MoveByoipCidrToIpamRequestBuilder)? updates]) =>
      (new MoveByoipCidrToIpamRequestBuilder()..update(updates))._build();

  _$MoveByoipCidrToIpamRequest._(
      {required this.dryRun, this.cidr, this.ipamPoolId, this.ipamPoolOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'MoveByoipCidrToIpamRequest', 'dryRun');
  }

  @override
  MoveByoipCidrToIpamRequest rebuild(
          void Function(MoveByoipCidrToIpamRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MoveByoipCidrToIpamRequestBuilder toBuilder() =>
      new MoveByoipCidrToIpamRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoveByoipCidrToIpamRequest &&
        dryRun == other.dryRun &&
        cidr == other.cidr &&
        ipamPoolId == other.ipamPoolId &&
        ipamPoolOwner == other.ipamPoolOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jc(_$hash, ipamPoolId.hashCode);
    _$hash = $jc(_$hash, ipamPoolOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MoveByoipCidrToIpamRequestBuilder
    implements
        Builder<MoveByoipCidrToIpamRequest, MoveByoipCidrToIpamRequestBuilder> {
  _$MoveByoipCidrToIpamRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  String? _ipamPoolId;
  String? get ipamPoolId => _$this._ipamPoolId;
  set ipamPoolId(String? ipamPoolId) => _$this._ipamPoolId = ipamPoolId;

  String? _ipamPoolOwner;
  String? get ipamPoolOwner => _$this._ipamPoolOwner;
  set ipamPoolOwner(String? ipamPoolOwner) =>
      _$this._ipamPoolOwner = ipamPoolOwner;

  MoveByoipCidrToIpamRequestBuilder() {
    MoveByoipCidrToIpamRequest._init(this);
  }

  MoveByoipCidrToIpamRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _cidr = $v.cidr;
      _ipamPoolId = $v.ipamPoolId;
      _ipamPoolOwner = $v.ipamPoolOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MoveByoipCidrToIpamRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MoveByoipCidrToIpamRequest;
  }

  @override
  void update(void Function(MoveByoipCidrToIpamRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MoveByoipCidrToIpamRequest build() => _build();

  _$MoveByoipCidrToIpamRequest _build() {
    final _$result = _$v ??
        new _$MoveByoipCidrToIpamRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'MoveByoipCidrToIpamRequest', 'dryRun'),
            cidr: cidr,
            ipamPoolId: ipamPoolId,
            ipamPoolOwner: ipamPoolOwner);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
