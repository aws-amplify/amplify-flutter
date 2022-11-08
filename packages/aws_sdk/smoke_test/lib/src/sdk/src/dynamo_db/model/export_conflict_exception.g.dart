// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.export_conflict_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportConflictException extends ExportConflictException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ExportConflictException(
          [void Function(ExportConflictExceptionBuilder)? updates]) =>
      (new ExportConflictExceptionBuilder()..update(updates))._build();

  _$ExportConflictException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  ExportConflictException rebuild(
          void Function(ExportConflictExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportConflictExceptionBuilder toBuilder() =>
      new ExportConflictExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportConflictException && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }
}

class ExportConflictExceptionBuilder
    implements
        Builder<ExportConflictException, ExportConflictExceptionBuilder> {
  _$ExportConflictException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ExportConflictExceptionBuilder() {
    ExportConflictException._init(this);
  }

  ExportConflictExceptionBuilder get _$this {
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
  void replace(ExportConflictException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportConflictException;
  }

  @override
  void update(void Function(ExportConflictExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportConflictException build() => _build();

  _$ExportConflictException _build() {
    final _$result = _$v ??
        new _$ExportConflictException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
