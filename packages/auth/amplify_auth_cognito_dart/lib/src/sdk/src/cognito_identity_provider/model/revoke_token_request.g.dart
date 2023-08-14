// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revoke_token_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RevokeTokenRequest extends RevokeTokenRequest {
  @override
  final String token;
  @override
  final String clientId;
  @override
  final String? clientSecret;

  factory _$RevokeTokenRequest(
          [void Function(RevokeTokenRequestBuilder)? updates]) =>
      (new RevokeTokenRequestBuilder()..update(updates))._build();

  _$RevokeTokenRequest._(
      {required this.token, required this.clientId, this.clientSecret})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        token, r'RevokeTokenRequest', 'token');
    BuiltValueNullFieldError.checkNotNull(
        clientId, r'RevokeTokenRequest', 'clientId');
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
        token == other.token &&
        clientId == other.clientId &&
        clientSecret == other.clientSecret;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientSecret.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RevokeTokenRequestBuilder
    implements Builder<RevokeTokenRequest, RevokeTokenRequestBuilder> {
  _$RevokeTokenRequest? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _clientSecret;
  String? get clientSecret => _$this._clientSecret;
  set clientSecret(String? clientSecret) => _$this._clientSecret = clientSecret;

  RevokeTokenRequestBuilder();

  RevokeTokenRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _clientId = $v.clientId;
      _clientSecret = $v.clientSecret;
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
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'RevokeTokenRequest', 'token'),
            clientId: BuiltValueNullFieldError.checkNotNull(
                clientId, r'RevokeTokenRequest', 'clientId'),
            clientSecret: clientSecret);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
