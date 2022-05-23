// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.respond_to_auth_challenge_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RespondToAuthChallengeResponse extends RespondToAuthChallengeResponse {
  @override
  final _i2.AuthenticationResultType? authenticationResult;
  @override
  final _i3.ChallengeNameType? challengeName;
  @override
  final _i4.BuiltMap<String, String>? challengeParameters;
  @override
  final String? session;

  factory _$RespondToAuthChallengeResponse(
          [void Function(RespondToAuthChallengeResponseBuilder)? updates]) =>
      (new RespondToAuthChallengeResponseBuilder()..update(updates))._build();

  _$RespondToAuthChallengeResponse._(
      {this.authenticationResult,
      this.challengeName,
      this.challengeParameters,
      this.session})
      : super._();

  @override
  RespondToAuthChallengeResponse rebuild(
          void Function(RespondToAuthChallengeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RespondToAuthChallengeResponseBuilder toBuilder() =>
      new RespondToAuthChallengeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RespondToAuthChallengeResponse &&
        authenticationResult == other.authenticationResult &&
        challengeName == other.challengeName &&
        challengeParameters == other.challengeParameters &&
        session == other.session;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, authenticationResult.hashCode), challengeName.hashCode),
            challengeParameters.hashCode),
        session.hashCode));
  }
}

class RespondToAuthChallengeResponseBuilder
    implements
        Builder<RespondToAuthChallengeResponse,
            RespondToAuthChallengeResponseBuilder> {
  _$RespondToAuthChallengeResponse? _$v;

  _i2.AuthenticationResultTypeBuilder? _authenticationResult;
  _i2.AuthenticationResultTypeBuilder get authenticationResult =>
      _$this._authenticationResult ??=
          new _i2.AuthenticationResultTypeBuilder();
  set authenticationResult(
          _i2.AuthenticationResultTypeBuilder? authenticationResult) =>
      _$this._authenticationResult = authenticationResult;

  _i3.ChallengeNameType? _challengeName;
  _i3.ChallengeNameType? get challengeName => _$this._challengeName;
  set challengeName(_i3.ChallengeNameType? challengeName) =>
      _$this._challengeName = challengeName;

  _i4.MapBuilder<String, String>? _challengeParameters;
  _i4.MapBuilder<String, String> get challengeParameters =>
      _$this._challengeParameters ??= new _i4.MapBuilder<String, String>();
  set challengeParameters(
          _i4.MapBuilder<String, String>? challengeParameters) =>
      _$this._challengeParameters = challengeParameters;

  String? _session;
  String? get session => _$this._session;
  set session(String? session) => _$this._session = session;

  RespondToAuthChallengeResponseBuilder() {
    RespondToAuthChallengeResponse._init(this);
  }

  RespondToAuthChallengeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authenticationResult = $v.authenticationResult?.toBuilder();
      _challengeName = $v.challengeName;
      _challengeParameters = $v.challengeParameters?.toBuilder();
      _session = $v.session;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RespondToAuthChallengeResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RespondToAuthChallengeResponse;
  }

  @override
  void update(void Function(RespondToAuthChallengeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RespondToAuthChallengeResponse build() => _build();

  _$RespondToAuthChallengeResponse _build() {
    _$RespondToAuthChallengeResponse _$result;
    try {
      _$result = _$v ??
          new _$RespondToAuthChallengeResponse._(
              authenticationResult: _authenticationResult?.build(),
              challengeName: challengeName,
              challengeParameters: _challengeParameters?.build(),
              session: session);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authenticationResult';
        _authenticationResult?.build();

        _$failedField = 'challengeParameters';
        _challengeParameters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RespondToAuthChallengeResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
