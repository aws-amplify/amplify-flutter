// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.confirm_forgot_password_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfirmForgotPasswordRequest extends ConfirmForgotPasswordRequest {
  @override
  final _i3.AnalyticsMetadataType? analyticsMetadata;
  @override
  final String clientId;
  @override
  final _i4.BuiltMap<String, String>? clientMetadata;
  @override
  final String confirmationCode;
  @override
  final String password;
  @override
  final String? secretHash;
  @override
  final _i5.UserContextDataType? userContextData;
  @override
  final String username;

  factory _$ConfirmForgotPasswordRequest(
          [void Function(ConfirmForgotPasswordRequestBuilder)? updates]) =>
      (new ConfirmForgotPasswordRequestBuilder()..update(updates))._build();

  _$ConfirmForgotPasswordRequest._(
      {this.analyticsMetadata,
      required this.clientId,
      this.clientMetadata,
      required this.confirmationCode,
      required this.password,
      this.secretHash,
      this.userContextData,
      required this.username})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        clientId, 'ConfirmForgotPasswordRequest', 'clientId');
    BuiltValueNullFieldError.checkNotNull(
        confirmationCode, 'ConfirmForgotPasswordRequest', 'confirmationCode');
    BuiltValueNullFieldError.checkNotNull(
        password, 'ConfirmForgotPasswordRequest', 'password');
    BuiltValueNullFieldError.checkNotNull(
        username, 'ConfirmForgotPasswordRequest', 'username');
  }

  @override
  ConfirmForgotPasswordRequest rebuild(
          void Function(ConfirmForgotPasswordRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfirmForgotPasswordRequestBuilder toBuilder() =>
      new ConfirmForgotPasswordRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfirmForgotPasswordRequest &&
        analyticsMetadata == other.analyticsMetadata &&
        clientId == other.clientId &&
        clientMetadata == other.clientMetadata &&
        confirmationCode == other.confirmationCode &&
        password == other.password &&
        secretHash == other.secretHash &&
        userContextData == other.userContextData &&
        username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, analyticsMetadata.hashCode),
                                clientId.hashCode),
                            clientMetadata.hashCode),
                        confirmationCode.hashCode),
                    password.hashCode),
                secretHash.hashCode),
            userContextData.hashCode),
        username.hashCode));
  }
}

class ConfirmForgotPasswordRequestBuilder
    implements
        Builder<ConfirmForgotPasswordRequest,
            ConfirmForgotPasswordRequestBuilder> {
  _$ConfirmForgotPasswordRequest? _$v;

  _i3.AnalyticsMetadataTypeBuilder? _analyticsMetadata;
  _i3.AnalyticsMetadataTypeBuilder get analyticsMetadata =>
      _$this._analyticsMetadata ??= new _i3.AnalyticsMetadataTypeBuilder();
  set analyticsMetadata(_i3.AnalyticsMetadataTypeBuilder? analyticsMetadata) =>
      _$this._analyticsMetadata = analyticsMetadata;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  _i4.MapBuilder<String, String>? _clientMetadata;
  _i4.MapBuilder<String, String> get clientMetadata =>
      _$this._clientMetadata ??= new _i4.MapBuilder<String, String>();
  set clientMetadata(_i4.MapBuilder<String, String>? clientMetadata) =>
      _$this._clientMetadata = clientMetadata;

  String? _confirmationCode;
  String? get confirmationCode => _$this._confirmationCode;
  set confirmationCode(String? confirmationCode) =>
      _$this._confirmationCode = confirmationCode;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _secretHash;
  String? get secretHash => _$this._secretHash;
  set secretHash(String? secretHash) => _$this._secretHash = secretHash;

  _i5.UserContextDataTypeBuilder? _userContextData;
  _i5.UserContextDataTypeBuilder get userContextData =>
      _$this._userContextData ??= new _i5.UserContextDataTypeBuilder();
  set userContextData(_i5.UserContextDataTypeBuilder? userContextData) =>
      _$this._userContextData = userContextData;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  ConfirmForgotPasswordRequestBuilder() {
    ConfirmForgotPasswordRequest._init(this);
  }

  ConfirmForgotPasswordRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _analyticsMetadata = $v.analyticsMetadata?.toBuilder();
      _clientId = $v.clientId;
      _clientMetadata = $v.clientMetadata?.toBuilder();
      _confirmationCode = $v.confirmationCode;
      _password = $v.password;
      _secretHash = $v.secretHash;
      _userContextData = $v.userContextData?.toBuilder();
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfirmForgotPasswordRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfirmForgotPasswordRequest;
  }

  @override
  void update(void Function(ConfirmForgotPasswordRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfirmForgotPasswordRequest build() => _build();

  _$ConfirmForgotPasswordRequest _build() {
    _$ConfirmForgotPasswordRequest _$result;
    try {
      _$result = _$v ??
          new _$ConfirmForgotPasswordRequest._(
              analyticsMetadata: _analyticsMetadata?.build(),
              clientId: BuiltValueNullFieldError.checkNotNull(
                  clientId, 'ConfirmForgotPasswordRequest', 'clientId'),
              clientMetadata: _clientMetadata?.build(),
              confirmationCode: BuiltValueNullFieldError.checkNotNull(
                  confirmationCode,
                  'ConfirmForgotPasswordRequest',
                  'confirmationCode'),
              password: BuiltValueNullFieldError.checkNotNull(
                  password, 'ConfirmForgotPasswordRequest', 'password'),
              secretHash: secretHash,
              userContextData: _userContextData?.build(),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, 'ConfirmForgotPasswordRequest', 'username'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'analyticsMetadata';
        _analyticsMetadata?.build();

        _$failedField = 'clientMetadata';
        _clientMetadata?.build();

        _$failedField = 'userContextData';
        _userContextData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ConfirmForgotPasswordRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
