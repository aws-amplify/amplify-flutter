// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'environment_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnvironmentConfig extends EnvironmentConfig {
  @override
  final String? awsAccessKeyId;
  @override
  final String? awsSecretAccessKey;
  @override
  final String? awsDefaultRegion;
  @override
  final RetryMode? awsRetryMode;
  @override
  final String? awsSessionToken;
  @override
  final String? awsProfile;

  factory _$EnvironmentConfig(
          [void Function(EnvironmentConfigBuilder)? updates]) =>
      (new EnvironmentConfigBuilder()..update(updates))._build();

  _$EnvironmentConfig._(
      {this.awsAccessKeyId,
      this.awsSecretAccessKey,
      this.awsDefaultRegion,
      this.awsRetryMode,
      this.awsSessionToken,
      this.awsProfile})
      : super._();

  @override
  EnvironmentConfig rebuild(void Function(EnvironmentConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnvironmentConfigBuilder toBuilder() =>
      new EnvironmentConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnvironmentConfig &&
        awsAccessKeyId == other.awsAccessKeyId &&
        awsSecretAccessKey == other.awsSecretAccessKey &&
        awsDefaultRegion == other.awsDefaultRegion &&
        awsRetryMode == other.awsRetryMode &&
        awsSessionToken == other.awsSessionToken &&
        awsProfile == other.awsProfile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, awsAccessKeyId.hashCode);
    _$hash = $jc(_$hash, awsSecretAccessKey.hashCode);
    _$hash = $jc(_$hash, awsDefaultRegion.hashCode);
    _$hash = $jc(_$hash, awsRetryMode.hashCode);
    _$hash = $jc(_$hash, awsSessionToken.hashCode);
    _$hash = $jc(_$hash, awsProfile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnvironmentConfigBuilder
    implements Builder<EnvironmentConfig, EnvironmentConfigBuilder> {
  _$EnvironmentConfig? _$v;

  String? _awsAccessKeyId;
  String? get awsAccessKeyId => _$this._awsAccessKeyId;
  set awsAccessKeyId(String? awsAccessKeyId) =>
      _$this._awsAccessKeyId = awsAccessKeyId;

  String? _awsSecretAccessKey;
  String? get awsSecretAccessKey => _$this._awsSecretAccessKey;
  set awsSecretAccessKey(String? awsSecretAccessKey) =>
      _$this._awsSecretAccessKey = awsSecretAccessKey;

  String? _awsDefaultRegion;
  String? get awsDefaultRegion => _$this._awsDefaultRegion;
  set awsDefaultRegion(String? awsDefaultRegion) =>
      _$this._awsDefaultRegion = awsDefaultRegion;

  RetryMode? _awsRetryMode;
  RetryMode? get awsRetryMode => _$this._awsRetryMode;
  set awsRetryMode(RetryMode? awsRetryMode) =>
      _$this._awsRetryMode = awsRetryMode;

  String? _awsSessionToken;
  String? get awsSessionToken => _$this._awsSessionToken;
  set awsSessionToken(String? awsSessionToken) =>
      _$this._awsSessionToken = awsSessionToken;

  String? _awsProfile;
  String? get awsProfile => _$this._awsProfile;
  set awsProfile(String? awsProfile) => _$this._awsProfile = awsProfile;

  EnvironmentConfigBuilder();

  EnvironmentConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _awsAccessKeyId = $v.awsAccessKeyId;
      _awsSecretAccessKey = $v.awsSecretAccessKey;
      _awsDefaultRegion = $v.awsDefaultRegion;
      _awsRetryMode = $v.awsRetryMode;
      _awsSessionToken = $v.awsSessionToken;
      _awsProfile = $v.awsProfile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnvironmentConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnvironmentConfig;
  }

  @override
  void update(void Function(EnvironmentConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnvironmentConfig build() => _build();

  _$EnvironmentConfig _build() {
    final _$result = _$v ??
        new _$EnvironmentConfig._(
            awsAccessKeyId: awsAccessKeyId,
            awsSecretAccessKey: awsSecretAccessKey,
            awsDefaultRegion: awsDefaultRegion,
            awsRetryMode: awsRetryMode,
            awsSessionToken: awsSessionToken,
            awsProfile: awsProfile);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
