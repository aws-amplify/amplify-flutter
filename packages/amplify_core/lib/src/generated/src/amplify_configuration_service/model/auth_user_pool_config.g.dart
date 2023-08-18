// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user_pool_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthUserPoolConfig extends AuthUserPoolConfig {
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
  final _i8.BuiltList<_i2.AuthProvider>? socialProviders;
  @override
  final _i8.BuiltList<_i3.AuthUsernameAttribute>? usernameAttributes;
  @override
  final _i8.BuiltList<_i2.CognitoUserAttributeKey>? signUpAttributes;
  @override
  final _i8.BuiltList<_i2.CognitoUserAttributeKey>? verificationMechanisms;
  @override
  final _i4.AnalyticsPinpointConfig? pinpointConfig;
  @override
  final _i5.AuthPasswordPolicy? passwordPolicy;
  @override
  final _i6.AuthMfaConfiguration? mfaConfiguration;
  @override
  final _i7.AuthHostedUiConfig? hostedUi;

  factory _$AuthUserPoolConfig(
          [void Function(AuthUserPoolConfigBuilder)? updates]) =>
      (new AuthUserPoolConfigBuilder()..update(updates))._build();

  _$AuthUserPoolConfig._(
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
      this.passwordPolicy,
      this.mfaConfiguration,
      this.hostedUi})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        poolId, r'AuthUserPoolConfig', 'poolId');
    BuiltValueNullFieldError.checkNotNull(
        region, r'AuthUserPoolConfig', 'region');
    BuiltValueNullFieldError.checkNotNull(
        clientId, r'AuthUserPoolConfig', 'clientId');
  }

  @override
  AuthUserPoolConfig rebuild(
          void Function(AuthUserPoolConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthUserPoolConfigBuilder toBuilder() =>
      new AuthUserPoolConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthUserPoolConfig &&
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
        passwordPolicy == other.passwordPolicy &&
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
    _$hash = $jc(_$hash, passwordPolicy.hashCode);
    _$hash = $jc(_$hash, mfaConfiguration.hashCode);
    _$hash = $jc(_$hash, hostedUi.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AuthUserPoolConfigBuilder
    implements Builder<AuthUserPoolConfig, AuthUserPoolConfigBuilder> {
  _$AuthUserPoolConfig? _$v;

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

  _i8.ListBuilder<_i2.AuthProvider>? _socialProviders;
  _i8.ListBuilder<_i2.AuthProvider> get socialProviders =>
      _$this._socialProviders ??= new _i8.ListBuilder<_i2.AuthProvider>();
  set socialProviders(_i8.ListBuilder<_i2.AuthProvider>? socialProviders) =>
      _$this._socialProviders = socialProviders;

  _i8.ListBuilder<_i3.AuthUsernameAttribute>? _usernameAttributes;
  _i8.ListBuilder<_i3.AuthUsernameAttribute> get usernameAttributes =>
      _$this._usernameAttributes ??=
          new _i8.ListBuilder<_i3.AuthUsernameAttribute>();
  set usernameAttributes(
          _i8.ListBuilder<_i3.AuthUsernameAttribute>? usernameAttributes) =>
      _$this._usernameAttributes = usernameAttributes;

  _i8.ListBuilder<_i2.CognitoUserAttributeKey>? _signUpAttributes;
  _i8.ListBuilder<_i2.CognitoUserAttributeKey> get signUpAttributes =>
      _$this._signUpAttributes ??=
          new _i8.ListBuilder<_i2.CognitoUserAttributeKey>();
  set signUpAttributes(
          _i8.ListBuilder<_i2.CognitoUserAttributeKey>? signUpAttributes) =>
      _$this._signUpAttributes = signUpAttributes;

  _i8.ListBuilder<_i2.CognitoUserAttributeKey>? _verificationMechanisms;
  _i8.ListBuilder<_i2.CognitoUserAttributeKey> get verificationMechanisms =>
      _$this._verificationMechanisms ??=
          new _i8.ListBuilder<_i2.CognitoUserAttributeKey>();
  set verificationMechanisms(
          _i8.ListBuilder<_i2.CognitoUserAttributeKey>?
              verificationMechanisms) =>
      _$this._verificationMechanisms = verificationMechanisms;

  _i4.AnalyticsPinpointConfigBuilder? _pinpointConfig;
  _i4.AnalyticsPinpointConfigBuilder get pinpointConfig =>
      _$this._pinpointConfig ??= new _i4.AnalyticsPinpointConfigBuilder();
  set pinpointConfig(_i4.AnalyticsPinpointConfigBuilder? pinpointConfig) =>
      _$this._pinpointConfig = pinpointConfig;

  _i5.AuthPasswordPolicyBuilder? _passwordPolicy;
  _i5.AuthPasswordPolicyBuilder get passwordPolicy =>
      _$this._passwordPolicy ??= new _i5.AuthPasswordPolicyBuilder();
  set passwordPolicy(_i5.AuthPasswordPolicyBuilder? passwordPolicy) =>
      _$this._passwordPolicy = passwordPolicy;

  _i6.AuthMfaConfigurationBuilder? _mfaConfiguration;
  _i6.AuthMfaConfigurationBuilder get mfaConfiguration =>
      _$this._mfaConfiguration ??= new _i6.AuthMfaConfigurationBuilder();
  set mfaConfiguration(_i6.AuthMfaConfigurationBuilder? mfaConfiguration) =>
      _$this._mfaConfiguration = mfaConfiguration;

  _i7.AuthHostedUiConfigBuilder? _hostedUi;
  _i7.AuthHostedUiConfigBuilder get hostedUi =>
      _$this._hostedUi ??= new _i7.AuthHostedUiConfigBuilder();
  set hostedUi(_i7.AuthHostedUiConfigBuilder? hostedUi) =>
      _$this._hostedUi = hostedUi;

  AuthUserPoolConfigBuilder();

  AuthUserPoolConfigBuilder get _$this {
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
      _passwordPolicy = $v.passwordPolicy?.toBuilder();
      _mfaConfiguration = $v.mfaConfiguration?.toBuilder();
      _hostedUi = $v.hostedUi?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthUserPoolConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthUserPoolConfig;
  }

  @override
  void update(void Function(AuthUserPoolConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthUserPoolConfig build() => _build();

  _$AuthUserPoolConfig _build() {
    _$AuthUserPoolConfig _$result;
    try {
      _$result = _$v ??
          new _$AuthUserPoolConfig._(
              poolId: BuiltValueNullFieldError.checkNotNull(
                  poolId, r'AuthUserPoolConfig', 'poolId'),
              region: BuiltValueNullFieldError.checkNotNull(
                  region, r'AuthUserPoolConfig', 'region'),
              clientId: BuiltValueNullFieldError.checkNotNull(
                  clientId, r'AuthUserPoolConfig', 'clientId'),
              clientSecret: clientSecret,
              endpoint: endpoint,
              authFlowType: authFlowType,
              socialProviders: _socialProviders?.build(),
              usernameAttributes: _usernameAttributes?.build(),
              signUpAttributes: _signUpAttributes?.build(),
              verificationMechanisms: _verificationMechanisms?.build(),
              pinpointConfig: _pinpointConfig?.build(),
              passwordPolicy: _passwordPolicy?.build(),
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
        _$failedField = 'passwordPolicy';
        _passwordPolicy?.build();
        _$failedField = 'mfaConfiguration';
        _mfaConfiguration?.build();
        _$failedField = 'hostedUi';
        _hostedUi?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthUserPoolConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
