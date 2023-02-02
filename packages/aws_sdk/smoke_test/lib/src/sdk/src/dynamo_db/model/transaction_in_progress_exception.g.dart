// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.transaction_in_progress_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactionInProgressException extends TransactionInProgressException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$TransactionInProgressException(
          [void Function(TransactionInProgressExceptionBuilder)? updates]) =>
      (new TransactionInProgressExceptionBuilder()..update(updates))._build();

  _$TransactionInProgressException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  TransactionInProgressException rebuild(
          void Function(TransactionInProgressExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionInProgressExceptionBuilder toBuilder() =>
      new TransactionInProgressExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionInProgressException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransactionInProgressExceptionBuilder
    implements
        Builder<TransactionInProgressException,
            TransactionInProgressExceptionBuilder> {
  _$TransactionInProgressException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  TransactionInProgressExceptionBuilder() {
    TransactionInProgressException._init(this);
  }

  TransactionInProgressExceptionBuilder get _$this {
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
  void replace(TransactionInProgressException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionInProgressException;
  }

  @override
  void update(void Function(TransactionInProgressExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionInProgressException build() => _build();

  _$TransactionInProgressException _build() {
    final _$result = _$v ??
        new _$TransactionInProgressException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
