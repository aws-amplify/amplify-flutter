// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1_v1.machine_learning.model.client_config;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientConfig extends ClientConfig {
  @override
  final String? awsAccessKeyId;
  @override
  final String? awsProfile;
  @override
  final String? awsSecretAccessKey;
  @override
  final String? awsSessionToken;
  @override
  final String? region;
  @override
  final _i2.RetryConfig? retryConfig;
  @override
  final _i3.S3Config? s3;

  factory _$ClientConfig([void Function(ClientConfigBuilder)? updates]) =>
      (new ClientConfigBuilder()..update(updates))._build();

  _$ClientConfig._(
      {this.awsAccessKeyId,
      this.awsProfile,
      this.awsSecretAccessKey,
      this.awsSessionToken,
      this.region,
      this.retryConfig,
      this.s3})
      : super._();

  @override
  ClientConfig rebuild(void Function(ClientConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientConfigBuilder toBuilder() => new ClientConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientConfig &&
        awsAccessKeyId == other.awsAccessKeyId &&
        awsProfile == other.awsProfile &&
        awsSecretAccessKey == other.awsSecretAccessKey &&
        awsSessionToken == other.awsSessionToken &&
        region == other.region &&
        retryConfig == other.retryConfig &&
        s3 == other.s3;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, awsAccessKeyId.hashCode),
                            awsProfile.hashCode),
                        awsSecretAccessKey.hashCode),
                    awsSessionToken.hashCode),
                region.hashCode),
            retryConfig.hashCode),
        s3.hashCode));
  }
}

class ClientConfigBuilder
    implements Builder<ClientConfig, ClientConfigBuilder> {
  _$ClientConfig? _$v;

  String? _awsAccessKeyId;
  String? get awsAccessKeyId => _$this._awsAccessKeyId;
  set awsAccessKeyId(String? awsAccessKeyId) =>
      _$this._awsAccessKeyId = awsAccessKeyId;

  String? _awsProfile;
  String? get awsProfile => _$this._awsProfile;
  set awsProfile(String? awsProfile) => _$this._awsProfile = awsProfile;

  String? _awsSecretAccessKey;
  String? get awsSecretAccessKey => _$this._awsSecretAccessKey;
  set awsSecretAccessKey(String? awsSecretAccessKey) =>
      _$this._awsSecretAccessKey = awsSecretAccessKey;

  String? _awsSessionToken;
  String? get awsSessionToken => _$this._awsSessionToken;
  set awsSessionToken(String? awsSessionToken) =>
      _$this._awsSessionToken = awsSessionToken;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  _i2.RetryConfigBuilder? _retryConfig;
  _i2.RetryConfigBuilder get retryConfig =>
      _$this._retryConfig ??= new _i2.RetryConfigBuilder();
  set retryConfig(_i2.RetryConfigBuilder? retryConfig) =>
      _$this._retryConfig = retryConfig;

  _i3.S3ConfigBuilder? _s3;
  _i3.S3ConfigBuilder get s3 => _$this._s3 ??= new _i3.S3ConfigBuilder();
  set s3(_i3.S3ConfigBuilder? s3) => _$this._s3 = s3;

  ClientConfigBuilder() {
    ClientConfig._init(this);
  }

  ClientConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _awsAccessKeyId = $v.awsAccessKeyId;
      _awsProfile = $v.awsProfile;
      _awsSecretAccessKey = $v.awsSecretAccessKey;
      _awsSessionToken = $v.awsSessionToken;
      _region = $v.region;
      _retryConfig = $v.retryConfig?.toBuilder();
      _s3 = $v.s3?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientConfig;
  }

  @override
  void update(void Function(ClientConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientConfig build() => _build();

  _$ClientConfig _build() {
    _$ClientConfig _$result;
    try {
      _$result = _$v ??
          new _$ClientConfig._(
              awsAccessKeyId: awsAccessKeyId,
              awsProfile: awsProfile,
              awsSecretAccessKey: awsSecretAccessKey,
              awsSessionToken: awsSessionToken,
              region: region,
              retryConfig: _retryConfig?.build(),
              s3: _s3?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'retryConfig';
        _retryConfig?.build();
        _$failedField = 's3';
        _s3?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ClientConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
