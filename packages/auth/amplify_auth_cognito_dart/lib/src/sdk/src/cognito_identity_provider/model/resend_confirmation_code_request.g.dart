// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.resend_confirmation_code_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResendConfirmationCodeRequest extends ResendConfirmationCodeRequest {
  @override
  final _i3.AnalyticsMetadataType? analyticsMetadata;
  @override
  final String clientId;
  @override
  final _i5.BuiltMap<String, String>? clientMetadata;
  @override
  final String? secretHash;
  @override
  final _i4.UserContextDataType? userContextData;
  @override
  final String username;

  factory _$ResendConfirmationCodeRequest(
          [void Function(ResendConfirmationCodeRequestBuilder)? updates]) =>
      (new ResendConfirmationCodeRequestBuilder()..update(updates))._build();

  _$ResendConfirmationCodeRequest._(
      {this.analyticsMetadata,
      required this.clientId,
      this.clientMetadata,
      this.secretHash,
      this.userContextData,
      required this.username})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        clientId, r'ResendConfirmationCodeRequest', 'clientId');
    BuiltValueNullFieldError.checkNotNull(
        username, r'ResendConfirmationCodeRequest', 'username');
  }

  @override
  ResendConfirmationCodeRequest rebuild(
          void Function(ResendConfirmationCodeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResendConfirmationCodeRequestBuilder toBuilder() =>
      new ResendConfirmationCodeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResendConfirmationCodeRequest &&
        analyticsMetadata == other.analyticsMetadata &&
        clientId == other.clientId &&
        clientMetadata == other.clientMetadata &&
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
    _$hash = $jc(_$hash, secretHash.hashCode);
    _$hash = $jc(_$hash, userContextData.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResendConfirmationCodeRequestBuilder
    implements
        Builder<ResendConfirmationCodeRequest,
            ResendConfirmationCodeRequestBuilder> {
  _$ResendConfirmationCodeRequest? _$v;

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

  ResendConfirmationCodeRequestBuilder() {
    ResendConfirmationCodeRequest._init(this);
  }

  ResendConfirmationCodeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _analyticsMetadata = $v.analyticsMetadata?.toBuilder();
      _clientId = $v.clientId;
      _clientMetadata = $v.clientMetadata?.toBuilder();
      _secretHash = $v.secretHash;
      _userContextData = $v.userContextData?.toBuilder();
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResendConfirmationCodeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResendConfirmationCodeRequest;
  }

  @override
  void update(void Function(ResendConfirmationCodeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResendConfirmationCodeRequest build() => _build();

  _$ResendConfirmationCodeRequest _build() {
    _$ResendConfirmationCodeRequest _$result;
    try {
      _$result = _$v ??
          new _$ResendConfirmationCodeRequest._(
              analyticsMetadata: _analyticsMetadata?.build(),
              clientId: BuiltValueNullFieldError.checkNotNull(
                  clientId, r'ResendConfirmationCodeRequest', 'clientId'),
              clientMetadata: _clientMetadata?.build(),
              secretHash: secretHash,
              userContextData: _userContextData?.build(),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, r'ResendConfirmationCodeRequest', 'username'));
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
            r'ResendConfirmationCodeRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
