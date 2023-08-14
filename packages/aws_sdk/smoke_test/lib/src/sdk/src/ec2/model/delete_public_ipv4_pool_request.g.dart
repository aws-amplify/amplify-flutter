// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_public_ipv4_pool_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeletePublicIpv4PoolRequest extends DeletePublicIpv4PoolRequest {
  @override
  final bool dryRun;
  @override
  final String? poolId;

  factory _$DeletePublicIpv4PoolRequest(
          [void Function(DeletePublicIpv4PoolRequestBuilder)? updates]) =>
      (new DeletePublicIpv4PoolRequestBuilder()..update(updates))._build();

  _$DeletePublicIpv4PoolRequest._({required this.dryRun, this.poolId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeletePublicIpv4PoolRequest', 'dryRun');
  }

  @override
  DeletePublicIpv4PoolRequest rebuild(
          void Function(DeletePublicIpv4PoolRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeletePublicIpv4PoolRequestBuilder toBuilder() =>
      new DeletePublicIpv4PoolRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeletePublicIpv4PoolRequest &&
        dryRun == other.dryRun &&
        poolId == other.poolId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, poolId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeletePublicIpv4PoolRequestBuilder
    implements
        Builder<DeletePublicIpv4PoolRequest,
            DeletePublicIpv4PoolRequestBuilder> {
  _$DeletePublicIpv4PoolRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _poolId;
  String? get poolId => _$this._poolId;
  set poolId(String? poolId) => _$this._poolId = poolId;

  DeletePublicIpv4PoolRequestBuilder() {
    DeletePublicIpv4PoolRequest._init(this);
  }

  DeletePublicIpv4PoolRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _poolId = $v.poolId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeletePublicIpv4PoolRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeletePublicIpv4PoolRequest;
  }

  @override
  void update(void Function(DeletePublicIpv4PoolRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeletePublicIpv4PoolRequest build() => _build();

  _$DeletePublicIpv4PoolRequest _build() {
    final _$result = _$v ??
        new _$DeletePublicIpv4PoolRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeletePublicIpv4PoolRequest', 'dryRun'),
            poolId: poolId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
