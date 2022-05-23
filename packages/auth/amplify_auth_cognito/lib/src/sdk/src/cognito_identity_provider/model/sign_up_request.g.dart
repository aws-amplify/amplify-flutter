// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.sign_up_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignUpRequest extends SignUpRequest {
  @override
  final _i3.AnalyticsMetadataType? analyticsMetadata;
  @override
  final String clientId;
  @override
  final _i4.BuiltMap<String, String>? clientMetadata;
  @override
  final String password;
  @override
  final String? secretHash;
  @override
  final _i4.BuiltList<_i5.AttributeType>? userAttributes;
  @override
  final _i6.UserContextDataType? userContextData;
  @override
  final String username;
  @override
  final _i4.BuiltList<_i5.AttributeType>? validationData;

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
        clientId, 'SignUpRequest', 'clientId');
    BuiltValueNullFieldError.checkNotNull(
        password, 'SignUpRequest', 'password');
    BuiltValueNullFieldError.checkNotNull(
        username, 'SignUpRequest', 'username');
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
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, analyticsMetadata.hashCode),
                                    clientId.hashCode),
                                clientMetadata.hashCode),
                            password.hashCode),
                        secretHash.hashCode),
                    userAttributes.hashCode),
                userContextData.hashCode),
            username.hashCode),
        validationData.hashCode));
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

  _i4.MapBuilder<String, String>? _clientMetadata;
  _i4.MapBuilder<String, String> get clientMetadata =>
      _$this._clientMetadata ??= new _i4.MapBuilder<String, String>();
  set clientMetadata(_i4.MapBuilder<String, String>? clientMetadata) =>
      _$this._clientMetadata = clientMetadata;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _secretHash;
  String? get secretHash => _$this._secretHash;
  set secretHash(String? secretHash) => _$this._secretHash = secretHash;

  _i4.ListBuilder<_i5.AttributeType>? _userAttributes;
  _i4.ListBuilder<_i5.AttributeType> get userAttributes =>
      _$this._userAttributes ??= new _i4.ListBuilder<_i5.AttributeType>();
  set userAttributes(_i4.ListBuilder<_i5.AttributeType>? userAttributes) =>
      _$this._userAttributes = userAttributes;

  _i6.UserContextDataTypeBuilder? _userContextData;
  _i6.UserContextDataTypeBuilder get userContextData =>
      _$this._userContextData ??= new _i6.UserContextDataTypeBuilder();
  set userContextData(_i6.UserContextDataTypeBuilder? userContextData) =>
      _$this._userContextData = userContextData;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  _i4.ListBuilder<_i5.AttributeType>? _validationData;
  _i4.ListBuilder<_i5.AttributeType> get validationData =>
      _$this._validationData ??= new _i4.ListBuilder<_i5.AttributeType>();
  set validationData(_i4.ListBuilder<_i5.AttributeType>? validationData) =>
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
                  clientId, 'SignUpRequest', 'clientId'),
              clientMetadata: _clientMetadata?.build(),
              password: BuiltValueNullFieldError.checkNotNull(
                  password, 'SignUpRequest', 'password'),
              secretHash: secretHash,
              userAttributes: _userAttributes?.build(),
              userContextData: _userContextData?.build(),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, 'SignUpRequest', 'username'),
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
            'SignUpRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
