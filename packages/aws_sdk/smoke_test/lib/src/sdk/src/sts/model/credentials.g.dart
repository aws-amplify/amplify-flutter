// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.credentials;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Credentials extends Credentials {
  @override
  final String accessKeyId;
  @override
  final String secretAccessKey;
  @override
  final String sessionToken;
  @override
  final DateTime expiration;

  factory _$Credentials([void Function(CredentialsBuilder)? updates]) =>
      (new CredentialsBuilder()..update(updates))._build();

  _$Credentials._(
      {required this.accessKeyId,
      required this.secretAccessKey,
      required this.sessionToken,
      required this.expiration})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessKeyId, r'Credentials', 'accessKeyId');
    BuiltValueNullFieldError.checkNotNull(
        secretAccessKey, r'Credentials', 'secretAccessKey');
    BuiltValueNullFieldError.checkNotNull(
        sessionToken, r'Credentials', 'sessionToken');
    BuiltValueNullFieldError.checkNotNull(
        expiration, r'Credentials', 'expiration');
  }

  @override
  Credentials rebuild(void Function(CredentialsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialsBuilder toBuilder() => new CredentialsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Credentials &&
        accessKeyId == other.accessKeyId &&
        secretAccessKey == other.secretAccessKey &&
        sessionToken == other.sessionToken &&
        expiration == other.expiration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessKeyId.hashCode);
    _$hash = $jc(_$hash, secretAccessKey.hashCode);
    _$hash = $jc(_$hash, sessionToken.hashCode);
    _$hash = $jc(_$hash, expiration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CredentialsBuilder implements Builder<Credentials, CredentialsBuilder> {
  _$Credentials? _$v;

  String? _accessKeyId;
  String? get accessKeyId => _$this._accessKeyId;
  set accessKeyId(String? accessKeyId) => _$this._accessKeyId = accessKeyId;

  String? _secretAccessKey;
  String? get secretAccessKey => _$this._secretAccessKey;
  set secretAccessKey(String? secretAccessKey) =>
      _$this._secretAccessKey = secretAccessKey;

  String? _sessionToken;
  String? get sessionToken => _$this._sessionToken;
  set sessionToken(String? sessionToken) => _$this._sessionToken = sessionToken;

  DateTime? _expiration;
  DateTime? get expiration => _$this._expiration;
  set expiration(DateTime? expiration) => _$this._expiration = expiration;

  CredentialsBuilder() {
    Credentials._init(this);
  }

  CredentialsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessKeyId = $v.accessKeyId;
      _secretAccessKey = $v.secretAccessKey;
      _sessionToken = $v.sessionToken;
      _expiration = $v.expiration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Credentials other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Credentials;
  }

  @override
  void update(void Function(CredentialsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Credentials build() => _build();

  _$Credentials _build() {
    final _$result = _$v ??
        new _$Credentials._(
            accessKeyId: BuiltValueNullFieldError.checkNotNull(
                accessKeyId, r'Credentials', 'accessKeyId'),
            secretAccessKey: BuiltValueNullFieldError.checkNotNull(
                secretAccessKey, r'Credentials', 'secretAccessKey'),
            sessionToken: BuiltValueNullFieldError.checkNotNull(
                sessionToken, r'Credentials', 'sessionToken'),
            expiration: BuiltValueNullFieldError.checkNotNull(
                expiration, r'Credentials', 'expiration'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
