// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.authentication_result_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthenticationResultType extends AuthenticationResultType {
  @override
  final String? accessToken;
  @override
  final int? expiresIn;
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
      this.expiresIn,
      this.idToken,
      this.newDeviceMetadata,
      this.refreshToken,
      this.tokenType})
      : super._();

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
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, accessToken.hashCode), expiresIn.hashCode),
                    idToken.hashCode),
                newDeviceMetadata.hashCode),
            refreshToken.hashCode),
        tokenType.hashCode));
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
              expiresIn: expiresIn,
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
            'AuthenticationResultType', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
