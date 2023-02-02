// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.sign_up_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignUpRequest extends SignUpRequest {
  @override
  final _i3.AnalyticsMetadataType? analyticsMetadata;
  @override
  final String clientId;
  @override
  final _i6.BuiltMap<String, String>? clientMetadata;
  @override
  final String password;
  @override
  final String? secretHash;
  @override
  final _i6.BuiltList<_i4.AttributeType>? userAttributes;
  @override
  final _i5.UserContextDataType? userContextData;
  @override
  final String username;
  @override
  final _i6.BuiltList<_i4.AttributeType>? validationData;

  factory _$SignUpRequest([void Function(SignUpRequestBuilder)? updates]) =>
      (new SignUpRequestBuilder()..update(updates))._build();

  _$SignUpRequest._(
      {this.analyticsMetadata,
      required this.clientId,
      this.clientMetadata,
      required this.password,
      this.secretHash,
      this.userAttributes,
      this.userContextData,
      required this.username,
      this.validationData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        clientId, r'SignUpRequest', 'clientId');
    BuiltValueNullFieldError.checkNotNull(
        password, r'SignUpRequest', 'password');
    BuiltValueNullFieldError.checkNotNull(
        username, r'SignUpRequest', 'username');
  }

  @override
  SignUpRequest rebuild(void Function(SignUpRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpRequestBuilder toBuilder() => new SignUpRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpRequest &&
        analyticsMetadata == other.analyticsMetadata &&
        clientId == other.clientId &&
        clientMetadata == other.clientMetadata &&
        password == other.password &&
        secretHash == other.secretHash &&
        userAttributes == other.userAttributes &&
        userContextData == other.userContextData &&
        username == other.username &&
        validationData == other.validationData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, analyticsMetadata.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientMetadata.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, secretHash.hashCode);
    _$hash = $jc(_$hash, userAttributes.hashCode);
    _$hash = $jc(_$hash, userContextData.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, validationData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SignUpRequestBuilder
    implements Builder<SignUpRequest, SignUpRequestBuilder> {
  _$SignUpRequest? _$v;

  _i3.AnalyticsMetadataTypeBuilder? _analyticsMetadata;
  _i3.AnalyticsMetadataTypeBuilder get analyticsMetadata =>
      _$this._analyticsMetadata ??= new _i3.AnalyticsMetadataTypeBuilder();
  set analyticsMetadata(_i3.AnalyticsMetadataTypeBuilder? analyticsMetadata) =>
      _$this._analyticsMetadata = analyticsMetadata;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  _i6.MapBuilder<String, String>? _clientMetadata;
  _i6.MapBuilder<String, String> get clientMetadata =>
      _$this._clientMetadata ??= new _i6.MapBuilder<String, String>();
  set clientMetadata(_i6.MapBuilder<String, String>? clientMetadata) =>
      _$this._clientMetadata = clientMetadata;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _secretHash;
  String? get secretHash => _$this._secretHash;
  set secretHash(String? secretHash) => _$this._secretHash = secretHash;

  _i6.ListBuilder<_i4.AttributeType>? _userAttributes;
  _i6.ListBuilder<_i4.AttributeType> get userAttributes =>
      _$this._userAttributes ??= new _i6.ListBuilder<_i4.AttributeType>();
  set userAttributes(_i6.ListBuilder<_i4.AttributeType>? userAttributes) =>
      _$this._userAttributes = userAttributes;

  _i5.UserContextDataTypeBuilder? _userContextData;
  _i5.UserContextDataTypeBuilder get userContextData =>
      _$this._userContextData ??= new _i5.UserContextDataTypeBuilder();
  set userContextData(_i5.UserContextDataTypeBuilder? userContextData) =>
      _$this._userContextData = userContextData;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  _i6.ListBuilder<_i4.AttributeType>? _validationData;
  _i6.ListBuilder<_i4.AttributeType> get validationData =>
      _$this._validationData ??= new _i6.ListBuilder<_i4.AttributeType>();
  set validationData(_i6.ListBuilder<_i4.AttributeType>? validationData) =>
      _$this._validationData = validationData;

  SignUpRequestBuilder() {
    SignUpRequest._init(this);
  }

  SignUpRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _analyticsMetadata = $v.analyticsMetadata?.toBuilder();
      _clientId = $v.clientId;
      _clientMetadata = $v.clientMetadata?.toBuilder();
      _password = $v.password;
      _secretHash = $v.secretHash;
      _userAttributes = $v.userAttributes?.toBuilder();
      _userContextData = $v.userContextData?.toBuilder();
      _username = $v.username;
      _validationData = $v.validationData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignUpRequest;
  }

  @override
  void update(void Function(SignUpRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignUpRequest build() => _build();

  _$SignUpRequest _build() {
    _$SignUpRequest _$result;
    try {
      _$result = _$v ??
          new _$SignUpRequest._(
              analyticsMetadata: _analyticsMetadata?.build(),
              clientId: BuiltValueNullFieldError.checkNotNull(
                  clientId, r'SignUpRequest', 'clientId'),
              clientMetadata: _clientMetadata?.build(),
              password: BuiltValueNullFieldError.checkNotNull(
                  password, r'SignUpRequest', 'password'),
              secretHash: secretHash,
              userAttributes: _userAttributes?.build(),
              userContextData: _userContextData?.build(),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, r'SignUpRequest', 'username'),
              validationData: _validationData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'analyticsMetadata';
        _analyticsMetadata?.build();

        _$failedField = 'clientMetadata';
        _clientMetadata?.build();

        _$failedField = 'userAttributes';
        _userAttributes?.build();
        _$failedField = 'userContextData';
        _userContextData?.build();

        _$failedField = 'validationData';
        _validationData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SignUpRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
