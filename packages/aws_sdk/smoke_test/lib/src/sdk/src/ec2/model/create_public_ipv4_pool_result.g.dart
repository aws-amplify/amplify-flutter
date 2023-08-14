// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_public_ipv4_pool_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePublicIpv4PoolResult extends CreatePublicIpv4PoolResult {
  @override
  final String? poolId;

  factory _$CreatePublicIpv4PoolResult(
          [void Function(CreatePublicIpv4PoolResultBuilder)? updates]) =>
      (new CreatePublicIpv4PoolResultBuilder()..update(updates))._build();

  _$CreatePublicIpv4PoolResult._({this.poolId}) : super._();

  @override
  CreatePublicIpv4PoolResult rebuild(
          void Function(CreatePublicIpv4PoolResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePublicIpv4PoolResultBuilder toBuilder() =>
      new CreatePublicIpv4PoolResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePublicIpv4PoolResult && poolId == other.poolId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, poolId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreatePublicIpv4PoolResultBuilder
    implements
        Builder<CreatePublicIpv4PoolResult, CreatePublicIpv4PoolResultBuilder> {
  _$CreatePublicIpv4PoolResult? _$v;

  String? _poolId;
  String? get poolId => _$this._poolId;
  set poolId(String? poolId) => _$this._poolId = poolId;

  CreatePublicIpv4PoolResultBuilder();

  CreatePublicIpv4PoolResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _poolId = $v.poolId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePublicIpv4PoolResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatePublicIpv4PoolResult;
  }

  @override
  void update(void Function(CreatePublicIpv4PoolResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePublicIpv4PoolResult build() => _build();

  _$CreatePublicIpv4PoolResult _build() {
    final _$result = _$v ?? new _$CreatePublicIpv4PoolResult._(poolId: poolId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
