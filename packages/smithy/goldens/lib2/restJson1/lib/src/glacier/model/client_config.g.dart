// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.glacier.model.client_config;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, awsAccessKeyId.hashCode);
    _$hash = $jc(_$hash, awsProfile.hashCode);
    _$hash = $jc(_$hash, awsSecretAccessKey.hashCode);
    _$hash = $jc(_$hash, awsSessionToken.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, retryConfig.hashCode);
    _$hash = $jc(_$hash, s3.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
