// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.global_table_already_exists_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlobalTableAlreadyExistsException
    extends GlobalTableAlreadyExistsException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$GlobalTableAlreadyExistsException(
          [void Function(GlobalTableAlreadyExistsExceptionBuilder)? updates]) =>
      (new GlobalTableAlreadyExistsExceptionBuilder()..update(updates))
          ._build();

  _$GlobalTableAlreadyExistsException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  GlobalTableAlreadyExistsException rebuild(
          void Function(GlobalTableAlreadyExistsExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlobalTableAlreadyExistsExceptionBuilder toBuilder() =>
      new GlobalTableAlreadyExistsExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlobalTableAlreadyExistsException &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GlobalTableAlreadyExistsExceptionBuilder
    implements
        Builder<GlobalTableAlreadyExistsException,
            GlobalTableAlreadyExistsExceptionBuilder> {
  _$GlobalTableAlreadyExistsException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  GlobalTableAlreadyExistsExceptionBuilder() {
    GlobalTableAlreadyExistsException._init(this);
  }

  GlobalTableAlreadyExistsExceptionBuilder get _$this {
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
  void replace(GlobalTableAlreadyExistsException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlobalTableAlreadyExistsException;
  }

  @override
  void update(
      void Function(GlobalTableAlreadyExistsExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlobalTableAlreadyExistsException build() => _build();

  _$GlobalTableAlreadyExistsException _build() {
    final _$result = _$v ??
        new _$GlobalTableAlreadyExistsException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
