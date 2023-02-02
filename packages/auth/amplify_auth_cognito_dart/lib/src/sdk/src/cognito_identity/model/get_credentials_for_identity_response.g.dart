// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity.model.get_credentials_for_identity_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCredentialsForIdentityResponse
    extends GetCredentialsForIdentityResponse {
  @override
  final _i2.Credentials? credentials;
  @override
  final String? identityId;

  factory _$GetCredentialsForIdentityResponse(
          [void Function(GetCredentialsForIdentityResponseBuilder)? updates]) =>
      (new GetCredentialsForIdentityResponseBuilder()..update(updates))
          ._build();

  _$GetCredentialsForIdentityResponse._({this.credentials, this.identityId})
      : super._();

  @override
  GetCredentialsForIdentityResponse rebuild(
          void Function(GetCredentialsForIdentityResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCredentialsForIdentityResponseBuilder toBuilder() =>
      new GetCredentialsForIdentityResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCredentialsForIdentityResponse &&
        credentials == other.credentials &&
        identityId == other.identityId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, credentials.hashCode);
    _$hash = $jc(_$hash, identityId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetCredentialsForIdentityResponseBuilder
    implements
        Builder<GetCredentialsForIdentityResponse,
            GetCredentialsForIdentityResponseBuilder> {
  _$GetCredentialsForIdentityResponse? _$v;

  _i2.CredentialsBuilder? _credentials;
  _i2.CredentialsBuilder get credentials =>
      _$this._credentials ??= new _i2.CredentialsBuilder();
  set credentials(_i2.CredentialsBuilder? credentials) =>
      _$this._credentials = credentials;

  String? _identityId;
  String? get identityId => _$this._identityId;
  set identityId(String? identityId) => _$this._identityId = identityId;

  GetCredentialsForIdentityResponseBuilder() {
    GetCredentialsForIdentityResponse._init(this);
  }

  GetCredentialsForIdentityResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credentials = $v.credentials?.toBuilder();
      _identityId = $v.identityId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCredentialsForIdentityResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCredentialsForIdentityResponse;
  }

  @override
  void update(
      void Function(GetCredentialsForIdentityResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCredentialsForIdentityResponse build() => _build();

  _$GetCredentialsForIdentityResponse _build() {
    _$GetCredentialsForIdentityResponse _$result;
    try {
      _$result = _$v ??
          new _$GetCredentialsForIdentityResponse._(
              credentials: _credentials?.build(), identityId: identityId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'credentials';
        _credentials?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetCredentialsForIdentityResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
