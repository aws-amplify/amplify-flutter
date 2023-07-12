// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_auth_challenge_code_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResendAuthChallengeCodeRequest extends ResendAuthChallengeCodeRequest {
  @override
  final String session;

  factory _$ResendAuthChallengeCodeRequest(
          [void Function(ResendAuthChallengeCodeRequestBuilder)? updates]) =>
      (new ResendAuthChallengeCodeRequestBuilder()..update(updates))._build();

  _$ResendAuthChallengeCodeRequest._({required this.session}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        session, r'ResendAuthChallengeCodeRequest', 'session');
  }

  @override
  ResendAuthChallengeCodeRequest rebuild(
          void Function(ResendAuthChallengeCodeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResendAuthChallengeCodeRequestBuilder toBuilder() =>
      new ResendAuthChallengeCodeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResendAuthChallengeCodeRequest && session == other.session;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, session.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResendAuthChallengeCodeRequestBuilder
    implements
        Builder<ResendAuthChallengeCodeRequest,
            ResendAuthChallengeCodeRequestBuilder> {
  _$ResendAuthChallengeCodeRequest? _$v;

  String? _session;
  String? get session => _$this._session;
  set session(String? session) => _$this._session = session;

  ResendAuthChallengeCodeRequestBuilder() {
    ResendAuthChallengeCodeRequest._init(this);
  }

  ResendAuthChallengeCodeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _session = $v.session;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResendAuthChallengeCodeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResendAuthChallengeCodeRequest;
  }

  @override
  void update(void Function(ResendAuthChallengeCodeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResendAuthChallengeCodeRequest build() => _build();

  _$ResendAuthChallengeCodeRequest _build() {
    final _$result = _$v ??
        new _$ResendAuthChallengeCodeRequest._(
            session: BuiltValueNullFieldError.checkNotNull(
                session, r'ResendAuthChallengeCodeRequest', 'session'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
