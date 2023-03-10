// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.verify_software_token_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifySoftwareTokenResponse extends VerifySoftwareTokenResponse {
  @override
  final String? session;
  @override
  final _i2.VerifySoftwareTokenResponseType? status;

  factory _$VerifySoftwareTokenResponse(
          [void Function(VerifySoftwareTokenResponseBuilder)? updates]) =>
      (new VerifySoftwareTokenResponseBuilder()..update(updates))._build();

  _$VerifySoftwareTokenResponse._({this.session, this.status}) : super._();

  @override
  VerifySoftwareTokenResponse rebuild(
          void Function(VerifySoftwareTokenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifySoftwareTokenResponseBuilder toBuilder() =>
      new VerifySoftwareTokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifySoftwareTokenResponse &&
        session == other.session &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, session.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VerifySoftwareTokenResponseBuilder
    implements
        Builder<VerifySoftwareTokenResponse,
            VerifySoftwareTokenResponseBuilder> {
  _$VerifySoftwareTokenResponse? _$v;

  String? _session;
  String? get session => _$this._session;
  set session(String? session) => _$this._session = session;

  _i2.VerifySoftwareTokenResponseType? _status;
  _i2.VerifySoftwareTokenResponseType? get status => _$this._status;
  set status(_i2.VerifySoftwareTokenResponseType? status) =>
      _$this._status = status;

  VerifySoftwareTokenResponseBuilder() {
    VerifySoftwareTokenResponse._init(this);
  }

  VerifySoftwareTokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _session = $v.session;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifySoftwareTokenResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifySoftwareTokenResponse;
  }

  @override
  void update(void Function(VerifySoftwareTokenResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifySoftwareTokenResponse build() => _build();

  _$VerifySoftwareTokenResponse _build() {
    final _$result = _$v ??
        new _$VerifySoftwareTokenResponse._(session: session, status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
