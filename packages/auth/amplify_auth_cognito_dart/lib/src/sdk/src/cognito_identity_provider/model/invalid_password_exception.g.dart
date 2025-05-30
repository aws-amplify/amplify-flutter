// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_password_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidPasswordException extends InvalidPasswordException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$InvalidPasswordException([
    void Function(InvalidPasswordExceptionBuilder)? updates,
  ]) => (InvalidPasswordExceptionBuilder()..update(updates))._build();

  _$InvalidPasswordException._({this.message, this.headers}) : super._();
  @override
  InvalidPasswordException rebuild(
    void Function(InvalidPasswordExceptionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InvalidPasswordExceptionBuilder toBuilder() =>
      InvalidPasswordExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidPasswordException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidPasswordExceptionBuilder
    implements
        Builder<InvalidPasswordException, InvalidPasswordExceptionBuilder> {
  _$InvalidPasswordException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidPasswordExceptionBuilder();

  InvalidPasswordExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidPasswordException other) {
    _$v = other as _$InvalidPasswordException;
  }

  @override
  void update(void Function(InvalidPasswordExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidPasswordException build() => _build();

  _$InvalidPasswordException _build() {
    final _$result =
        _$v ?? _$InvalidPasswordException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
