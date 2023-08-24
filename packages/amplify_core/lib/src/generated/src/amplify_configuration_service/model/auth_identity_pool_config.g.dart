// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_identity_pool_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthIdentityPoolConfig extends AuthIdentityPoolConfig {
  @override
  final String poolId;
  @override
  final String region;
  @override
  final bool? allowUnauthenticatedIdentities;

  factory _$AuthIdentityPoolConfig(
          [void Function(AuthIdentityPoolConfigBuilder)? updates]) =>
      (new AuthIdentityPoolConfigBuilder()..update(updates))._build();

  _$AuthIdentityPoolConfig._(
      {required this.poolId,
      required this.region,
      this.allowUnauthenticatedIdentities})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        poolId, r'AuthIdentityPoolConfig', 'poolId');
    BuiltValueNullFieldError.checkNotNull(
        region, r'AuthIdentityPoolConfig', 'region');
  }

  @override
  AuthIdentityPoolConfig rebuild(
          void Function(AuthIdentityPoolConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthIdentityPoolConfigBuilder toBuilder() =>
      new AuthIdentityPoolConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthIdentityPoolConfig &&
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

class AuthIdentityPoolConfigBuilder
    implements Builder<AuthIdentityPoolConfig, AuthIdentityPoolConfigBuilder> {
  _$AuthIdentityPoolConfig? _$v;

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

  AuthIdentityPoolConfigBuilder();

  AuthIdentityPoolConfigBuilder get _$this {
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
  void replace(AuthIdentityPoolConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthIdentityPoolConfig;
  }

  @override
  void update(void Function(AuthIdentityPoolConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthIdentityPoolConfig build() => _build();

  _$AuthIdentityPoolConfig _build() {
    final _$result = _$v ??
        new _$AuthIdentityPoolConfig._(
            poolId: BuiltValueNullFieldError.checkNotNull(
                poolId, r'AuthIdentityPoolConfig', 'poolId'),
            region: BuiltValueNullFieldError.checkNotNull(
                region, r'AuthIdentityPoolConfig', 'region'),
            allowUnauthenticatedIdentities: allowUnauthenticatedIdentities);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
