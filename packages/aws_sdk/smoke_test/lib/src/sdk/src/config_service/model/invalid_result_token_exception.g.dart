// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.invalid_result_token_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidResultTokenException extends InvalidResultTokenException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$InvalidResultTokenException(
          [void Function(InvalidResultTokenExceptionBuilder)? updates]) =>
      (new InvalidResultTokenExceptionBuilder()..update(updates))._build();

  _$InvalidResultTokenException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  InvalidResultTokenException rebuild(
          void Function(InvalidResultTokenExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidResultTokenExceptionBuilder toBuilder() =>
      new InvalidResultTokenExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidResultTokenException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidResultTokenExceptionBuilder
    implements
        Builder<InvalidResultTokenException,
            InvalidResultTokenExceptionBuilder> {
  _$InvalidResultTokenException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidResultTokenExceptionBuilder() {
    InvalidResultTokenException._init(this);
  }

  InvalidResultTokenExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidResultTokenException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidResultTokenException;
  }

  @override
  void update(void Function(InvalidResultTokenExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidResultTokenException build() => _build();

  _$InvalidResultTokenException _build() {
    final _$result = _$v ??
        new _$InvalidResultTokenException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
