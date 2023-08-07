// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_forgot_password_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfirmForgotPasswordRequest extends ConfirmForgotPasswordRequest {
  @override
  final String clientId;
  @override
  final String? secretHash;
  @override
  final String username;
  @override
  final String confirmationCode;
  @override
  final String password;
  @override
  final AnalyticsMetadataType? analyticsMetadata;
  @override
  final UserContextDataType? userContextData;
  @override
  final _i3.BuiltMap<String, String>? clientMetadata;

  factory _$ConfirmForgotPasswordRequest(
          [void Function(ConfirmForgotPasswordRequestBuilder)? updates]) =>
      (new ConfirmForgotPasswordRequestBuilder()..update(updates))._build();

  _$ConfirmForgotPasswordRequest._(
      {required this.clientId,
      this.secretHash,
      required this.username,
      required this.confirmationCode,
      required this.password,
      this.analyticsMetadata,
      this.userContextData,
      this.clientMetadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        clientId, r'ConfirmForgotPasswordRequest', 'clientId');
    BuiltValueNullFieldError.checkNotNull(
        username, r'ConfirmForgotPasswordRequest', 'username');
    BuiltValueNullFieldError.checkNotNull(
        confirmationCode, r'ConfirmForgotPasswordRequest', 'confirmationCode');
    BuiltValueNullFieldError.checkNotNull(
        password, r'ConfirmForgotPasswordRequest', 'password');
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
        clientId == other.clientId &&
        secretHash == other.secretHash &&
        username == other.username &&
        confirmationCode == other.confirmationCode &&
        password == other.password &&
        analyticsMetadata == other.analyticsMetadata &&
        userContextData == other.userContextData &&
        clientMetadata == other.clientMetadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, secretHash.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, confirmationCode.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, analyticsMetadata.hashCode);
    _$hash = $jc(_$hash, userContextData.hashCode);
    _$hash = $jc(_$hash, clientMetadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConfirmForgotPasswordRequestBuilder
    implements
        Builder<ConfirmForgotPasswordRequest,
            ConfirmForgotPasswordRequestBuilder> {
  _$ConfirmForgotPasswordRequest? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _secretHash;
  String? get secretHash => _$this._secretHash;
  set secretHash(String? secretHash) => _$this._secretHash = secretHash;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _confirmationCode;
  String? get confirmationCode => _$this._confirmationCode;
  set confirmationCode(String? confirmationCode) =>
      _$this._confirmationCode = confirmationCode;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  AnalyticsMetadataTypeBuilder? _analyticsMetadata;
  AnalyticsMetadataTypeBuilder get analyticsMetadata =>
      _$this._analyticsMetadata ??= new AnalyticsMetadataTypeBuilder();
  set analyticsMetadata(AnalyticsMetadataTypeBuilder? analyticsMetadata) =>
      _$this._analyticsMetadata = analyticsMetadata;

  UserContextDataTypeBuilder? _userContextData;
  UserContextDataTypeBuilder get userContextData =>
      _$this._userContextData ??= new UserContextDataTypeBuilder();
  set userContextData(UserContextDataTypeBuilder? userContextData) =>
      _$this._userContextData = userContextData;

  _i3.MapBuilder<String, String>? _clientMetadata;
  _i3.MapBuilder<String, String> get clientMetadata =>
      _$this._clientMetadata ??= new _i3.MapBuilder<String, String>();
  set clientMetadata(_i3.MapBuilder<String, String>? clientMetadata) =>
      _$this._clientMetadata = clientMetadata;

  ConfirmForgotPasswordRequestBuilder();

  ConfirmForgotPasswordRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientId = $v.clientId;
      _secretHash = $v.secretHash;
      _username = $v.username;
      _confirmationCode = $v.confirmationCode;
      _password = $v.password;
      _analyticsMetadata = $v.analyticsMetadata?.toBuilder();
      _userContextData = $v.userContextData?.toBuilder();
      _clientMetadata = $v.clientMetadata?.toBuilder();
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
              clientId: BuiltValueNullFieldError.checkNotNull(
                  clientId, r'ConfirmForgotPasswordRequest', 'clientId'),
              secretHash: secretHash,
              username: BuiltValueNullFieldError.checkNotNull(
                  username, r'ConfirmForgotPasswordRequest', 'username'),
              confirmationCode: BuiltValueNullFieldError.checkNotNull(
                  confirmationCode,
                  r'ConfirmForgotPasswordRequest',
                  'confirmationCode'),
              password: BuiltValueNullFieldError.checkNotNull(
                  password, r'ConfirmForgotPasswordRequest', 'password'),
              analyticsMetadata: _analyticsMetadata?.build(),
              userContextData: _userContextData?.build(),
              clientMetadata: _clientMetadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'analyticsMetadata';
        _analyticsMetadata?.build();
        _$failedField = 'userContextData';
        _userContextData?.build();
        _$failedField = 'clientMetadata';
        _clientMetadata?.build();
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
