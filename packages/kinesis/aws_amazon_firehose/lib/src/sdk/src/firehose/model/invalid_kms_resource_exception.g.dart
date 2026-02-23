// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_kms_resource_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidKmsResourceException extends InvalidKmsResourceException {
  @override
  final String? code;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$InvalidKmsResourceException(
          [void Function(InvalidKmsResourceExceptionBuilder)? updates]) =>
      (InvalidKmsResourceExceptionBuilder()..update(updates))._build();

  _$InvalidKmsResourceException._(
      {this.code, this.message, this.statusCode, this.headers})
      : super._();
  @override
  InvalidKmsResourceException rebuild(
          void Function(InvalidKmsResourceExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidKmsResourceExceptionBuilder toBuilder() =>
      InvalidKmsResourceExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidKmsResourceException &&
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

class InvalidKmsResourceExceptionBuilder
    implements
        Builder<InvalidKmsResourceException,
            InvalidKmsResourceExceptionBuilder> {
  _$InvalidKmsResourceException? _$v;

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

  InvalidKmsResourceExceptionBuilder();

  InvalidKmsResourceExceptionBuilder get _$this {
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
  void replace(InvalidKmsResourceException other) {
    _$v = other as _$InvalidKmsResourceException;
  }

  @override
  void update(void Function(InvalidKmsResourceExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidKmsResourceException build() => _build();

  _$InvalidKmsResourceException _build() {
    final _$result = _$v ??
        _$InvalidKmsResourceException._(
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
