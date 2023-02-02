// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.invalid_time_range_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidTimeRangeException extends InvalidTimeRangeException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$InvalidTimeRangeException(
          [void Function(InvalidTimeRangeExceptionBuilder)? updates]) =>
      (new InvalidTimeRangeExceptionBuilder()..update(updates))._build();

  _$InvalidTimeRangeException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  InvalidTimeRangeException rebuild(
          void Function(InvalidTimeRangeExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidTimeRangeExceptionBuilder toBuilder() =>
      new InvalidTimeRangeExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidTimeRangeException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidTimeRangeExceptionBuilder
    implements
        Builder<InvalidTimeRangeException, InvalidTimeRangeExceptionBuilder> {
  _$InvalidTimeRangeException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidTimeRangeExceptionBuilder() {
    InvalidTimeRangeException._init(this);
  }

  InvalidTimeRangeExceptionBuilder get _$this {
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
  void replace(InvalidTimeRangeException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidTimeRangeException;
  }

  @override
  void update(void Function(InvalidTimeRangeExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidTimeRangeException build() => _build();

  _$InvalidTimeRangeException _build() {
    final _$result = _$v ??
        new _$InvalidTimeRangeException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
