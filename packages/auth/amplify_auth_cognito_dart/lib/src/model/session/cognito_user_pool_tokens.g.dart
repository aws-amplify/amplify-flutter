// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_user_pool_tokens.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CognitoUserPoolTokens extends CognitoUserPoolTokens {
  @override
  final CognitoSignInMethod signInMethod;
  @override
  final JsonWebToken accessToken;
  @override
  final String refreshToken;
  @override
  final JsonWebToken idToken;

  factory _$CognitoUserPoolTokens(
          [void Function(CognitoUserPoolTokensBuilder)? updates]) =>
      (new CognitoUserPoolTokensBuilder()..update(updates))._build();

  _$CognitoUserPoolTokens._(
      {required this.signInMethod,
      required this.accessToken,
      required this.refreshToken,
      required this.idToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        signInMethod, r'CognitoUserPoolTokens', 'signInMethod');
    BuiltValueNullFieldError.checkNotNull(
        accessToken, r'CognitoUserPoolTokens', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(
        refreshToken, r'CognitoUserPoolTokens', 'refreshToken');
    BuiltValueNullFieldError.checkNotNull(
        idToken, r'CognitoUserPoolTokens', 'idToken');
  }

  @override
  CognitoUserPoolTokens rebuild(
          void Function(CognitoUserPoolTokensBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CognitoUserPoolTokensBuilder toBuilder() =>
      new CognitoUserPoolTokensBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CognitoUserPoolTokens &&
        signInMethod == other.signInMethod &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken &&
        idToken == other.idToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, signInMethod.hashCode);
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, idToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CognitoUserPoolTokensBuilder
    implements Builder<CognitoUserPoolTokens, CognitoUserPoolTokensBuilder> {
  _$CognitoUserPoolTokens? _$v;

  CognitoSignInMethod? _signInMethod;
  CognitoSignInMethod? get signInMethod => _$this._signInMethod;
  set signInMethod(CognitoSignInMethod? signInMethod) =>
      _$this._signInMethod = signInMethod;

  JsonWebToken? _accessToken;
  JsonWebToken? get accessToken => _$this._accessToken;
  set accessToken(JsonWebToken? accessToken) =>
      _$this._accessToken = accessToken;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  JsonWebToken? _idToken;
  JsonWebToken? get idToken => _$this._idToken;
  set idToken(JsonWebToken? idToken) => _$this._idToken = idToken;

  CognitoUserPoolTokensBuilder();

  CognitoUserPoolTokensBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _signInMethod = $v.signInMethod;
      _accessToken = $v.accessToken;
      _refreshToken = $v.refreshToken;
      _idToken = $v.idToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CognitoUserPoolTokens other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CognitoUserPoolTokens;
  }

  @override
  void update(void Function(CognitoUserPoolTokensBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CognitoUserPoolTokens build() => _build();

  _$CognitoUserPoolTokens _build() {
    CognitoUserPoolTokens._finalize(this);
    final _$result = _$v ??
        new _$CognitoUserPoolTokens._(
            signInMethod: BuiltValueNullFieldError.checkNotNull(
                signInMethod, r'CognitoUserPoolTokens', 'signInMethod'),
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, r'CognitoUserPoolTokens', 'accessToken'),
            refreshToken: BuiltValueNullFieldError.checkNotNull(
                refreshToken, r'CognitoUserPoolTokens', 'refreshToken'),
            idToken: BuiltValueNullFieldError.checkNotNull(
                idToken, r'CognitoUserPoolTokens', 'idToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoUserPoolTokens _$CognitoUserPoolTokensFromJson(
        Map<String, dynamic> json) =>
    CognitoUserPoolTokens(
      signInMethod: json['signInMethod'] == null
          ? CognitoSignInMethod.default$
          : const _CognitoSignInMethodSerializer()
              .fromJson(json['signInMethod'] as String),
      accessToken: const JsonWebTokenSerializer()
          .fromJson(json['accessToken'] as String),
      refreshToken: json['refreshToken'] as String,
      idToken:
          const JsonWebTokenSerializer().fromJson(json['idToken'] as String),
    );

Map<String, dynamic> _$CognitoUserPoolTokensToJson(
        CognitoUserPoolTokens instance) =>
    <String, dynamic>{
      'signInMethod':
          const _CognitoSignInMethodSerializer().toJson(instance.signInMethod),
      'accessToken':
          const JsonWebTokenSerializer().toJson(instance.accessToken),
      'refreshToken': instance.refreshToken,
      'idToken': const JsonWebTokenSerializer().toJson(instance.idToken),
    };
