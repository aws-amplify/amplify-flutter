// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.transaction_conflict_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactionConflictException extends TransactionConflictException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$TransactionConflictException(
          [void Function(TransactionConflictExceptionBuilder)? updates]) =>
      (new TransactionConflictExceptionBuilder()..update(updates))._build();

  _$TransactionConflictException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  TransactionConflictException rebuild(
          void Function(TransactionConflictExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionConflictExceptionBuilder toBuilder() =>
      new TransactionConflictExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionConflictException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransactionConflictExceptionBuilder
    implements
        Builder<TransactionConflictException,
            TransactionConflictExceptionBuilder> {
  _$TransactionConflictException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  TransactionConflictExceptionBuilder() {
    TransactionConflictException._init(this);
  }

  TransactionConflictExceptionBuilder get _$this {
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
  void replace(TransactionConflictException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionConflictException;
  }

  @override
  void update(void Function(TransactionConflictExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionConflictException build() => _build();

  _$TransactionConflictException _build() {
    final _$result = _$v ??
        new _$TransactionConflictException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
