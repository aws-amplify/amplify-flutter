// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.invalid_export_time_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidExportTimeException extends InvalidExportTimeException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$InvalidExportTimeException(
          [void Function(InvalidExportTimeExceptionBuilder)? updates]) =>
      (new InvalidExportTimeExceptionBuilder()..update(updates))._build();

  _$InvalidExportTimeException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  InvalidExportTimeException rebuild(
          void Function(InvalidExportTimeExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidExportTimeExceptionBuilder toBuilder() =>
      new InvalidExportTimeExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidExportTimeException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidExportTimeExceptionBuilder
    implements
        Builder<InvalidExportTimeException, InvalidExportTimeExceptionBuilder> {
  _$InvalidExportTimeException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidExportTimeExceptionBuilder() {
    InvalidExportTimeException._init(this);
  }

  InvalidExportTimeExceptionBuilder get _$this {
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
  void replace(InvalidExportTimeException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidExportTimeException;
  }

  @override
  void update(void Function(InvalidExportTimeExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidExportTimeException build() => _build();

  _$InvalidExportTimeException _build() {
    final _$result = _$v ??
        new _$InvalidExportTimeException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
