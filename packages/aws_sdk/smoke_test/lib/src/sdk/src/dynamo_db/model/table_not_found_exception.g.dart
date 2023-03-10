// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.table_not_found_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TableNotFoundException extends TableNotFoundException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$TableNotFoundException(
          [void Function(TableNotFoundExceptionBuilder)? updates]) =>
      (new TableNotFoundExceptionBuilder()..update(updates))._build();

  _$TableNotFoundException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  TableNotFoundException rebuild(
          void Function(TableNotFoundExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TableNotFoundExceptionBuilder toBuilder() =>
      new TableNotFoundExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TableNotFoundException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TableNotFoundExceptionBuilder
    implements Builder<TableNotFoundException, TableNotFoundExceptionBuilder> {
  _$TableNotFoundException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  TableNotFoundExceptionBuilder() {
    TableNotFoundException._init(this);
  }

  TableNotFoundExceptionBuilder get _$this {
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
  void replace(TableNotFoundException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TableNotFoundException;
  }

  @override
  void update(void Function(TableNotFoundExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TableNotFoundException build() => _build();

  _$TableNotFoundException _build() {
    final _$result = _$v ??
        new _$TableNotFoundException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
