// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity.model.credentials;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Credentials extends Credentials {
  @override
  final String? accessKeyId;
  @override
  final DateTime? expiration;
  @override
  final String? secretKey;
  @override
  final String? sessionToken;

  factory _$Credentials([void Function(CredentialsBuilder)? updates]) =>
      (new CredentialsBuilder()..update(updates))._build();

  _$Credentials._(
      {this.accessKeyId, this.expiration, this.secretKey, this.sessionToken})
      : super._();

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
        expiration == other.expiration &&
        secretKey == other.secretKey &&
        sessionToken == other.sessionToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, accessKeyId.hashCode), expiration.hashCode),
            secretKey.hashCode),
        sessionToken.hashCode));
  }
}

class CredentialsBuilder implements Builder<Credentials, CredentialsBuilder> {
  _$Credentials? _$v;

  String? _accessKeyId;
  String? get accessKeyId => _$this._accessKeyId;
  set accessKeyId(String? accessKeyId) => _$this._accessKeyId = accessKeyId;

  DateTime? _expiration;
  DateTime? get expiration => _$this._expiration;
  set expiration(DateTime? expiration) => _$this._expiration = expiration;

  String? _secretKey;
  String? get secretKey => _$this._secretKey;
  set secretKey(String? secretKey) => _$this._secretKey = secretKey;

  String? _sessionToken;
  String? get sessionToken => _$this._sessionToken;
  set sessionToken(String? sessionToken) => _$this._sessionToken = sessionToken;

  CredentialsBuilder() {
    Credentials._init(this);
  }

  CredentialsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessKeyId = $v.accessKeyId;
      _expiration = $v.expiration;
      _secretKey = $v.secretKey;
      _sessionToken = $v.sessionToken;
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
            accessKeyId: accessKeyId,
            expiration: expiration,
            secretKey: secretKey,
            sessionToken: sessionToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
