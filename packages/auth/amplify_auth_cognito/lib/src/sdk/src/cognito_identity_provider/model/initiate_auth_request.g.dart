// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.initiate_auth_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InitiateAuthRequest extends InitiateAuthRequest {
  @override
  final _i3.AnalyticsMetadataType? analyticsMetadata;
  @override
  final _i4.AuthFlowType authFlow;
  @override
  final _i5.BuiltMap<String, String>? authParameters;
  @override
  final String clientId;
  @override
  final _i5.BuiltMap<String, String>? clientMetadata;
  @override
  final _i6.UserContextDataType? userContextData;

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
        authFlow, 'InitiateAuthRequest', 'authFlow');
    BuiltValueNullFieldError.checkNotNull(
        clientId, 'InitiateAuthRequest', 'clientId');
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
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, analyticsMetadata.hashCode), authFlow.hashCode),
                    authParameters.hashCode),
                clientId.hashCode),
            clientMetadata.hashCode),
        userContextData.hashCode));
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

  _i5.MapBuilder<String, String>? _authParameters;
  _i5.MapBuilder<String, String> get authParameters =>
      _$this._authParameters ??= new _i5.MapBuilder<String, String>();
  set authParameters(_i5.MapBuilder<String, String>? authParameters) =>
      _$this._authParameters = authParameters;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  _i5.MapBuilder<String, String>? _clientMetadata;
  _i5.MapBuilder<String, String> get clientMetadata =>
      _$this._clientMetadata ??= new _i5.MapBuilder<String, String>();
  set clientMetadata(_i5.MapBuilder<String, String>? clientMetadata) =>
      _$this._clientMetadata = clientMetadata;

  _i6.UserContextDataTypeBuilder? _userContextData;
  _i6.UserContextDataTypeBuilder get userContextData =>
      _$this._userContextData ??= new _i6.UserContextDataTypeBuilder();
  set userContextData(_i6.UserContextDataTypeBuilder? userContextData) =>
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
                  authFlow, 'InitiateAuthRequest', 'authFlow'),
              authParameters: _authParameters?.build(),
              clientId: BuiltValueNullFieldError.checkNotNull(
                  clientId, 'InitiateAuthRequest', 'clientId'),
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
            'InitiateAuthRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
