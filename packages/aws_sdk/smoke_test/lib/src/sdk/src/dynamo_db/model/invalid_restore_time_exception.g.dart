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
    return $jf($jc(0, message.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
