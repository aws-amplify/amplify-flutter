// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db_streams.model.trimmed_data_access_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrimmedDataAccessException extends TrimmedDataAccessException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$TrimmedDataAccessException(
          [void Function(TrimmedDataAccessExceptionBuilder)? updates]) =>
      (new TrimmedDataAccessExceptionBuilder()..update(updates))._build();

  _$TrimmedDataAccessException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  TrimmedDataAccessException rebuild(
          void Function(TrimmedDataAccessExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrimmedDataAccessExceptionBuilder toBuilder() =>
      new TrimmedDataAccessExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrimmedDataAccessException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TrimmedDataAccessExceptionBuilder
    implements
        Builder<TrimmedDataAccessException, TrimmedDataAccessExceptionBuilder> {
  _$TrimmedDataAccessException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  TrimmedDataAccessExceptionBuilder() {
    TrimmedDataAccessException._init(this);
  }

  TrimmedDataAccessExceptionBuilder get _$this {
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
  void replace(TrimmedDataAccessException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrimmedDataAccessException;
  }

  @override
  void update(void Function(TrimmedDataAccessExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrimmedDataAccessException build() => _build();

  _$TrimmedDataAccessException _build() {
    final _$result = _$v ??
        new _$TrimmedDataAccessException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
