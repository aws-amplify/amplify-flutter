// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.table_in_use_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TableInUseException extends TableInUseException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$TableInUseException(
          [void Function(TableInUseExceptionBuilder)? updates]) =>
      (new TableInUseExceptionBuilder()..update(updates))._build();

  _$TableInUseException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  TableInUseException rebuild(
          void Function(TableInUseExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TableInUseExceptionBuilder toBuilder() =>
      new TableInUseExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TableInUseException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TableInUseExceptionBuilder
    implements Builder<TableInUseException, TableInUseExceptionBuilder> {
  _$TableInUseException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  TableInUseExceptionBuilder() {
    TableInUseException._init(this);
  }

  TableInUseExceptionBuilder get _$this {
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
  void replace(TableInUseException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TableInUseException;
  }

  @override
  void update(void Function(TableInUseExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TableInUseException build() => _build();

  _$TableInUseException _build() {
    final _$result = _$v ??
        new _$TableInUseException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
