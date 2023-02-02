// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.associate_software_token_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateSoftwareTokenRequest extends AssociateSoftwareTokenRequest {
  @override
  final String? accessToken;
  @override
  final String? session;

  factory _$AssociateSoftwareTokenRequest(
          [void Function(AssociateSoftwareTokenRequestBuilder)? updates]) =>
      (new AssociateSoftwareTokenRequestBuilder()..update(updates))._build();

  _$AssociateSoftwareTokenRequest._({this.accessToken, this.session})
      : super._();

  @override
  AssociateSoftwareTokenRequest rebuild(
          void Function(AssociateSoftwareTokenRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateSoftwareTokenRequestBuilder toBuilder() =>
      new AssociateSoftwareTokenRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateSoftwareTokenRequest &&
        accessToken == other.accessToken &&
        session == other.session;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, session.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociateSoftwareTokenRequestBuilder
    implements
        Builder<AssociateSoftwareTokenRequest,
            AssociateSoftwareTokenRequestBuilder> {
  _$AssociateSoftwareTokenRequest? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _session;
  String? get session => _$this._session;
  set session(String? session) => _$this._session = session;

  AssociateSoftwareTokenRequestBuilder() {
    AssociateSoftwareTokenRequest._init(this);
  }

  AssociateSoftwareTokenRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _session = $v.session;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateSoftwareTokenRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateSoftwareTokenRequest;
  }

  @override
  void update(void Function(AssociateSoftwareTokenRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateSoftwareTokenRequest build() => _build();

  _$AssociateSoftwareTokenRequest _build() {
    final _$result = _$v ??
        new _$AssociateSoftwareTokenRequest._(
            accessToken: accessToken, session: session);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
