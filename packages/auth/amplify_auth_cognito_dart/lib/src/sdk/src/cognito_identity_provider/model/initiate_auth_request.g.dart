// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiate_auth_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InitiateAuthRequest extends InitiateAuthRequest {
  @override
  final AuthFlowType authFlow;
  @override
  final _i3.BuiltMap<String, String>? authParameters;
  @override
  final _i3.BuiltMap<String, String>? clientMetadata;
  @override
  final String clientId;
  @override
  final AnalyticsMetadataType? analyticsMetadata;
  @override
  final UserContextDataType? userContextData;

  factory _$InitiateAuthRequest(
          [void Function(InitiateAuthRequestBuilder)? updates]) =>
      (new InitiateAuthRequestBuilder()..update(updates))._build();

  _$InitiateAuthRequest._(
      {required this.authFlow,
      this.authParameters,
      this.clientMetadata,
      required this.clientId,
      this.analyticsMetadata,
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
        authFlow == other.authFlow &&
        authParameters == other.authParameters &&
        clientMetadata == other.clientMetadata &&
        clientId == other.clientId &&
        analyticsMetadata == other.analyticsMetadata &&
        userContextData == other.userContextData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authFlow.hashCode);
    _$hash = $jc(_$hash, authParameters.hashCode);
    _$hash = $jc(_$hash, clientMetadata.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, analyticsMetadata.hashCode);
    _$hash = $jc(_$hash, userContextData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InitiateAuthRequestBuilder
    implements Builder<InitiateAuthRequest, InitiateAuthRequestBuilder> {
  _$InitiateAuthRequest? _$v;

  AuthFlowType? _authFlow;
  AuthFlowType? get authFlow => _$this._authFlow;
  set authFlow(AuthFlowType? authFlow) => _$this._authFlow = authFlow;

  _i3.MapBuilder<String, String>? _authParameters;
  _i3.MapBuilder<String, String> get authParameters =>
      _$this._authParameters ??= new _i3.MapBuilder<String, String>();
  set authParameters(_i3.MapBuilder<String, String>? authParameters) =>
      _$this._authParameters = authParameters;

  _i3.MapBuilder<String, String>? _clientMetadata;
  _i3.MapBuilder<String, String> get clientMetadata =>
      _$this._clientMetadata ??= new _i3.MapBuilder<String, String>();
  set clientMetadata(_i3.MapBuilder<String, String>? clientMetadata) =>
      _$this._clientMetadata = clientMetadata;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

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

  InitiateAuthRequestBuilder();

  InitiateAuthRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authFlow = $v.authFlow;
      _authParameters = $v.authParameters?.toBuilder();
      _clientMetadata = $v.clientMetadata?.toBuilder();
      _clientId = $v.clientId;
      _analyticsMetadata = $v.analyticsMetadata?.toBuilder();
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
              authFlow: BuiltValueNullFieldError.checkNotNull(
                  authFlow, r'InitiateAuthRequest', 'authFlow'),
              authParameters: _authParameters?.build(),
              clientMetadata: _clientMetadata?.build(),
              clientId: BuiltValueNullFieldError.checkNotNull(
                  clientId, r'InitiateAuthRequest', 'clientId'),
              analyticsMetadata: _analyticsMetadata?.build(),
              userContextData: _userContextData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authParameters';
        _authParameters?.build();
        _$failedField = 'clientMetadata';
        _clientMetadata?.build();

        _$failedField = 'analyticsMetadata';
        _analyticsMetadata?.build();
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
