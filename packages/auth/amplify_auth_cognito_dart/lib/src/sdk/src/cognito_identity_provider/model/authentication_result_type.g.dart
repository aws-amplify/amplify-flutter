// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.authentication_result_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthenticationResultType extends AuthenticationResultType {
  @override
  final String? accessToken;
  @override
  final int expiresIn;
  @override
  final String? idToken;
  @override
  final _i2.NewDeviceMetadataType? newDeviceMetadata;
  @override
  final String? refreshToken;
  @override
  final String? tokenType;

  factory _$AuthenticationResultType(
          [void Function(AuthenticationResultTypeBuilder)? updates]) =>
      (new AuthenticationResultTypeBuilder()..update(updates))._build();

  _$AuthenticationResultType._(
      {this.accessToken,
      required this.expiresIn,
      this.idToken,
      this.newDeviceMetadata,
      this.refreshToken,
      this.tokenType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        expiresIn, r'AuthenticationResultType', 'expiresIn');
  }

  @override
  AuthenticationResultType rebuild(
          void Function(AuthenticationResultTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthenticationResultTypeBuilder toBuilder() =>
      new AuthenticationResultTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthenticationResultType &&
        accessToken == other.accessToken &&
        expiresIn == other.expiresIn &&
        idToken == other.idToken &&
        newDeviceMetadata == other.newDeviceMetadata &&
        refreshToken == other.refreshToken &&
        tokenType == other.tokenType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, expiresIn.hashCode);
    _$hash = $jc(_$hash, idToken.hashCode);
    _$hash = $jc(_$hash, newDeviceMetadata.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, tokenType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AuthenticationResultTypeBuilder
    implements
        Builder<AuthenticationResultType, AuthenticationResultTypeBuilder> {
  _$AuthenticationResultType? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  int? _expiresIn;
  int? get expiresIn => _$this._expiresIn;
  set expiresIn(int? expiresIn) => _$this._expiresIn = expiresIn;

  String? _idToken;
  String? get idToken => _$this._idToken;
  set idToken(String? idToken) => _$this._idToken = idToken;

  _i2.NewDeviceMetadataTypeBuilder? _newDeviceMetadata;
  _i2.NewDeviceMetadataTypeBuilder get newDeviceMetadata =>
      _$this._newDeviceMetadata ??= new _i2.NewDeviceMetadataTypeBuilder();
  set newDeviceMetadata(_i2.NewDeviceMetadataTypeBuilder? newDeviceMetadata) =>
      _$this._newDeviceMetadata = newDeviceMetadata;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  String? _tokenType;
  String? get tokenType => _$this._tokenType;
  set tokenType(String? tokenType) => _$this._tokenType = tokenType;

  AuthenticationResultTypeBuilder() {
    AuthenticationResultType._init(this);
  }

  AuthenticationResultTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _expiresIn = $v.expiresIn;
      _idToken = $v.idToken;
      _newDeviceMetadata = $v.newDeviceMetadata?.toBuilder();
      _refreshToken = $v.refreshToken;
      _tokenType = $v.tokenType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthenticationResultType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthenticationResultType;
  }

  @override
  void update(void Function(AuthenticationResultTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthenticationResultType build() => _build();

  _$AuthenticationResultType _build() {
    _$AuthenticationResultType _$result;
    try {
      _$result = _$v ??
          new _$AuthenticationResultType._(
              accessToken: accessToken,
              expiresIn: BuiltValueNullFieldError.checkNotNull(
                  expiresIn, r'AuthenticationResultType', 'expiresIn'),
              idToken: idToken,
              newDeviceMetadata: _newDeviceMetadata?.build(),
              refreshToken: refreshToken,
              tokenType: tokenType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'newDeviceMetadata';
        _newDeviceMetadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthenticationResultType', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
