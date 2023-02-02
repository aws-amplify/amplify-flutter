// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.invalid_expression_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidExpressionException extends InvalidExpressionException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$InvalidExpressionException(
          [void Function(InvalidExpressionExceptionBuilder)? updates]) =>
      (new InvalidExpressionExceptionBuilder()..update(updates))._build();

  _$InvalidExpressionException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  InvalidExpressionException rebuild(
          void Function(InvalidExpressionExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidExpressionExceptionBuilder toBuilder() =>
      new InvalidExpressionExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidExpressionException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidExpressionExceptionBuilder
    implements
        Builder<InvalidExpressionException, InvalidExpressionExceptionBuilder> {
  _$InvalidExpressionException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidExpressionExceptionBuilder() {
    InvalidExpressionException._init(this);
  }

  InvalidExpressionExceptionBuilder get _$this {
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
  void replace(InvalidExpressionException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidExpressionException;
  }

  @override
  void update(void Function(InvalidExpressionExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidExpressionException build() => _build();

  _$InvalidExpressionException _build() {
    final _$result = _$v ??
        new _$InvalidExpressionException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
