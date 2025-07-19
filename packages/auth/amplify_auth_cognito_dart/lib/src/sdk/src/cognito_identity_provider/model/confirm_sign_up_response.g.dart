// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_sign_up_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfirmSignUpResponse extends ConfirmSignUpResponse {
  @override
  final String? session;

  factory _$ConfirmSignUpResponse([
    void Function(ConfirmSignUpResponseBuilder)? updates,
  ]) => (ConfirmSignUpResponseBuilder()..update(updates))._build();

  _$ConfirmSignUpResponse._({this.session}) : super._();
  @override
  ConfirmSignUpResponse rebuild(
    void Function(ConfirmSignUpResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ConfirmSignUpResponseBuilder toBuilder() =>
      ConfirmSignUpResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfirmSignUpResponse && session == other.session;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, session.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConfirmSignUpResponseBuilder
    implements Builder<ConfirmSignUpResponse, ConfirmSignUpResponseBuilder> {
  _$ConfirmSignUpResponse? _$v;

  String? _session;
  String? get session => _$this._session;
  set session(String? session) => _$this._session = session;

  ConfirmSignUpResponseBuilder();

  ConfirmSignUpResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _session = $v.session;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfirmSignUpResponse other) {
    _$v = other as _$ConfirmSignUpResponse;
  }

  @override
  void update(void Function(ConfirmSignUpResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfirmSignUpResponse build() => _build();

  _$ConfirmSignUpResponse _build() {
    final _$result = _$v ?? _$ConfirmSignUpResponse._(session: session);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
