// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentials.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Credentials extends Credentials {
  @override
  final String? accessKeyId;
  @override
  final String? secretKey;
  @override
  final String? sessionToken;
  @override
  final DateTime? expiration;

  factory _$Credentials([void Function(CredentialsBuilder)? updates]) =>
      (new CredentialsBuilder()..update(updates))._build();

  _$Credentials._(
      {this.accessKeyId, this.secretKey, this.sessionToken, this.expiration})
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
        secretKey == other.secretKey &&
        sessionToken == other.sessionToken &&
        expiration == other.expiration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessKeyId.hashCode);
    _$hash = $jc(_$hash, secretKey.hashCode);
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

  String? _secretKey;
  String? get secretKey => _$this._secretKey;
  set secretKey(String? secretKey) => _$this._secretKey = secretKey;

  String? _sessionToken;
  String? get sessionToken => _$this._sessionToken;
  set sessionToken(String? sessionToken) => _$this._sessionToken = sessionToken;

  DateTime? _expiration;
  DateTime? get expiration => _$this._expiration;
  set expiration(DateTime? expiration) => _$this._expiration = expiration;

  CredentialsBuilder();

  CredentialsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessKeyId = $v.accessKeyId;
      _secretKey = $v.secretKey;
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
            accessKeyId: accessKeyId,
            secretKey: secretKey,
            sessionToken: sessionToken,
            expiration: expiration);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
