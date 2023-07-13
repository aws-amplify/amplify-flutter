// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_auth_cognito_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AWSAuthCognitoConfig extends AWSAuthCognitoConfig {
  @override
  final _i2.AWSAuthUserPoolConfig? userPool;
  @override
  final _i3.AWSAuthIdentityPoolConfig? identityPool;

  factory _$AWSAuthCognitoConfig(
          [void Function(AWSAuthCognitoConfigBuilder)? updates]) =>
      (new AWSAuthCognitoConfigBuilder()..update(updates))._build();

  _$AWSAuthCognitoConfig._({this.userPool, this.identityPool}) : super._();

  @override
  AWSAuthCognitoConfig rebuild(
          void Function(AWSAuthCognitoConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSAuthCognitoConfigBuilder toBuilder() =>
      new AWSAuthCognitoConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSAuthCognitoConfig &&
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

class AWSAuthCognitoConfigBuilder
    implements Builder<AWSAuthCognitoConfig, AWSAuthCognitoConfigBuilder> {
  _$AWSAuthCognitoConfig? _$v;

  _i2.AWSAuthUserPoolConfigBuilder? _userPool;
  _i2.AWSAuthUserPoolConfigBuilder get userPool =>
      _$this._userPool ??= new _i2.AWSAuthUserPoolConfigBuilder();
  set userPool(_i2.AWSAuthUserPoolConfigBuilder? userPool) =>
      _$this._userPool = userPool;

  _i3.AWSAuthIdentityPoolConfigBuilder? _identityPool;
  _i3.AWSAuthIdentityPoolConfigBuilder get identityPool =>
      _$this._identityPool ??= new _i3.AWSAuthIdentityPoolConfigBuilder();
  set identityPool(_i3.AWSAuthIdentityPoolConfigBuilder? identityPool) =>
      _$this._identityPool = identityPool;

  AWSAuthCognitoConfigBuilder() {
    AWSAuthCognitoConfig._init(this);
  }

  AWSAuthCognitoConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userPool = $v.userPool?.toBuilder();
      _identityPool = $v.identityPool?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSAuthCognitoConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSAuthCognitoConfig;
  }

  @override
  void update(void Function(AWSAuthCognitoConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSAuthCognitoConfig build() => _build();

  _$AWSAuthCognitoConfig _build() {
    _$AWSAuthCognitoConfig _$result;
    try {
      _$result = _$v ??
          new _$AWSAuthCognitoConfig._(
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
            r'AWSAuthCognitoConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
