// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'respond_to_auth_challenge_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RespondToAuthChallengeRequest extends RespondToAuthChallengeRequest {
  @override
  final String clientId;
  @override
  final ChallengeNameType challengeName;
  @override
  final String? session;
  @override
  final _i3.BuiltMap<String, String>? challengeResponses;
  @override
  final AnalyticsMetadataType? analyticsMetadata;
  @override
  final UserContextDataType? userContextData;
  @override
  final _i3.BuiltMap<String, String>? clientMetadata;

  factory _$RespondToAuthChallengeRequest(
          [void Function(RespondToAuthChallengeRequestBuilder)? updates]) =>
      (new RespondToAuthChallengeRequestBuilder()..update(updates))._build();

  _$RespondToAuthChallengeRequest._(
      {required this.clientId,
      required this.challengeName,
      this.session,
      this.challengeResponses,
      this.analyticsMetadata,
      this.userContextData,
      this.clientMetadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        clientId, r'RespondToAuthChallengeRequest', 'clientId');
    BuiltValueNullFieldError.checkNotNull(
        challengeName, r'RespondToAuthChallengeRequest', 'challengeName');
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
        clientId == other.clientId &&
        challengeName == other.challengeName &&
        session == other.session &&
        challengeResponses == other.challengeResponses &&
        analyticsMetadata == other.analyticsMetadata &&
        userContextData == other.userContextData &&
        clientMetadata == other.clientMetadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, challengeName.hashCode);
    _$hash = $jc(_$hash, session.hashCode);
    _$hash = $jc(_$hash, challengeResponses.hashCode);
    _$hash = $jc(_$hash, analyticsMetadata.hashCode);
    _$hash = $jc(_$hash, userContextData.hashCode);
    _$hash = $jc(_$hash, clientMetadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RespondToAuthChallengeRequestBuilder
    implements
        Builder<RespondToAuthChallengeRequest,
            RespondToAuthChallengeRequestBuilder> {
  _$RespondToAuthChallengeRequest? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  ChallengeNameType? _challengeName;
  ChallengeNameType? get challengeName => _$this._challengeName;
  set challengeName(ChallengeNameType? challengeName) =>
      _$this._challengeName = challengeName;

  String? _session;
  String? get session => _$this._session;
  set session(String? session) => _$this._session = session;

  _i3.MapBuilder<String, String>? _challengeResponses;
  _i3.MapBuilder<String, String> get challengeResponses =>
      _$this._challengeResponses ??= new _i3.MapBuilder<String, String>();
  set challengeResponses(_i3.MapBuilder<String, String>? challengeResponses) =>
      _$this._challengeResponses = challengeResponses;

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

  RespondToAuthChallengeRequestBuilder();

  RespondToAuthChallengeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientId = $v.clientId;
      _challengeName = $v.challengeName;
      _session = $v.session;
      _challengeResponses = $v.challengeResponses?.toBuilder();
      _analyticsMetadata = $v.analyticsMetadata?.toBuilder();
      _userContextData = $v.userContextData?.toBuilder();
      _clientMetadata = $v.clientMetadata?.toBuilder();
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
              clientId: BuiltValueNullFieldError.checkNotNull(
                  clientId, r'RespondToAuthChallengeRequest', 'clientId'),
              challengeName: BuiltValueNullFieldError.checkNotNull(
                  challengeName,
                  r'RespondToAuthChallengeRequest',
                  'challengeName'),
              session: session,
              challengeResponses: _challengeResponses?.build(),
              analyticsMetadata: _analyticsMetadata?.build(),
              userContextData: _userContextData?.build(),
              clientMetadata: _clientMetadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'challengeResponses';
        _challengeResponses?.build();
        _$failedField = 'analyticsMetadata';
        _analyticsMetadata?.build();
        _$failedField = 'userContextData';
        _userContextData?.build();
        _$failedField = 'clientMetadata';
        _clientMetadata?.build();
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
