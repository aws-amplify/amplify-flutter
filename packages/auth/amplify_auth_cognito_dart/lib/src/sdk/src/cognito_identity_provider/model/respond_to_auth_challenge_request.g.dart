// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.respond_to_auth_challenge_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RespondToAuthChallengeRequest extends RespondToAuthChallengeRequest {
  @override
  final _i3.AnalyticsMetadataType? analyticsMetadata;
  @override
  final _i4.ChallengeNameType challengeName;
  @override
  final _i6.BuiltMap<String, String>? challengeResponses;
  @override
  final String clientId;
  @override
  final _i6.BuiltMap<String, String>? clientMetadata;
  @override
  final String? session;
  @override
  final _i5.UserContextDataType? userContextData;

  factory _$RespondToAuthChallengeRequest(
          [void Function(RespondToAuthChallengeRequestBuilder)? updates]) =>
      (new RespondToAuthChallengeRequestBuilder()..update(updates))._build();

  _$RespondToAuthChallengeRequest._(
      {this.analyticsMetadata,
      required this.challengeName,
      this.challengeResponses,
      required this.clientId,
      this.clientMetadata,
      this.session,
      this.userContextData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        challengeName, r'RespondToAuthChallengeRequest', 'challengeName');
    BuiltValueNullFieldError.checkNotNull(
        clientId, r'RespondToAuthChallengeRequest', 'clientId');
  }

  @override
  RespondToAuthChallengeRequest rebuild(
          void Function(RespondToAuthChallengeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RespondToAuthChallengeRequestBuilder toBuilder() =>
      new RespondToAuthChallengeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RespondToAuthChallengeRequest &&
        analyticsMetadata == other.analyticsMetadata &&
        challengeName == other.challengeName &&
        challengeResponses == other.challengeResponses &&
        clientId == other.clientId &&
        clientMetadata == other.clientMetadata &&
        session == other.session &&
        userContextData == other.userContextData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, analyticsMetadata.hashCode);
    _$hash = $jc(_$hash, challengeName.hashCode);
    _$hash = $jc(_$hash, challengeResponses.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientMetadata.hashCode);
    _$hash = $jc(_$hash, session.hashCode);
    _$hash = $jc(_$hash, userContextData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RespondToAuthChallengeRequestBuilder
    implements
        Builder<RespondToAuthChallengeRequest,
            RespondToAuthChallengeRequestBuilder> {
  _$RespondToAuthChallengeRequest? _$v;

  _i3.AnalyticsMetadataTypeBuilder? _analyticsMetadata;
  _i3.AnalyticsMetadataTypeBuilder get analyticsMetadata =>
      _$this._analyticsMetadata ??= new _i3.AnalyticsMetadataTypeBuilder();
  set analyticsMetadata(_i3.AnalyticsMetadataTypeBuilder? analyticsMetadata) =>
      _$this._analyticsMetadata = analyticsMetadata;

  _i4.ChallengeNameType? _challengeName;
  _i4.ChallengeNameType? get challengeName => _$this._challengeName;
  set challengeName(_i4.ChallengeNameType? challengeName) =>
      _$this._challengeName = challengeName;

  _i6.MapBuilder<String, String>? _challengeResponses;
  _i6.MapBuilder<String, String> get challengeResponses =>
      _$this._challengeResponses ??= new _i6.MapBuilder<String, String>();
  set challengeResponses(_i6.MapBuilder<String, String>? challengeResponses) =>
      _$this._challengeResponses = challengeResponses;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  _i6.MapBuilder<String, String>? _clientMetadata;
  _i6.MapBuilder<String, String> get clientMetadata =>
      _$this._clientMetadata ??= new _i6.MapBuilder<String, String>();
  set clientMetadata(_i6.MapBuilder<String, String>? clientMetadata) =>
      _$this._clientMetadata = clientMetadata;

  String? _session;
  String? get session => _$this._session;
  set session(String? session) => _$this._session = session;

  _i5.UserContextDataTypeBuilder? _userContextData;
  _i5.UserContextDataTypeBuilder get userContextData =>
      _$this._userContextData ??= new _i5.UserContextDataTypeBuilder();
  set userContextData(_i5.UserContextDataTypeBuilder? userContextData) =>
      _$this._userContextData = userContextData;

  RespondToAuthChallengeRequestBuilder() {
    RespondToAuthChallengeRequest._init(this);
  }

  RespondToAuthChallengeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _analyticsMetadata = $v.analyticsMetadata?.toBuilder();
      _challengeName = $v.challengeName;
      _challengeResponses = $v.challengeResponses?.toBuilder();
      _clientId = $v.clientId;
      _clientMetadata = $v.clientMetadata?.toBuilder();
      _session = $v.session;
      _userContextData = $v.userContextData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RespondToAuthChallengeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RespondToAuthChallengeRequest;
  }

  @override
  void update(void Function(RespondToAuthChallengeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RespondToAuthChallengeRequest build() => _build();

  _$RespondToAuthChallengeRequest _build() {
    _$RespondToAuthChallengeRequest _$result;
    try {
      _$result = _$v ??
          new _$RespondToAuthChallengeRequest._(
              analyticsMetadata: _analyticsMetadata?.build(),
              challengeName: BuiltValueNullFieldError.checkNotNull(
                  challengeName,
                  r'RespondToAuthChallengeRequest',
                  'challengeName'),
              challengeResponses: _challengeResponses?.build(),
              clientId: BuiltValueNullFieldError.checkNotNull(
                  clientId, r'RespondToAuthChallengeRequest', 'clientId'),
              clientMetadata: _clientMetadata?.build(),
              session: session,
              userContextData: _userContextData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'analyticsMetadata';
        _analyticsMetadata?.build();

        _$failedField = 'challengeResponses';
        _challengeResponses?.build();

        _$failedField = 'clientMetadata';
        _clientMetadata?.build();

        _$failedField = 'userContextData';
        _userContextData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RespondToAuthChallengeRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
