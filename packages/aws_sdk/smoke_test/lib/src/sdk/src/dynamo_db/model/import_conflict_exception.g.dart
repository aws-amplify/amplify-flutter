// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.import_conflict_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportConflictException extends ImportConflictException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ImportConflictException(
          [void Function(ImportConflictExceptionBuilder)? updates]) =>
      (new ImportConflictExceptionBuilder()..update(updates))._build();

  _$ImportConflictException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  ImportConflictException rebuild(
          void Function(ImportConflictExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportConflictExceptionBuilder toBuilder() =>
      new ImportConflictExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportConflictException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportConflictExceptionBuilder
    implements
        Builder<ImportConflictException, ImportConflictExceptionBuilder> {
  _$ImportConflictException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ImportConflictExceptionBuilder() {
    ImportConflictException._init(this);
  }

  ImportConflictExceptionBuilder get _$this {
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
  void replace(ImportConflictException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportConflictException;
  }

  @override
  void update(void Function(ImportConflictExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportConflictException build() => _build();

  _$ImportConflictException _build() {
    final _$result = _$v ??
        new _$ImportConflictException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
