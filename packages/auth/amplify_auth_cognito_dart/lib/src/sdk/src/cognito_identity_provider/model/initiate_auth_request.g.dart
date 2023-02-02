// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.initiate_auth_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InitiateAuthRequest extends InitiateAuthRequest {
  @override
  final _i3.AnalyticsMetadataType? analyticsMetadata;
  @override
  final _i4.AuthFlowType authFlow;
  @override
  final _i6.BuiltMap<String, String>? authParameters;
  @override
  final String clientId;
  @override
  final _i6.BuiltMap<String, String>? clientMetadata;
  @override
  final _i5.UserContextDataType? userContextData;

  factory _$InitiateAuthRequest(
          [void Function(InitiateAuthRequestBuilder)? updates]) =>
      (new InitiateAuthRequestBuilder()..update(updates))._build();

  _$InitiateAuthRequest._(
      {this.analyticsMetadata,
      required this.authFlow,
      this.authParameters,
      required this.clientId,
      this.clientMetadata,
      this.userContextData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        authFlow, r'InitiateAuthRequest', 'authFlow');
    BuiltValueNullFieldError.checkNotNull(
        clientId, r'InitiateAuthRequest', 'clientId');
  }

  @override
  InitiateAuthRequest rebuild(
          void Function(InitiateAuthRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InitiateAuthRequestBuilder toBuilder() =>
      new InitiateAuthRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InitiateAuthRequest &&
        analyticsMetadata == other.analyticsMetadata &&
        authFlow == other.authFlow &&
        authParameters == other.authParameters &&
        clientId == other.clientId &&
        clientMetadata == other.clientMetadata &&
        userContextData == other.userContextData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, analyticsMetadata.hashCode);
    _$hash = $jc(_$hash, authFlow.hashCode);
    _$hash = $jc(_$hash, authParameters.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientMetadata.hashCode);
    _$hash = $jc(_$hash, userContextData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InitiateAuthRequestBuilder
    implements Builder<InitiateAuthRequest, InitiateAuthRequestBuilder> {
  _$InitiateAuthRequest? _$v;

  _i3.AnalyticsMetadataTypeBuilder? _analyticsMetadata;
  _i3.AnalyticsMetadataTypeBuilder get analyticsMetadata =>
      _$this._analyticsMetadata ??= new _i3.AnalyticsMetadataTypeBuilder();
  set analyticsMetadata(_i3.AnalyticsMetadataTypeBuilder? analyticsMetadata) =>
      _$this._analyticsMetadata = analyticsMetadata;

  _i4.AuthFlowType? _authFlow;
  _i4.AuthFlowType? get authFlow => _$this._authFlow;
  set authFlow(_i4.AuthFlowType? authFlow) => _$this._authFlow = authFlow;

  _i6.MapBuilder<String, String>? _authParameters;
  _i6.MapBuilder<String, String> get authParameters =>
      _$this._authParameters ??= new _i6.MapBuilder<String, String>();
  set authParameters(_i6.MapBuilder<String, String>? authParameters) =>
      _$this._authParameters = authParameters;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  _i6.MapBuilder<String, String>? _clientMetadata;
  _i6.MapBuilder<String, String> get clientMetadata =>
      _$this._clientMetadata ??= new _i6.MapBuilder<String, String>();
  set clientMetadata(_i6.MapBuilder<String, String>? clientMetadata) =>
      _$this._clientMetadata = clientMetadata;

  _i5.UserContextDataTypeBuilder? _userContextData;
  _i5.UserContextDataTypeBuilder get userContextData =>
      _$this._userContextData ??= new _i5.UserContextDataTypeBuilder();
  set userContextData(_i5.UserContextDataTypeBuilder? userContextData) =>
      _$this._userContextData = userContextData;

  InitiateAuthRequestBuilder() {
    InitiateAuthRequest._init(this);
  }

  InitiateAuthRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _analyticsMetadata = $v.analyticsMetadata?.toBuilder();
      _authFlow = $v.authFlow;
      _authParameters = $v.authParameters?.toBuilder();
      _clientId = $v.clientId;
      _clientMetadata = $v.clientMetadata?.toBuilder();
      _userContextData = $v.userContextData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InitiateAuthRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InitiateAuthRequest;
  }

  @override
  void update(void Function(InitiateAuthRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InitiateAuthRequest build() => _build();

  _$InitiateAuthRequest _build() {
    _$InitiateAuthRequest _$result;
    try {
      _$result = _$v ??
          new _$InitiateAuthRequest._(
              analyticsMetadata: _analyticsMetadata?.build(),
              authFlow: BuiltValueNullFieldError.checkNotNull(
                  authFlow, r'InitiateAuthRequest', 'authFlow'),
              authParameters: _authParameters?.build(),
              clientId: BuiltValueNullFieldError.checkNotNull(
                  clientId, r'InitiateAuthRequest', 'clientId'),
              clientMetadata: _clientMetadata?.build(),
              userContextData: _userContextData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'analyticsMetadata';
        _analyticsMetadata?.build();

        _$failedField = 'authParameters';
        _authParameters?.build();

        _$failedField = 'clientMetadata';
        _clientMetadata?.build();
        _$failedField = 'userContextData';
        _userContextData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InitiateAuthRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
