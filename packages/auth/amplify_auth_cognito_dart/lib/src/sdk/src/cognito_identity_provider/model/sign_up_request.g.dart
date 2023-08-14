// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignUpRequest extends SignUpRequest {
  @override
  final String clientId;
  @override
  final String? secretHash;
  @override
  final String username;
  @override
  final String password;
  @override
  final _i3.BuiltList<AttributeType>? userAttributes;
  @override
  final _i3.BuiltList<AttributeType>? validationData;
  @override
  final AnalyticsMetadataType? analyticsMetadata;
  @override
  final UserContextDataType? userContextData;
  @override
  final _i3.BuiltMap<String, String>? clientMetadata;

  factory _$SignUpRequest([void Function(SignUpRequestBuilder)? updates]) =>
      (new SignUpRequestBuilder()..update(updates))._build();

  _$SignUpRequest._(
      {required this.clientId,
      this.secretHash,
      required this.username,
      required this.password,
      this.userAttributes,
      this.validationData,
      this.analyticsMetadata,
      this.userContextData,
      this.clientMetadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        clientId, r'SignUpRequest', 'clientId');
    BuiltValueNullFieldError.checkNotNull(
        username, r'SignUpRequest', 'username');
    BuiltValueNullFieldError.checkNotNull(
        password, r'SignUpRequest', 'password');
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
        clientId == other.clientId &&
        secretHash == other.secretHash &&
        username == other.username &&
        password == other.password &&
        userAttributes == other.userAttributes &&
        validationData == other.validationData &&
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
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, userAttributes.hashCode);
    _$hash = $jc(_$hash, validationData.hashCode);
    _$hash = $jc(_$hash, analyticsMetadata.hashCode);
    _$hash = $jc(_$hash, userContextData.hashCode);
    _$hash = $jc(_$hash, clientMetadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SignUpRequestBuilder
    implements Builder<SignUpRequest, SignUpRequestBuilder> {
  _$SignUpRequest? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _secretHash;
  String? get secretHash => _$this._secretHash;
  set secretHash(String? secretHash) => _$this._secretHash = secretHash;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  _i3.ListBuilder<AttributeType>? _userAttributes;
  _i3.ListBuilder<AttributeType> get userAttributes =>
      _$this._userAttributes ??= new _i3.ListBuilder<AttributeType>();
  set userAttributes(_i3.ListBuilder<AttributeType>? userAttributes) =>
      _$this._userAttributes = userAttributes;

  _i3.ListBuilder<AttributeType>? _validationData;
  _i3.ListBuilder<AttributeType> get validationData =>
      _$this._validationData ??= new _i3.ListBuilder<AttributeType>();
  set validationData(_i3.ListBuilder<AttributeType>? validationData) =>
      _$this._validationData = validationData;

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

  SignUpRequestBuilder();

  SignUpRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientId = $v.clientId;
      _secretHash = $v.secretHash;
      _username = $v.username;
      _password = $v.password;
      _userAttributes = $v.userAttributes?.toBuilder();
      _validationData = $v.validationData?.toBuilder();
      _analyticsMetadata = $v.analyticsMetadata?.toBuilder();
      _userContextData = $v.userContextData?.toBuilder();
      _clientMetadata = $v.clientMetadata?.toBuilder();
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
              clientId: BuiltValueNullFieldError.checkNotNull(
                  clientId, r'SignUpRequest', 'clientId'),
              secretHash: secretHash,
              username: BuiltValueNullFieldError.checkNotNull(
                  username, r'SignUpRequest', 'username'),
              password: BuiltValueNullFieldError.checkNotNull(
                  password, r'SignUpRequest', 'password'),
              userAttributes: _userAttributes?.build(),
              validationData: _validationData?.build(),
              analyticsMetadata: _analyticsMetadata?.build(),
              userContextData: _userContextData?.build(),
              clientMetadata: _clientMetadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userAttributes';
        _userAttributes?.build();
        _$failedField = 'validationData';
        _validationData?.build();
        _$failedField = 'analyticsMetadata';
        _analyticsMetadata?.build();
        _$failedField = 'userContextData';
        _userContextData?.build();
        _$failedField = 'clientMetadata';
        _clientMetadata?.build();
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
