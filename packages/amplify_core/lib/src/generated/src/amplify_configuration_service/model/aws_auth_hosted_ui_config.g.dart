// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_auth_hosted_ui_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AWSAuthHostedUiConfig extends AWSAuthHostedUiConfig {
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

  factory _$AWSAuthHostedUiConfig(
          [void Function(AWSAuthHostedUiConfigBuilder)? updates]) =>
      (new AWSAuthHostedUiConfigBuilder()..update(updates))._build();

  _$AWSAuthHostedUiConfig._(
      {required this.domainName,
      required this.signInRedirectUris,
      required this.signOutRedirectUris,
      required this.scopes,
      this.signInUri,
      this.signOutUri,
      this.tokenUri})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        domainName, r'AWSAuthHostedUiConfig', 'domainName');
    BuiltValueNullFieldError.checkNotNull(
        signInRedirectUris, r'AWSAuthHostedUiConfig', 'signInRedirectUris');
    BuiltValueNullFieldError.checkNotNull(
        signOutRedirectUris, r'AWSAuthHostedUiConfig', 'signOutRedirectUris');
    BuiltValueNullFieldError.checkNotNull(
        scopes, r'AWSAuthHostedUiConfig', 'scopes');
  }

  @override
  AWSAuthHostedUiConfig rebuild(
          void Function(AWSAuthHostedUiConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSAuthHostedUiConfigBuilder toBuilder() =>
      new AWSAuthHostedUiConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSAuthHostedUiConfig &&
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

class AWSAuthHostedUiConfigBuilder
    implements Builder<AWSAuthHostedUiConfig, AWSAuthHostedUiConfigBuilder> {
  _$AWSAuthHostedUiConfig? _$v;

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

  AWSAuthHostedUiConfigBuilder() {
    AWSAuthHostedUiConfig._init(this);
  }

  AWSAuthHostedUiConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(AWSAuthHostedUiConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSAuthHostedUiConfig;
  }

  @override
  void update(void Function(AWSAuthHostedUiConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSAuthHostedUiConfig build() => _build();

  _$AWSAuthHostedUiConfig _build() {
    _$AWSAuthHostedUiConfig _$result;
    try {
      _$result = _$v ??
          new _$AWSAuthHostedUiConfig._(
              domainName: BuiltValueNullFieldError.checkNotNull(
                  domainName, r'AWSAuthHostedUiConfig', 'domainName'),
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
            r'AWSAuthHostedUiConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
