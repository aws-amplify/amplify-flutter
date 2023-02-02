// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.invalid_restore_time_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidRestoreTimeException extends InvalidRestoreTimeException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$InvalidRestoreTimeException(
          [void Function(InvalidRestoreTimeExceptionBuilder)? updates]) =>
      (new InvalidRestoreTimeExceptionBuilder()..update(updates))._build();

  _$InvalidRestoreTimeException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  InvalidRestoreTimeException rebuild(
          void Function(InvalidRestoreTimeExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidRestoreTimeExceptionBuilder toBuilder() =>
      new InvalidRestoreTimeExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidRestoreTimeException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidRestoreTimeExceptionBuilder
    implements
        Builder<InvalidRestoreTimeException,
            InvalidRestoreTimeExceptionBuilder> {
  _$InvalidRestoreTimeException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidRestoreTimeExceptionBuilder() {
    InvalidRestoreTimeException._init(this);
  }

  InvalidRestoreTimeExceptionBuilder get _$this {
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
  void replace(InvalidRestoreTimeException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidRestoreTimeException;
  }

  @override
  void update(void Function(InvalidRestoreTimeExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidRestoreTimeException build() => _build();

  _$InvalidRestoreTimeException _build() {
    final _$result = _$v ??
        new _$InvalidRestoreTimeException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
