// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.revoke_token_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RevokeTokenRequest extends RevokeTokenRequest {
  @override
  final String clientId;
  @override
  final String? clientSecret;
  @override
  final String token;

  factory _$RevokeTokenRequest(
          [void Function(RevokeTokenRequestBuilder)? updates]) =>
      (new RevokeTokenRequestBuilder()..update(updates))._build();

  _$RevokeTokenRequest._(
      {required this.clientId, this.clientSecret, required this.token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        clientId, 'RevokeTokenRequest', 'clientId');
    BuiltValueNullFieldError.checkNotNull(token, 'RevokeTokenRequest', 'token');
  }

  @override
  RevokeTokenRequest rebuild(
          void Function(RevokeTokenRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RevokeTokenRequestBuilder toBuilder() =>
      new RevokeTokenRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RevokeTokenRequest &&
        clientId == other.clientId &&
        clientSecret == other.clientSecret &&
        token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, clientId.hashCode), clientSecret.hashCode), token.hashCode));
  }
}

class RevokeTokenRequestBuilder
    implements Builder<RevokeTokenRequest, RevokeTokenRequestBuilder> {
  _$RevokeTokenRequest? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _clientSecret;
  String? get clientSecret => _$this._clientSecret;
  set clientSecret(String? clientSecret) => _$this._clientSecret = clientSecret;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  RevokeTokenRequestBuilder() {
    RevokeTokenRequest._init(this);
  }

  RevokeTokenRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientId = $v.clientId;
      _clientSecret = $v.clientSecret;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RevokeTokenRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RevokeTokenRequest;
  }

  @override
  void update(void Function(RevokeTokenRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RevokeTokenRequest build() => _build();

  _$RevokeTokenRequest _build() {
    final _$result = _$v ??
        new _$RevokeTokenRequest._(
            clientId: BuiltValueNullFieldError.checkNotNull(
                clientId, 'RevokeTokenRequest', 'clientId'),
            clientSecret: clientSecret,
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'RevokeTokenRequest', 'token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
