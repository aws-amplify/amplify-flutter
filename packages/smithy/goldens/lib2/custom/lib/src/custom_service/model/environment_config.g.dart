// GENERATED CODE - DO NOT MODIFY BY HAND

part of custom_v2.custom_service.model.environment_config;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnvironmentConfig extends EnvironmentConfig {
  @override
  final String? awsAccessKeyId;
  @override
  final String? awsDefaultRegion;
  @override
  final String? awsProfile;
  @override
  final _i2.RetryMode? awsRetryMode;
  @override
  final String? awsSecretAccessKey;
  @override
  final String? awsSessionToken;

  factory _$EnvironmentConfig(
          [void Function(EnvironmentConfigBuilder)? updates]) =>
      (new EnvironmentConfigBuilder()..update(updates))._build();

  _$EnvironmentConfig._(
      {this.awsAccessKeyId,
      this.awsDefaultRegion,
      this.awsProfile,
      this.awsRetryMode,
      this.awsSecretAccessKey,
      this.awsSessionToken})
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
        awsDefaultRegion == other.awsDefaultRegion &&
        awsProfile == other.awsProfile &&
        awsRetryMode == other.awsRetryMode &&
        awsSecretAccessKey == other.awsSecretAccessKey &&
        awsSessionToken == other.awsSessionToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, awsAccessKeyId.hashCode),
                        awsDefaultRegion.hashCode),
                    awsProfile.hashCode),
                awsRetryMode.hashCode),
            awsSecretAccessKey.hashCode),
        awsSessionToken.hashCode));
  }
}

class EnvironmentConfigBuilder
    implements Builder<EnvironmentConfig, EnvironmentConfigBuilder> {
  _$EnvironmentConfig? _$v;

  String? _awsAccessKeyId;
  String? get awsAccessKeyId => _$this._awsAccessKeyId;
  set awsAccessKeyId(String? awsAccessKeyId) =>
      _$this._awsAccessKeyId = awsAccessKeyId;

  String? _awsDefaultRegion;
  String? get awsDefaultRegion => _$this._awsDefaultRegion;
  set awsDefaultRegion(String? awsDefaultRegion) =>
      _$this._awsDefaultRegion = awsDefaultRegion;

  String? _awsProfile;
  String? get awsProfile => _$this._awsProfile;
  set awsProfile(String? awsProfile) => _$this._awsProfile = awsProfile;

  _i2.RetryMode? _awsRetryMode;
  _i2.RetryMode? get awsRetryMode => _$this._awsRetryMode;
  set awsRetryMode(_i2.RetryMode? awsRetryMode) =>
      _$this._awsRetryMode = awsRetryMode;

  String? _awsSecretAccessKey;
  String? get awsSecretAccessKey => _$this._awsSecretAccessKey;
  set awsSecretAccessKey(String? awsSecretAccessKey) =>
      _$this._awsSecretAccessKey = awsSecretAccessKey;

  String? _awsSessionToken;
  String? get awsSessionToken => _$this._awsSessionToken;
  set awsSessionToken(String? awsSessionToken) =>
      _$this._awsSessionToken = awsSessionToken;

  EnvironmentConfigBuilder() {
    EnvironmentConfig._init(this);
  }

  EnvironmentConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _awsAccessKeyId = $v.awsAccessKeyId;
      _awsDefaultRegion = $v.awsDefaultRegion;
      _awsProfile = $v.awsProfile;
      _awsRetryMode = $v.awsRetryMode;
      _awsSecretAccessKey = $v.awsSecretAccessKey;
      _awsSessionToken = $v.awsSessionToken;
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
            awsDefaultRegion: awsDefaultRegion,
            awsProfile: awsProfile,
            awsRetryMode: awsRetryMode,
            awsSecretAccessKey: awsSecretAccessKey,
            awsSessionToken: awsSessionToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
