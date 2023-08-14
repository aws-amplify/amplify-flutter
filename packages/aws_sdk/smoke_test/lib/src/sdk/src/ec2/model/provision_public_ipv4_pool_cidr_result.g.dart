// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provision_public_ipv4_pool_cidr_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProvisionPublicIpv4PoolCidrResult
    extends ProvisionPublicIpv4PoolCidrResult {
  @override
  final String? poolId;
  @override
  final PublicIpv4PoolRange? poolAddressRange;

  factory _$ProvisionPublicIpv4PoolCidrResult(
          [void Function(ProvisionPublicIpv4PoolCidrResultBuilder)? updates]) =>
      (new ProvisionPublicIpv4PoolCidrResultBuilder()..update(updates))
          ._build();

  _$ProvisionPublicIpv4PoolCidrResult._({this.poolId, this.poolAddressRange})
      : super._();

  @override
  ProvisionPublicIpv4PoolCidrResult rebuild(
          void Function(ProvisionPublicIpv4PoolCidrResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProvisionPublicIpv4PoolCidrResultBuilder toBuilder() =>
      new ProvisionPublicIpv4PoolCidrResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProvisionPublicIpv4PoolCidrResult &&
        poolId == other.poolId &&
        poolAddressRange == other.poolAddressRange;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, poolId.hashCode);
    _$hash = $jc(_$hash, poolAddressRange.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ProvisionPublicIpv4PoolCidrResultBuilder
    implements
        Builder<ProvisionPublicIpv4PoolCidrResult,
            ProvisionPublicIpv4PoolCidrResultBuilder> {
  _$ProvisionPublicIpv4PoolCidrResult? _$v;

  String? _poolId;
  String? get poolId => _$this._poolId;
  set poolId(String? poolId) => _$this._poolId = poolId;

  PublicIpv4PoolRangeBuilder? _poolAddressRange;
  PublicIpv4PoolRangeBuilder get poolAddressRange =>
      _$this._poolAddressRange ??= new PublicIpv4PoolRangeBuilder();
  set poolAddressRange(PublicIpv4PoolRangeBuilder? poolAddressRange) =>
      _$this._poolAddressRange = poolAddressRange;

  ProvisionPublicIpv4PoolCidrResultBuilder();

  ProvisionPublicIpv4PoolCidrResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _poolId = $v.poolId;
      _poolAddressRange = $v.poolAddressRange?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProvisionPublicIpv4PoolCidrResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProvisionPublicIpv4PoolCidrResult;
  }

  @override
  void update(
      void Function(ProvisionPublicIpv4PoolCidrResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProvisionPublicIpv4PoolCidrResult build() => _build();

  _$ProvisionPublicIpv4PoolCidrResult _build() {
    _$ProvisionPublicIpv4PoolCidrResult _$result;
    try {
      _$result = _$v ??
          new _$ProvisionPublicIpv4PoolCidrResult._(
              poolId: poolId, poolAddressRange: _poolAddressRange?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'poolAddressRange';
        _poolAddressRange?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProvisionPublicIpv4PoolCidrResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
