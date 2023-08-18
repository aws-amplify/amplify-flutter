// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_hosted_ui_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthHostedUiConfig extends AuthHostedUiConfig {
  @override
  final String? clientId;
  @override
  final String? clientSecret;
  @override
  final String domainName;
  @override
  final _i2.BuiltList<Uri> signInRedirectUris;
  @override
  final _i2.BuiltList<Uri> signOutRedirectUris;
  @override
  final _i2.BuiltList<String> scopes;
  @override
  final Uri? signInUri;
  @override
  final Uri? signOutUri;
  @override
  final Uri? tokenUri;

  factory _$AuthHostedUiConfig(
          [void Function(AuthHostedUiConfigBuilder)? updates]) =>
      (new AuthHostedUiConfigBuilder()..update(updates))._build();

  _$AuthHostedUiConfig._(
      {this.clientId,
      this.clientSecret,
      required this.domainName,
      required this.signInRedirectUris,
      required this.signOutRedirectUris,
      required this.scopes,
      this.signInUri,
      this.signOutUri,
      this.tokenUri})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        domainName, r'AuthHostedUiConfig', 'domainName');
    BuiltValueNullFieldError.checkNotNull(
        signInRedirectUris, r'AuthHostedUiConfig', 'signInRedirectUris');
    BuiltValueNullFieldError.checkNotNull(
        signOutRedirectUris, r'AuthHostedUiConfig', 'signOutRedirectUris');
    BuiltValueNullFieldError.checkNotNull(
        scopes, r'AuthHostedUiConfig', 'scopes');
  }

  @override
  AuthHostedUiConfig rebuild(
          void Function(AuthHostedUiConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthHostedUiConfigBuilder toBuilder() =>
      new AuthHostedUiConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthHostedUiConfig &&
        clientId == other.clientId &&
        clientSecret == other.clientSecret &&
        domainName == other.domainName &&
        signInRedirectUris == other.signInRedirectUris &&
        signOutRedirectUris == other.signOutRedirectUris &&
        scopes == other.scopes &&
        signInUri == other.signInUri &&
        signOutUri == other.signOutUri &&
        tokenUri == other.tokenUri;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientSecret.hashCode);
    _$hash = $jc(_$hash, domainName.hashCode);
    _$hash = $jc(_$hash, signInRedirectUris.hashCode);
    _$hash = $jc(_$hash, signOutRedirectUris.hashCode);
    _$hash = $jc(_$hash, scopes.hashCode);
    _$hash = $jc(_$hash, signInUri.hashCode);
    _$hash = $jc(_$hash, signOutUri.hashCode);
    _$hash = $jc(_$hash, tokenUri.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AuthHostedUiConfigBuilder
    implements Builder<AuthHostedUiConfig, AuthHostedUiConfigBuilder> {
  _$AuthHostedUiConfig? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _clientSecret;
  String? get clientSecret => _$this._clientSecret;
  set clientSecret(String? clientSecret) => _$this._clientSecret = clientSecret;

  String? _domainName;
  String? get domainName => _$this._domainName;
  set domainName(String? domainName) => _$this._domainName = domainName;

  _i2.ListBuilder<Uri>? _signInRedirectUris;
  _i2.ListBuilder<Uri> get signInRedirectUris =>
      _$this._signInRedirectUris ??= new _i2.ListBuilder<Uri>();
  set signInRedirectUris(_i2.ListBuilder<Uri>? signInRedirectUris) =>
      _$this._signInRedirectUris = signInRedirectUris;

  _i2.ListBuilder<Uri>? _signOutRedirectUris;
  _i2.ListBuilder<Uri> get signOutRedirectUris =>
      _$this._signOutRedirectUris ??= new _i2.ListBuilder<Uri>();
  set signOutRedirectUris(_i2.ListBuilder<Uri>? signOutRedirectUris) =>
      _$this._signOutRedirectUris = signOutRedirectUris;

  _i2.ListBuilder<String>? _scopes;
  _i2.ListBuilder<String> get scopes =>
      _$this._scopes ??= new _i2.ListBuilder<String>();
  set scopes(_i2.ListBuilder<String>? scopes) => _$this._scopes = scopes;

  Uri? _signInUri;
  Uri? get signInUri => _$this._signInUri;
  set signInUri(Uri? signInUri) => _$this._signInUri = signInUri;

  Uri? _signOutUri;
  Uri? get signOutUri => _$this._signOutUri;
  set signOutUri(Uri? signOutUri) => _$this._signOutUri = signOutUri;

  Uri? _tokenUri;
  Uri? get tokenUri => _$this._tokenUri;
  set tokenUri(Uri? tokenUri) => _$this._tokenUri = tokenUri;

  AuthHostedUiConfigBuilder();

  AuthHostedUiConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientId = $v.clientId;
      _clientSecret = $v.clientSecret;
      _domainName = $v.domainName;
      _signInRedirectUris = $v.signInRedirectUris.toBuilder();
      _signOutRedirectUris = $v.signOutRedirectUris.toBuilder();
      _scopes = $v.scopes.toBuilder();
      _signInUri = $v.signInUri;
      _signOutUri = $v.signOutUri;
      _tokenUri = $v.tokenUri;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthHostedUiConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthHostedUiConfig;
  }

  @override
  void update(void Function(AuthHostedUiConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthHostedUiConfig build() => _build();

  _$AuthHostedUiConfig _build() {
    _$AuthHostedUiConfig _$result;
    try {
      _$result = _$v ??
          new _$AuthHostedUiConfig._(
              clientId: clientId,
              clientSecret: clientSecret,
              domainName: BuiltValueNullFieldError.checkNotNull(
                  domainName, r'AuthHostedUiConfig', 'domainName'),
              signInRedirectUris: signInRedirectUris.build(),
              signOutRedirectUris: signOutRedirectUris.build(),
              scopes: scopes.build(),
              signInUri: signInUri,
              signOutUri: signOutUri,
              tokenUri: tokenUri);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'signInRedirectUris';
        signInRedirectUris.build();
        _$failedField = 'signOutRedirectUris';
        signOutRedirectUris.build();
        _$failedField = 'scopes';
        scopes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthHostedUiConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
