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
    return $jf($jc(
        $jc($jc($jc(0, signInMethod.hashCode), accessToken.hashCode),
            refreshToken.hashCode),
        idToken.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

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
