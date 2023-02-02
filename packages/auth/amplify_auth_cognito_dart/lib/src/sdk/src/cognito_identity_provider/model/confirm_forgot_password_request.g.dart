// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.confirm_forgot_password_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfirmForgotPasswordRequest extends ConfirmForgotPasswordRequest {
  @override
  final _i3.AnalyticsMetadataType? analyticsMetadata;
  @override
  final String clientId;
  @override
  final _i5.BuiltMap<String, String>? clientMetadata;
  @override
  final String confirmationCode;
  @override
  final String password;
  @override
  final String? secretHash;
  @override
  final _i4.UserContextDataType? userContextData;
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
        clientId, r'ConfirmForgotPasswordRequest', 'clientId');
    BuiltValueNullFieldError.checkNotNull(
        confirmationCode, r'ConfirmForgotPasswordRequest', 'confirmationCode');
    BuiltValueNullFieldError.checkNotNull(
        password, r'ConfirmForgotPasswordRequest', 'password');
    BuiltValueNullFieldError.checkNotNull(
        username, r'ConfirmForgotPasswordRequest', 'username');
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
    var _$hash = 0;
    _$hash = $jc(_$hash, analyticsMetadata.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientMetadata.hashCode);
    _$hash = $jc(_$hash, confirmationCode.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, secretHash.hashCode);
    _$hash = $jc(_$hash, userContextData.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

  _i5.MapBuilder<String, String>? _clientMetadata;
  _i5.MapBuilder<String, String> get clientMetadata =>
      _$this._clientMetadata ??= new _i5.MapBuilder<String, String>();
  set clientMetadata(_i5.MapBuilder<String, String>? clientMetadata) =>
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

  _i4.UserContextDataTypeBuilder? _userContextData;
  _i4.UserContextDataTypeBuilder get userContextData =>
      _$this._userContextData ??= new _i4.UserContextDataTypeBuilder();
  set userContextData(_i4.UserContextDataTypeBuilder? userContextData) =>
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
                  clientId, r'ConfirmForgotPasswordRequest', 'clientId'),
              clientMetadata: _clientMetadata?.build(),
              confirmationCode: BuiltValueNullFieldError.checkNotNull(
                  confirmationCode,
                  r'ConfirmForgotPasswordRequest',
                  'confirmationCode'),
              password: BuiltValueNullFieldError.checkNotNull(
                  password, r'ConfirmForgotPasswordRequest', 'password'),
              secretHash: secretHash,
              userContextData: _userContextData?.build(),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, r'ConfirmForgotPasswordRequest', 'username'));
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
            r'ConfirmForgotPasswordRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
