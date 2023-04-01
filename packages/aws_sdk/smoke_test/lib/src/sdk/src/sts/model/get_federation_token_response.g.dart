// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.get_federation_token_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFederationTokenResponse extends GetFederationTokenResponse {
  @override
  final _i2.Credentials? credentials;
  @override
  final _i3.FederatedUser? federatedUser;
  @override
  final int? packedPolicySize;

  factory _$GetFederationTokenResponse(
          [void Function(GetFederationTokenResponseBuilder)? updates]) =>
      (new GetFederationTokenResponseBuilder()..update(updates))._build();

  _$GetFederationTokenResponse._(
      {this.credentials, this.federatedUser, this.packedPolicySize})
      : super._();

  @override
  GetFederationTokenResponse rebuild(
          void Function(GetFederationTokenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFederationTokenResponseBuilder toBuilder() =>
      new GetFederationTokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFederationTokenResponse &&
        credentials == other.credentials &&
        federatedUser == other.federatedUser &&
        packedPolicySize == other.packedPolicySize;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, credentials.hashCode);
    _$hash = $jc(_$hash, federatedUser.hashCode);
    _$hash = $jc(_$hash, packedPolicySize.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetFederationTokenResponseBuilder
    implements
        Builder<GetFederationTokenResponse, GetFederationTokenResponseBuilder> {
  _$GetFederationTokenResponse? _$v;

  _i2.CredentialsBuilder? _credentials;
  _i2.CredentialsBuilder get credentials =>
      _$this._credentials ??= new _i2.CredentialsBuilder();
  set credentials(_i2.CredentialsBuilder? credentials) =>
      _$this._credentials = credentials;

  _i3.FederatedUserBuilder? _federatedUser;
  _i3.FederatedUserBuilder get federatedUser =>
      _$this._federatedUser ??= new _i3.FederatedUserBuilder();
  set federatedUser(_i3.FederatedUserBuilder? federatedUser) =>
      _$this._federatedUser = federatedUser;

  int? _packedPolicySize;
  int? get packedPolicySize => _$this._packedPolicySize;
  set packedPolicySize(int? packedPolicySize) =>
      _$this._packedPolicySize = packedPolicySize;

  GetFederationTokenResponseBuilder() {
    GetFederationTokenResponse._init(this);
  }

  GetFederationTokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credentials = $v.credentials?.toBuilder();
      _federatedUser = $v.federatedUser?.toBuilder();
      _packedPolicySize = $v.packedPolicySize;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFederationTokenResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetFederationTokenResponse;
  }

  @override
  void update(void Function(GetFederationTokenResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetFederationTokenResponse build() => _build();

  _$GetFederationTokenResponse _build() {
    _$GetFederationTokenResponse _$result;
    try {
      _$result = _$v ??
          new _$GetFederationTokenResponse._(
              credentials: _credentials?.build(),
              federatedUser: _federatedUser?.build(),
              packedPolicySize: packedPolicySize);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'credentials';
        _credentials?.build();
        _$failedField = 'federatedUser';
        _federatedUser?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetFederationTokenResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
