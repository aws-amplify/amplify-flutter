// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_auth_user_pool_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AWSAuthUserPoolConfig extends AWSAuthUserPoolConfig {
  @override
  final String poolId;
  @override
  final String region;
  @override
  final String clientId;
  @override
  final String? clientSecret;
  @override
  final Uri? endpoint;
  @override
  final _i2.AuthenticationFlowType? authFlowType;
  @override
  final _i9.BuiltList<_i3.AWSAuthProvider>? socialProviders;
  @override
  final _i9.BuiltSet<_i4.AWSAuthUsernameAttribute>? usernameAttributes;
  @override
  final _i9.BuiltSet<_i2.CognitoUserAttributeKey>? signUpAttributes;
  @override
  final _i9.BuiltSet<_i2.CognitoUserAttributeKey>? verificationMechanisms;
  @override
  final _i5.AWSAnalyticsPinpointConfig? pinpointConfig;
  @override
  final _i6.AWSAuthPasswordProtectionSettings? passwordProtectionSettings;
  @override
  final _i7.AWSAuthMfaConfiguration? mfaConfiguration;
  @override
  final _i8.AWSAuthHostedUiConfig? hostedUi;

  factory _$AWSAuthUserPoolConfig(
          [void Function(AWSAuthUserPoolConfigBuilder)? updates]) =>
      (new AWSAuthUserPoolConfigBuilder()..update(updates))._build();

  _$AWSAuthUserPoolConfig._(
      {required this.poolId,
      required this.region,
      required this.clientId,
      this.clientSecret,
      this.endpoint,
      this.authFlowType,
      this.socialProviders,
      this.usernameAttributes,
      this.signUpAttributes,
      this.verificationMechanisms,
      this.pinpointConfig,
      this.passwordProtectionSettings,
      this.mfaConfiguration,
      this.hostedUi})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        poolId, r'AWSAuthUserPoolConfig', 'poolId');
    BuiltValueNullFieldError.checkNotNull(
        region, r'AWSAuthUserPoolConfig', 'region');
    BuiltValueNullFieldError.checkNotNull(
        clientId, r'AWSAuthUserPoolConfig', 'clientId');
  }

  @override
  AWSAuthUserPoolConfig rebuild(
          void Function(AWSAuthUserPoolConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSAuthUserPoolConfigBuilder toBuilder() =>
      new AWSAuthUserPoolConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSAuthUserPoolConfig &&
        poolId == other.poolId &&
        region == other.region &&
        clientId == other.clientId &&
        clientSecret == other.clientSecret &&
        endpoint == other.endpoint &&
        authFlowType == other.authFlowType &&
        socialProviders == other.socialProviders &&
        usernameAttributes == other.usernameAttributes &&
        signUpAttributes == other.signUpAttributes &&
        verificationMechanisms == other.verificationMechanisms &&
        pinpointConfig == other.pinpointConfig &&
        passwordProtectionSettings == other.passwordProtectionSettings &&
        mfaConfiguration == other.mfaConfiguration &&
        hostedUi == other.hostedUi;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, poolId.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientSecret.hashCode);
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jc(_$hash, authFlowType.hashCode);
    _$hash = $jc(_$hash, socialProviders.hashCode);
    _$hash = $jc(_$hash, usernameAttributes.hashCode);
    _$hash = $jc(_$hash, signUpAttributes.hashCode);
    _$hash = $jc(_$hash, verificationMechanisms.hashCode);
    _$hash = $jc(_$hash, pinpointConfig.hashCode);
    _$hash = $jc(_$hash, passwordProtectionSettings.hashCode);
    _$hash = $jc(_$hash, mfaConfiguration.hashCode);
    _$hash = $jc(_$hash, hostedUi.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AWSAuthUserPoolConfigBuilder
    implements Builder<AWSAuthUserPoolConfig, AWSAuthUserPoolConfigBuilder> {
  _$AWSAuthUserPoolConfig? _$v;

  String? _poolId;
  String? get poolId => _$this._poolId;
  set poolId(String? poolId) => _$this._poolId = poolId;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _clientSecret;
  String? get clientSecret => _$this._clientSecret;
  set clientSecret(String? clientSecret) => _$this._clientSecret = clientSecret;

  Uri? _endpoint;
  Uri? get endpoint => _$this._endpoint;
  set endpoint(Uri? endpoint) => _$this._endpoint = endpoint;

  _i2.AuthenticationFlowType? _authFlowType;
  _i2.AuthenticationFlowType? get authFlowType => _$this._authFlowType;
  set authFlowType(_i2.AuthenticationFlowType? authFlowType) =>
      _$this._authFlowType = authFlowType;

  _i9.ListBuilder<_i3.AWSAuthProvider>? _socialProviders;
  _i9.ListBuilder<_i3.AWSAuthProvider> get socialProviders =>
      _$this._socialProviders ??= new _i9.ListBuilder<_i3.AWSAuthProvider>();
  set socialProviders(_i9.ListBuilder<_i3.AWSAuthProvider>? socialProviders) =>
      _$this._socialProviders = socialProviders;

  _i9.SetBuilder<_i4.AWSAuthUsernameAttribute>? _usernameAttributes;
  _i9.SetBuilder<_i4.AWSAuthUsernameAttribute> get usernameAttributes =>
      _$this._usernameAttributes ??=
          new _i9.SetBuilder<_i4.AWSAuthUsernameAttribute>();
  set usernameAttributes(
          _i9.SetBuilder<_i4.AWSAuthUsernameAttribute>? usernameAttributes) =>
      _$this._usernameAttributes = usernameAttributes;

  _i9.SetBuilder<_i2.CognitoUserAttributeKey>? _signUpAttributes;
  _i9.SetBuilder<_i2.CognitoUserAttributeKey> get signUpAttributes =>
      _$this._signUpAttributes ??=
          new _i9.SetBuilder<_i2.CognitoUserAttributeKey>();
  set signUpAttributes(
          _i9.SetBuilder<_i2.CognitoUserAttributeKey>? signUpAttributes) =>
      _$this._signUpAttributes = signUpAttributes;

  _i9.SetBuilder<_i2.CognitoUserAttributeKey>? _verificationMechanisms;
  _i9.SetBuilder<_i2.CognitoUserAttributeKey> get verificationMechanisms =>
      _$this._verificationMechanisms ??=
          new _i9.SetBuilder<_i2.CognitoUserAttributeKey>();
  set verificationMechanisms(
          _i9.SetBuilder<_i2.CognitoUserAttributeKey>?
              verificationMechanisms) =>
      _$this._verificationMechanisms = verificationMechanisms;

  _i5.AWSAnalyticsPinpointConfigBuilder? _pinpointConfig;
  _i5.AWSAnalyticsPinpointConfigBuilder get pinpointConfig =>
      _$this._pinpointConfig ??= new _i5.AWSAnalyticsPinpointConfigBuilder();
  set pinpointConfig(_i5.AWSAnalyticsPinpointConfigBuilder? pinpointConfig) =>
      _$this._pinpointConfig = pinpointConfig;

  _i6.AWSAuthPasswordProtectionSettingsBuilder? _passwordProtectionSettings;
  _i6.AWSAuthPasswordProtectionSettingsBuilder get passwordProtectionSettings =>
      _$this._passwordProtectionSettings ??=
          new _i6.AWSAuthPasswordProtectionSettingsBuilder();
  set passwordProtectionSettings(
          _i6.AWSAuthPasswordProtectionSettingsBuilder?
              passwordProtectionSettings) =>
      _$this._passwordProtectionSettings = passwordProtectionSettings;

  _i7.AWSAuthMfaConfigurationBuilder? _mfaConfiguration;
  _i7.AWSAuthMfaConfigurationBuilder get mfaConfiguration =>
      _$this._mfaConfiguration ??= new _i7.AWSAuthMfaConfigurationBuilder();
  set mfaConfiguration(_i7.AWSAuthMfaConfigurationBuilder? mfaConfiguration) =>
      _$this._mfaConfiguration = mfaConfiguration;

  _i8.AWSAuthHostedUiConfigBuilder? _hostedUi;
  _i8.AWSAuthHostedUiConfigBuilder get hostedUi =>
      _$this._hostedUi ??= new _i8.AWSAuthHostedUiConfigBuilder();
  set hostedUi(_i8.AWSAuthHostedUiConfigBuilder? hostedUi) =>
      _$this._hostedUi = hostedUi;

  AWSAuthUserPoolConfigBuilder() {
    AWSAuthUserPoolConfig._init(this);
  }

  AWSAuthUserPoolConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _poolId = $v.poolId;
      _region = $v.region;
      _clientId = $v.clientId;
      _clientSecret = $v.clientSecret;
      _endpoint = $v.endpoint;
      _authFlowType = $v.authFlowType;
      _socialProviders = $v.socialProviders?.toBuilder();
      _usernameAttributes = $v.usernameAttributes?.toBuilder();
      _signUpAttributes = $v.signUpAttributes?.toBuilder();
      _verificationMechanisms = $v.verificationMechanisms?.toBuilder();
      _pinpointConfig = $v.pinpointConfig?.toBuilder();
      _passwordProtectionSettings = $v.passwordProtectionSettings?.toBuilder();
      _mfaConfiguration = $v.mfaConfiguration?.toBuilder();
      _hostedUi = $v.hostedUi?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSAuthUserPoolConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSAuthUserPoolConfig;
  }

  @override
  void update(void Function(AWSAuthUserPoolConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSAuthUserPoolConfig build() => _build();

  _$AWSAuthUserPoolConfig _build() {
    _$AWSAuthUserPoolConfig _$result;
    try {
      _$result = _$v ??
          new _$AWSAuthUserPoolConfig._(
              poolId: BuiltValueNullFieldError.checkNotNull(
                  poolId, r'AWSAuthUserPoolConfig', 'poolId'),
              region: BuiltValueNullFieldError.checkNotNull(
                  region, r'AWSAuthUserPoolConfig', 'region'),
              clientId: BuiltValueNullFieldError.checkNotNull(
                  clientId, r'AWSAuthUserPoolConfig', 'clientId'),
              clientSecret: clientSecret,
              endpoint: endpoint,
              authFlowType: authFlowType,
              socialProviders: _socialProviders?.build(),
              usernameAttributes: _usernameAttributes?.build(),
              signUpAttributes: _signUpAttributes?.build(),
              verificationMechanisms: _verificationMechanisms?.build(),
              pinpointConfig: _pinpointConfig?.build(),
              passwordProtectionSettings: _passwordProtectionSettings?.build(),
              mfaConfiguration: _mfaConfiguration?.build(),
              hostedUi: _hostedUi?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'socialProviders';
        _socialProviders?.build();
        _$failedField = 'usernameAttributes';
        _usernameAttributes?.build();
        _$failedField = 'signUpAttributes';
        _signUpAttributes?.build();
        _$failedField = 'verificationMechanisms';
        _verificationMechanisms?.build();
        _$failedField = 'pinpointConfig';
        _pinpointConfig?.build();
        _$failedField = 'passwordProtectionSettings';
        _passwordProtectionSettings?.build();
        _$failedField = 'mfaConfiguration';
        _mfaConfiguration?.build();
        _$failedField = 'hostedUi';
        _hostedUi?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AWSAuthUserPoolConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
