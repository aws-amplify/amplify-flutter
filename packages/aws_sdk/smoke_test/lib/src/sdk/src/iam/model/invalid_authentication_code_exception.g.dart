// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_authentication_code_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidAuthenticationCodeException
    extends InvalidAuthenticationCodeException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$InvalidAuthenticationCodeException(
          [void Function(InvalidAuthenticationCodeExceptionBuilder)?
              updates]) =>
      (new InvalidAuthenticationCodeExceptionBuilder()..update(updates))
          ._build();

  _$InvalidAuthenticationCodeException._({this.message, this.headers})
      : super._();

  @override
  InvalidAuthenticationCodeException rebuild(
          void Function(InvalidAuthenticationCodeExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidAuthenticationCodeExceptionBuilder toBuilder() =>
      new InvalidAuthenticationCodeExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidAuthenticationCodeException &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidAuthenticationCodeExceptionBuilder
    implements
        Builder<InvalidAuthenticationCodeException,
            InvalidAuthenticationCodeExceptionBuilder> {
  _$InvalidAuthenticationCodeException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidAuthenticationCodeExceptionBuilder();

  InvalidAuthenticationCodeExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidAuthenticationCodeException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidAuthenticationCodeException;
  }

  @override
  void update(
      void Function(InvalidAuthenticationCodeExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidAuthenticationCodeException build() => _build();

  _$InvalidAuthenticationCodeException _build() {
    final _$result = _$v ??
        new _$InvalidAuthenticationCodeException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
