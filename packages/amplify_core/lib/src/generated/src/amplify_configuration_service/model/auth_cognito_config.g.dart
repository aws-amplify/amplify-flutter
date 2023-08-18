// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_cognito_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthCognitoConfig extends AuthCognitoConfig {
  @override
  final _i2.AuthUserPoolConfig? userPool;
  @override
  final _i3.AuthIdentityPoolConfig? identityPool;

  factory _$AuthCognitoConfig(
          [void Function(AuthCognitoConfigBuilder)? updates]) =>
      (new AuthCognitoConfigBuilder()..update(updates))._build();

  _$AuthCognitoConfig._({this.userPool, this.identityPool}) : super._();

  @override
  AuthCognitoConfig rebuild(void Function(AuthCognitoConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthCognitoConfigBuilder toBuilder() =>
      new AuthCognitoConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthCognitoConfig &&
        userPool == other.userPool &&
        identityPool == other.identityPool;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userPool.hashCode);
    _$hash = $jc(_$hash, identityPool.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AuthCognitoConfigBuilder
    implements Builder<AuthCognitoConfig, AuthCognitoConfigBuilder> {
  _$AuthCognitoConfig? _$v;

  _i2.AuthUserPoolConfigBuilder? _userPool;
  _i2.AuthUserPoolConfigBuilder get userPool =>
      _$this._userPool ??= new _i2.AuthUserPoolConfigBuilder();
  set userPool(_i2.AuthUserPoolConfigBuilder? userPool) =>
      _$this._userPool = userPool;

  _i3.AuthIdentityPoolConfigBuilder? _identityPool;
  _i3.AuthIdentityPoolConfigBuilder get identityPool =>
      _$this._identityPool ??= new _i3.AuthIdentityPoolConfigBuilder();
  set identityPool(_i3.AuthIdentityPoolConfigBuilder? identityPool) =>
      _$this._identityPool = identityPool;

  AuthCognitoConfigBuilder();

  AuthCognitoConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userPool = $v.userPool?.toBuilder();
      _identityPool = $v.identityPool?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthCognitoConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthCognitoConfig;
  }

  @override
  void update(void Function(AuthCognitoConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthCognitoConfig build() => _build();

  _$AuthCognitoConfig _build() {
    _$AuthCognitoConfig _$result;
    try {
      _$result = _$v ??
          new _$AuthCognitoConfig._(
              userPool: _userPool?.build(),
              identityPool: _identityPool?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userPool';
        _userPool?.build();
        _$failedField = 'identityPool';
        _identityPool?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthCognitoConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
