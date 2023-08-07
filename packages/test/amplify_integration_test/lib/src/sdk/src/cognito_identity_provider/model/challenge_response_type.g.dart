// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_response_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChallengeResponseType extends ChallengeResponseType {
  @override
  final ChallengeName? challengeName;
  @override
  final ChallengeResponse? challengeResponse;

  factory _$ChallengeResponseType(
          [void Function(ChallengeResponseTypeBuilder)? updates]) =>
      (new ChallengeResponseTypeBuilder()..update(updates))._build();

  _$ChallengeResponseType._({this.challengeName, this.challengeResponse})
      : super._();

  @override
  ChallengeResponseType rebuild(
          void Function(ChallengeResponseTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChallengeResponseTypeBuilder toBuilder() =>
      new ChallengeResponseTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChallengeResponseType &&
        challengeName == other.challengeName &&
        challengeResponse == other.challengeResponse;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, challengeName.hashCode);
    _$hash = $jc(_$hash, challengeResponse.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ChallengeResponseTypeBuilder
    implements Builder<ChallengeResponseType, ChallengeResponseTypeBuilder> {
  _$ChallengeResponseType? _$v;

  ChallengeName? _challengeName;
  ChallengeName? get challengeName => _$this._challengeName;
  set challengeName(ChallengeName? challengeName) =>
      _$this._challengeName = challengeName;

  ChallengeResponse? _challengeResponse;
  ChallengeResponse? get challengeResponse => _$this._challengeResponse;
  set challengeResponse(ChallengeResponse? challengeResponse) =>
      _$this._challengeResponse = challengeResponse;

  ChallengeResponseTypeBuilder();

  ChallengeResponseTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _challengeName = $v.challengeName;
      _challengeResponse = $v.challengeResponse;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChallengeResponseType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChallengeResponseType;
  }

  @override
  void update(void Function(ChallengeResponseTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChallengeResponseType build() => _build();

  _$ChallengeResponseType _build() {
    final _$result = _$v ??
        new _$ChallengeResponseType._(
            challengeName: challengeName, challengeResponse: challengeResponse);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
