// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.invalid_limit_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidLimitException extends InvalidLimitException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$InvalidLimitException(
          [void Function(InvalidLimitExceptionBuilder)? updates]) =>
      (new InvalidLimitExceptionBuilder()..update(updates))._build();

  _$InvalidLimitException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  InvalidLimitException rebuild(
          void Function(InvalidLimitExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidLimitExceptionBuilder toBuilder() =>
      new InvalidLimitExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidLimitException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidLimitExceptionBuilder
    implements Builder<InvalidLimitException, InvalidLimitExceptionBuilder> {
  _$InvalidLimitException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidLimitExceptionBuilder() {
    InvalidLimitException._init(this);
  }

  InvalidLimitExceptionBuilder get _$this {
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
  void replace(InvalidLimitException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidLimitException;
  }

  @override
  void update(void Function(InvalidLimitExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidLimitException build() => _build();

  _$InvalidLimitException _build() {
    final _$result = _$v ??
        new _$InvalidLimitException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
