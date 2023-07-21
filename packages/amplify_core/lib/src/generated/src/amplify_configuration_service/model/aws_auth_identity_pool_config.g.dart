// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_auth_identity_pool_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AWSAuthIdentityPoolConfig extends AWSAuthIdentityPoolConfig {
  @override
  final String poolId;
  @override
  final String region;
  @override
  final bool? allowUnauthenticatedIdentities;

  factory _$AWSAuthIdentityPoolConfig(
          [void Function(AWSAuthIdentityPoolConfigBuilder)? updates]) =>
      (new AWSAuthIdentityPoolConfigBuilder()..update(updates))._build();

  _$AWSAuthIdentityPoolConfig._(
      {required this.poolId,
      required this.region,
      this.allowUnauthenticatedIdentities})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        poolId, r'AWSAuthIdentityPoolConfig', 'poolId');
    BuiltValueNullFieldError.checkNotNull(
        region, r'AWSAuthIdentityPoolConfig', 'region');
  }

  @override
  AWSAuthIdentityPoolConfig rebuild(
          void Function(AWSAuthIdentityPoolConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSAuthIdentityPoolConfigBuilder toBuilder() =>
      new AWSAuthIdentityPoolConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSAuthIdentityPoolConfig &&
        poolId == other.poolId &&
        region == other.region &&
        allowUnauthenticatedIdentities == other.allowUnauthenticatedIdentities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, poolId.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, allowUnauthenticatedIdentities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AWSAuthIdentityPoolConfigBuilder
    implements
        Builder<AWSAuthIdentityPoolConfig, AWSAuthIdentityPoolConfigBuilder> {
  _$AWSAuthIdentityPoolConfig? _$v;

  String? _poolId;
  String? get poolId => _$this._poolId;
  set poolId(String? poolId) => _$this._poolId = poolId;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  bool? _allowUnauthenticatedIdentities;
  bool? get allowUnauthenticatedIdentities =>
      _$this._allowUnauthenticatedIdentities;
  set allowUnauthenticatedIdentities(bool? allowUnauthenticatedIdentities) =>
      _$this._allowUnauthenticatedIdentities = allowUnauthenticatedIdentities;

  AWSAuthIdentityPoolConfigBuilder();

  AWSAuthIdentityPoolConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _poolId = $v.poolId;
      _region = $v.region;
      _allowUnauthenticatedIdentities = $v.allowUnauthenticatedIdentities;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSAuthIdentityPoolConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSAuthIdentityPoolConfig;
  }

  @override
  void update(void Function(AWSAuthIdentityPoolConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSAuthIdentityPoolConfig build() => _build();

  _$AWSAuthIdentityPoolConfig _build() {
    final _$result = _$v ??
        new _$AWSAuthIdentityPoolConfig._(
            poolId: BuiltValueNullFieldError.checkNotNull(
                poolId, r'AWSAuthIdentityPoolConfig', 'poolId'),
            region: BuiltValueNullFieldError.checkNotNull(
                region, r'AWSAuthIdentityPoolConfig', 'region'),
            allowUnauthenticatedIdentities: allowUnauthenticatedIdentities);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
