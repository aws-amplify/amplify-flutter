// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_auth_challenge_code_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResendAuthChallengeCodeResponse
    extends ResendAuthChallengeCodeResponse {
  @override
  final String? session;
  @override
  final _i2.CodeDeliveryDetailsType? codeDeliveryDetails;

  factory _$ResendAuthChallengeCodeResponse(
          [void Function(ResendAuthChallengeCodeResponseBuilder)? updates]) =>
      (new ResendAuthChallengeCodeResponseBuilder()..update(updates))._build();

  _$ResendAuthChallengeCodeResponse._({this.session, this.codeDeliveryDetails})
      : super._();

  @override
  ResendAuthChallengeCodeResponse rebuild(
          void Function(ResendAuthChallengeCodeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResendAuthChallengeCodeResponseBuilder toBuilder() =>
      new ResendAuthChallengeCodeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResendAuthChallengeCodeResponse &&
        session == other.session &&
        codeDeliveryDetails == other.codeDeliveryDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, session.hashCode);
    _$hash = $jc(_$hash, codeDeliveryDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResendAuthChallengeCodeResponseBuilder
    implements
        Builder<ResendAuthChallengeCodeResponse,
            ResendAuthChallengeCodeResponseBuilder> {
  _$ResendAuthChallengeCodeResponse? _$v;

  String? _session;
  String? get session => _$this._session;
  set session(String? session) => _$this._session = session;

  _i2.CodeDeliveryDetailsTypeBuilder? _codeDeliveryDetails;
  _i2.CodeDeliveryDetailsTypeBuilder get codeDeliveryDetails =>
      _$this._codeDeliveryDetails ??= new _i2.CodeDeliveryDetailsTypeBuilder();
  set codeDeliveryDetails(
          _i2.CodeDeliveryDetailsTypeBuilder? codeDeliveryDetails) =>
      _$this._codeDeliveryDetails = codeDeliveryDetails;

  ResendAuthChallengeCodeResponseBuilder() {
    ResendAuthChallengeCodeResponse._init(this);
  }

  ResendAuthChallengeCodeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _session = $v.session;
      _codeDeliveryDetails = $v.codeDeliveryDetails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResendAuthChallengeCodeResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResendAuthChallengeCodeResponse;
  }

  @override
  void update(void Function(ResendAuthChallengeCodeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResendAuthChallengeCodeResponse build() => _build();

  _$ResendAuthChallengeCodeResponse _build() {
    _$ResendAuthChallengeCodeResponse _$result;
    try {
      _$result = _$v ??
          new _$ResendAuthChallengeCodeResponse._(
              session: session,
              codeDeliveryDetails: _codeDeliveryDetails?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'codeDeliveryDetails';
        _codeDeliveryDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ResendAuthChallengeCodeResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
