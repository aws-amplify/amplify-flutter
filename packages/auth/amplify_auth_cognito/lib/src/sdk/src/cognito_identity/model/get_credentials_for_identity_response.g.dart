// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity.model.get_credentials_for_identity_response;

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
    return $jf($jc($jc(0, credentials.hashCode), identityId.hashCode));
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
            'GetCredentialsForIdentityResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
