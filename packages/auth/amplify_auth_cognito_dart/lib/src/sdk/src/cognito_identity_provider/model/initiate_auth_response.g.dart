// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiate_auth_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InitiateAuthResponse extends InitiateAuthResponse {
  @override
  final _i2.ChallengeNameType? challengeName;
  @override
  final String? session;
  @override
  final _i4.BuiltMap<String, String?>? challengeParameters;
  @override
  final _i3.AuthenticationResultType? authenticationResult;

  factory _$InitiateAuthResponse(
          [void Function(InitiateAuthResponseBuilder)? updates]) =>
      (new InitiateAuthResponseBuilder()..update(updates))._build();

  _$InitiateAuthResponse._(
      {this.challengeName,
      this.session,
      this.challengeParameters,
      this.authenticationResult})
      : super._();

  @override
  InitiateAuthResponse rebuild(
          void Function(InitiateAuthResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InitiateAuthResponseBuilder toBuilder() =>
      new InitiateAuthResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InitiateAuthResponse &&
        challengeName == other.challengeName &&
        session == other.session &&
        challengeParameters == other.challengeParameters &&
        authenticationResult == other.authenticationResult;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, challengeName.hashCode);
    _$hash = $jc(_$hash, session.hashCode);
    _$hash = $jc(_$hash, challengeParameters.hashCode);
    _$hash = $jc(_$hash, authenticationResult.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InitiateAuthResponseBuilder
    implements Builder<InitiateAuthResponse, InitiateAuthResponseBuilder> {
  _$InitiateAuthResponse? _$v;

  _i2.ChallengeNameType? _challengeName;
  _i2.ChallengeNameType? get challengeName => _$this._challengeName;
  set challengeName(_i2.ChallengeNameType? challengeName) =>
      _$this._challengeName = challengeName;

  String? _session;
  String? get session => _$this._session;
  set session(String? session) => _$this._session = session;

  _i4.MapBuilder<String, String?>? _challengeParameters;
  _i4.MapBuilder<String, String?> get challengeParameters =>
      _$this._challengeParameters ??= new _i4.MapBuilder<String, String?>();
  set challengeParameters(
          _i4.MapBuilder<String, String?>? challengeParameters) =>
      _$this._challengeParameters = challengeParameters;

  _i3.AuthenticationResultTypeBuilder? _authenticationResult;
  _i3.AuthenticationResultTypeBuilder get authenticationResult =>
      _$this._authenticationResult ??=
          new _i3.AuthenticationResultTypeBuilder();
  set authenticationResult(
          _i3.AuthenticationResultTypeBuilder? authenticationResult) =>
      _$this._authenticationResult = authenticationResult;

  InitiateAuthResponseBuilder() {
    InitiateAuthResponse._init(this);
  }

  InitiateAuthResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _challengeName = $v.challengeName;
      _session = $v.session;
      _challengeParameters = $v.challengeParameters?.toBuilder();
      _authenticationResult = $v.authenticationResult?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InitiateAuthResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InitiateAuthResponse;
  }

  @override
  void update(void Function(InitiateAuthResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InitiateAuthResponse build() => _build();

  _$InitiateAuthResponse _build() {
    _$InitiateAuthResponse _$result;
    try {
      _$result = _$v ??
          new _$InitiateAuthResponse._(
              challengeName: challengeName,
              session: session,
              challengeParameters: _challengeParameters?.build(),
              authenticationResult: _authenticationResult?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'challengeParameters';
        _challengeParameters?.build();
        _$failedField = 'authenticationResult';
        _authenticationResult?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InitiateAuthResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
