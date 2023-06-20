// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_parameter_value_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidParameterValueException extends InvalidParameterValueException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$InvalidParameterValueException(
          [void Function(InvalidParameterValueExceptionBuilder)? updates]) =>
      (new InvalidParameterValueExceptionBuilder()..update(updates))._build();

  _$InvalidParameterValueException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  InvalidParameterValueException rebuild(
          void Function(InvalidParameterValueExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidParameterValueExceptionBuilder toBuilder() =>
      new InvalidParameterValueExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidParameterValueException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidParameterValueExceptionBuilder
    implements
        Builder<InvalidParameterValueException,
            InvalidParameterValueExceptionBuilder> {
  _$InvalidParameterValueException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidParameterValueExceptionBuilder() {
    InvalidParameterValueException._init(this);
  }

  InvalidParameterValueExceptionBuilder get _$this {
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
  void replace(InvalidParameterValueException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidParameterValueException;
  }

  @override
  void update(void Function(InvalidParameterValueExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidParameterValueException build() => _build();

  _$InvalidParameterValueException _build() {
    final _$result = _$v ??
        new _$InvalidParameterValueException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
