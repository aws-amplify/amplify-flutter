// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_verified_access_trust_provider_oidc_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVerifiedAccessTrustProviderOidcOptions
    extends CreateVerifiedAccessTrustProviderOidcOptions {
  @override
  final String? issuer;
  @override
  final String? authorizationEndpoint;
  @override
  final String? tokenEndpoint;
  @override
  final String? userInfoEndpoint;
  @override
  final String? clientId;
  @override
  final String? clientSecret;
  @override
  final String? scope;

  factory _$CreateVerifiedAccessTrustProviderOidcOptions(
          [void Function(CreateVerifiedAccessTrustProviderOidcOptionsBuilder)?
              updates]) =>
      (new CreateVerifiedAccessTrustProviderOidcOptionsBuilder()
            ..update(updates))
          ._build();

  _$CreateVerifiedAccessTrustProviderOidcOptions._(
      {this.issuer,
      this.authorizationEndpoint,
      this.tokenEndpoint,
      this.userInfoEndpoint,
      this.clientId,
      this.clientSecret,
      this.scope})
      : super._();

  @override
  CreateVerifiedAccessTrustProviderOidcOptions rebuild(
          void Function(CreateVerifiedAccessTrustProviderOidcOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVerifiedAccessTrustProviderOidcOptionsBuilder toBuilder() =>
      new CreateVerifiedAccessTrustProviderOidcOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVerifiedAccessTrustProviderOidcOptions &&
        issuer == other.issuer &&
        authorizationEndpoint == other.authorizationEndpoint &&
        tokenEndpoint == other.tokenEndpoint &&
        userInfoEndpoint == other.userInfoEndpoint &&
        clientId == other.clientId &&
        clientSecret == other.clientSecret &&
        scope == other.scope;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, issuer.hashCode);
    _$hash = $jc(_$hash, authorizationEndpoint.hashCode);
    _$hash = $jc(_$hash, tokenEndpoint.hashCode);
    _$hash = $jc(_$hash, userInfoEndpoint.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientSecret.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVerifiedAccessTrustProviderOidcOptionsBuilder
    implements
        Builder<CreateVerifiedAccessTrustProviderOidcOptions,
            CreateVerifiedAccessTrustProviderOidcOptionsBuilder> {
  _$CreateVerifiedAccessTrustProviderOidcOptions? _$v;

  String? _issuer;
  String? get issuer => _$this._issuer;
  set issuer(String? issuer) => _$this._issuer = issuer;

  String? _authorizationEndpoint;
  String? get authorizationEndpoint => _$this._authorizationEndpoint;
  set authorizationEndpoint(String? authorizationEndpoint) =>
      _$this._authorizationEndpoint = authorizationEndpoint;

  String? _tokenEndpoint;
  String? get tokenEndpoint => _$this._tokenEndpoint;
  set tokenEndpoint(String? tokenEndpoint) =>
      _$this._tokenEndpoint = tokenEndpoint;

  String? _userInfoEndpoint;
  String? get userInfoEndpoint => _$this._userInfoEndpoint;
  set userInfoEndpoint(String? userInfoEndpoint) =>
      _$this._userInfoEndpoint = userInfoEndpoint;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _clientSecret;
  String? get clientSecret => _$this._clientSecret;
  set clientSecret(String? clientSecret) => _$this._clientSecret = clientSecret;

  String? _scope;
  String? get scope => _$this._scope;
  set scope(String? scope) => _$this._scope = scope;

  CreateVerifiedAccessTrustProviderOidcOptionsBuilder();

  CreateVerifiedAccessTrustProviderOidcOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _issuer = $v.issuer;
      _authorizationEndpoint = $v.authorizationEndpoint;
      _tokenEndpoint = $v.tokenEndpoint;
      _userInfoEndpoint = $v.userInfoEndpoint;
      _clientId = $v.clientId;
      _clientSecret = $v.clientSecret;
      _scope = $v.scope;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVerifiedAccessTrustProviderOidcOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVerifiedAccessTrustProviderOidcOptions;
  }

  @override
  void update(
      void Function(CreateVerifiedAccessTrustProviderOidcOptionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVerifiedAccessTrustProviderOidcOptions build() => _build();

  _$CreateVerifiedAccessTrustProviderOidcOptions _build() {
    final _$result = _$v ??
        new _$CreateVerifiedAccessTrustProviderOidcOptions._(
            issuer: issuer,
            authorizationEndpoint: authorizationEndpoint,
            tokenEndpoint: tokenEndpoint,
            userInfoEndpoint: userInfoEndpoint,
            clientId: clientId,
            clientSecret: clientSecret,
            scope: scope);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
