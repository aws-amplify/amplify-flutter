// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deprovision_public_ipv4_pool_cidr_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeprovisionPublicIpv4PoolCidrResult
    extends DeprovisionPublicIpv4PoolCidrResult {
  @override
  final String? poolId;
  @override
  final _i2.BuiltList<String>? deprovisionedAddresses;

  factory _$DeprovisionPublicIpv4PoolCidrResult(
          [void Function(DeprovisionPublicIpv4PoolCidrResultBuilder)?
              updates]) =>
      (new DeprovisionPublicIpv4PoolCidrResultBuilder()..update(updates))
          ._build();

  _$DeprovisionPublicIpv4PoolCidrResult._(
      {this.poolId, this.deprovisionedAddresses})
      : super._();

  @override
  DeprovisionPublicIpv4PoolCidrResult rebuild(
          void Function(DeprovisionPublicIpv4PoolCidrResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeprovisionPublicIpv4PoolCidrResultBuilder toBuilder() =>
      new DeprovisionPublicIpv4PoolCidrResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeprovisionPublicIpv4PoolCidrResult &&
        poolId == other.poolId &&
        deprovisionedAddresses == other.deprovisionedAddresses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, poolId.hashCode);
    _$hash = $jc(_$hash, deprovisionedAddresses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeprovisionPublicIpv4PoolCidrResultBuilder
    implements
        Builder<DeprovisionPublicIpv4PoolCidrResult,
            DeprovisionPublicIpv4PoolCidrResultBuilder> {
  _$DeprovisionPublicIpv4PoolCidrResult? _$v;

  String? _poolId;
  String? get poolId => _$this._poolId;
  set poolId(String? poolId) => _$this._poolId = poolId;

  _i2.ListBuilder<String>? _deprovisionedAddresses;
  _i2.ListBuilder<String> get deprovisionedAddresses =>
      _$this._deprovisionedAddresses ??= new _i2.ListBuilder<String>();
  set deprovisionedAddresses(_i2.ListBuilder<String>? deprovisionedAddresses) =>
      _$this._deprovisionedAddresses = deprovisionedAddresses;

  DeprovisionPublicIpv4PoolCidrResultBuilder();

  DeprovisionPublicIpv4PoolCidrResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _poolId = $v.poolId;
      _deprovisionedAddresses = $v.deprovisionedAddresses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeprovisionPublicIpv4PoolCidrResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeprovisionPublicIpv4PoolCidrResult;
  }

  @override
  void update(
      void Function(DeprovisionPublicIpv4PoolCidrResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeprovisionPublicIpv4PoolCidrResult build() => _build();

  _$DeprovisionPublicIpv4PoolCidrResult _build() {
    _$DeprovisionPublicIpv4PoolCidrResult _$result;
    try {
      _$result = _$v ??
          new _$DeprovisionPublicIpv4PoolCidrResult._(
              poolId: poolId,
              deprovisionedAddresses: _deprovisionedAddresses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deprovisionedAddresses';
        _deprovisionedAddresses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeprovisionPublicIpv4PoolCidrResult',
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
