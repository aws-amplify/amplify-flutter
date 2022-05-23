// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.respond_to_auth_challenge_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RespondToAuthChallengeRequest extends RespondToAuthChallengeRequest {
  @override
  final _i3.AnalyticsMetadataType? analyticsMetadata;
  @override
  final _i4.ChallengeNameType challengeName;
  @override
  final _i5.BuiltMap<String, String>? challengeResponses;
  @override
  final String clientId;
  @override
  final _i5.BuiltMap<String, String>? clientMetadata;
  @override
  final String? session;
  @override
  final _i6.UserContextDataType? userContextData;

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
        challengeName, 'RespondToAuthChallengeRequest', 'challengeName');
    BuiltValueNullFieldError.checkNotNull(
        clientId, 'RespondToAuthChallengeRequest', 'clientId');
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
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, analyticsMetadata.hashCode),
                            challengeName.hashCode),
                        challengeResponses.hashCode),
                    clientId.hashCode),
                clientMetadata.hashCode),
            session.hashCode),
        userContextData.hashCode));
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

  _i5.MapBuilder<String, String>? _challengeResponses;
  _i5.MapBuilder<String, String> get challengeResponses =>
      _$this._challengeResponses ??= new _i5.MapBuilder<String, String>();
  set challengeResponses(_i5.MapBuilder<String, String>? challengeResponses) =>
      _$this._challengeResponses = challengeResponses;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  _i5.MapBuilder<String, String>? _clientMetadata;
  _i5.MapBuilder<String, String> get clientMetadata =>
      _$this._clientMetadata ??= new _i5.MapBuilder<String, String>();
  set clientMetadata(_i5.MapBuilder<String, String>? clientMetadata) =>
      _$this._clientMetadata = clientMetadata;

  String? _session;
  String? get session => _$this._session;
  set session(String? session) => _$this._session = session;

  _i6.UserContextDataTypeBuilder? _userContextData;
  _i6.UserContextDataTypeBuilder get userContextData =>
      _$this._userContextData ??= new _i6.UserContextDataTypeBuilder();
  set userContextData(_i6.UserContextDataTypeBuilder? userContextData) =>
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
                  'RespondToAuthChallengeRequest',
                  'challengeName'),
              challengeResponses: _challengeResponses?.build(),
              clientId: BuiltValueNullFieldError.checkNotNull(
                  clientId, 'RespondToAuthChallengeRequest', 'clientId'),
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
            'RespondToAuthChallengeRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
