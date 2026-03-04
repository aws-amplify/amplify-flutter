// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_source_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidSourceException extends InvalidSourceException {
  @override
  final String? code;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$InvalidSourceException(
          [void Function(InvalidSourceExceptionBuilder)? updates]) =>
      (InvalidSourceExceptionBuilder()..update(updates))._build();

  _$InvalidSourceException._(
      {this.code, this.message, this.statusCode, this.headers})
      : super._();
  @override
  InvalidSourceException rebuild(
          void Function(InvalidSourceExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidSourceExceptionBuilder toBuilder() =>
      InvalidSourceExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidSourceException &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidSourceExceptionBuilder
    implements Builder<InvalidSourceException, InvalidSourceExceptionBuilder> {
  _$InvalidSourceException? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidSourceExceptionBuilder();

  InvalidSourceExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidSourceException other) {
    _$v = other as _$InvalidSourceException;
  }

  @override
  void update(void Function(InvalidSourceExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidSourceException build() => _build();

  _$InvalidSourceException _build() {
    final _$result = _$v ??
        _$InvalidSourceException._(
          code: code,
          message: message,
          statusCode: statusCode,
          headers: headers,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
