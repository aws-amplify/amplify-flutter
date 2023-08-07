// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_software_token_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifySoftwareTokenResponse extends VerifySoftwareTokenResponse {
  @override
  final VerifySoftwareTokenResponseType? status;
  @override
  final String? session;

  factory _$VerifySoftwareTokenResponse(
          [void Function(VerifySoftwareTokenResponseBuilder)? updates]) =>
      (new VerifySoftwareTokenResponseBuilder()..update(updates))._build();

  _$VerifySoftwareTokenResponse._({this.status, this.session}) : super._();

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
        status == other.status &&
        session == other.session;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, session.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VerifySoftwareTokenResponseBuilder
    implements
        Builder<VerifySoftwareTokenResponse,
            VerifySoftwareTokenResponseBuilder> {
  _$VerifySoftwareTokenResponse? _$v;

  VerifySoftwareTokenResponseType? _status;
  VerifySoftwareTokenResponseType? get status => _$this._status;
  set status(VerifySoftwareTokenResponseType? status) =>
      _$this._status = status;

  String? _session;
  String? get session => _$this._session;
  set session(String? session) => _$this._session = session;

  VerifySoftwareTokenResponseBuilder();

  VerifySoftwareTokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _session = $v.session;
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
        new _$VerifySoftwareTokenResponse._(status: status, session: session);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
