// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.global_table_not_found_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlobalTableNotFoundException extends GlobalTableNotFoundException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$GlobalTableNotFoundException(
          [void Function(GlobalTableNotFoundExceptionBuilder)? updates]) =>
      (new GlobalTableNotFoundExceptionBuilder()..update(updates))._build();

  _$GlobalTableNotFoundException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  GlobalTableNotFoundException rebuild(
          void Function(GlobalTableNotFoundExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlobalTableNotFoundExceptionBuilder toBuilder() =>
      new GlobalTableNotFoundExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlobalTableNotFoundException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GlobalTableNotFoundExceptionBuilder
    implements
        Builder<GlobalTableNotFoundException,
            GlobalTableNotFoundExceptionBuilder> {
  _$GlobalTableNotFoundException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  GlobalTableNotFoundExceptionBuilder() {
    GlobalTableNotFoundException._init(this);
  }

  GlobalTableNotFoundExceptionBuilder get _$this {
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
  void replace(GlobalTableNotFoundException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlobalTableNotFoundException;
  }

  @override
  void update(void Function(GlobalTableNotFoundExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlobalTableNotFoundException build() => _build();

  _$GlobalTableNotFoundException _build() {
    final _$result = _$v ??
        new _$GlobalTableNotFoundException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
