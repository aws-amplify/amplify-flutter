// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_credentials_for_identity_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCredentialsForIdentityResponse
    extends GetCredentialsForIdentityResponse {
  @override
  final String? identityId;
  @override
  final Credentials? credentials;

  factory _$GetCredentialsForIdentityResponse(
          [void Function(GetCredentialsForIdentityResponseBuilder)? updates]) =>
      (new GetCredentialsForIdentityResponseBuilder()..update(updates))
          ._build();

  _$GetCredentialsForIdentityResponse._({this.identityId, this.credentials})
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
        identityId == other.identityId &&
        credentials == other.credentials;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, identityId.hashCode);
    _$hash = $jc(_$hash, credentials.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetCredentialsForIdentityResponseBuilder
    implements
        Builder<GetCredentialsForIdentityResponse,
            GetCredentialsForIdentityResponseBuilder> {
  _$GetCredentialsForIdentityResponse? _$v;

  String? _identityId;
  String? get identityId => _$this._identityId;
  set identityId(String? identityId) => _$this._identityId = identityId;

  CredentialsBuilder? _credentials;
  CredentialsBuilder get credentials =>
      _$this._credentials ??= new CredentialsBuilder();
  set credentials(CredentialsBuilder? credentials) =>
      _$this._credentials = credentials;

  GetCredentialsForIdentityResponseBuilder();

  GetCredentialsForIdentityResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _identityId = $v.identityId;
      _credentials = $v.credentials?.toBuilder();
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
              identityId: identityId, credentials: _credentials?.build());
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
