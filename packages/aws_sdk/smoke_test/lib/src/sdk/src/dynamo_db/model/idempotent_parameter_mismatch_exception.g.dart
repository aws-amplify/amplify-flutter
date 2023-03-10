// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.idempotent_parameter_mismatch_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IdempotentParameterMismatchException
    extends IdempotentParameterMismatchException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$IdempotentParameterMismatchException(
          [void Function(IdempotentParameterMismatchExceptionBuilder)?
              updates]) =>
      (new IdempotentParameterMismatchExceptionBuilder()..update(updates))
          ._build();

  _$IdempotentParameterMismatchException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  IdempotentParameterMismatchException rebuild(
          void Function(IdempotentParameterMismatchExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdempotentParameterMismatchExceptionBuilder toBuilder() =>
      new IdempotentParameterMismatchExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdempotentParameterMismatchException &&
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

class IdempotentParameterMismatchExceptionBuilder
    implements
        Builder<IdempotentParameterMismatchException,
            IdempotentParameterMismatchExceptionBuilder> {
  _$IdempotentParameterMismatchException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  IdempotentParameterMismatchExceptionBuilder() {
    IdempotentParameterMismatchException._init(this);
  }

  IdempotentParameterMismatchExceptionBuilder get _$this {
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
  void replace(IdempotentParameterMismatchException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdempotentParameterMismatchException;
  }

  @override
  void update(
      void Function(IdempotentParameterMismatchExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IdempotentParameterMismatchException build() => _build();

  _$IdempotentParameterMismatchException _build() {
    final _$result = _$v ??
        new _$IdempotentParameterMismatchException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
