// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.batch_statement_error;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchStatementError extends BatchStatementError {
  @override
  final _i2.BatchStatementErrorCodeEnum? code;
  @override
  final String? message;

  factory _$BatchStatementError(
          [void Function(BatchStatementErrorBuilder)? updates]) =>
      (new BatchStatementErrorBuilder()..update(updates))._build();

  _$BatchStatementError._({this.code, this.message}) : super._();

  @override
  BatchStatementError rebuild(
          void Function(BatchStatementErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchStatementErrorBuilder toBuilder() =>
      new BatchStatementErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchStatementError &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BatchStatementErrorBuilder
    implements Builder<BatchStatementError, BatchStatementErrorBuilder> {
  _$BatchStatementError? _$v;

  _i2.BatchStatementErrorCodeEnum? _code;
  _i2.BatchStatementErrorCodeEnum? get code => _$this._code;
  set code(_i2.BatchStatementErrorCodeEnum? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  BatchStatementErrorBuilder() {
    BatchStatementError._init(this);
  }

  BatchStatementErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchStatementError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchStatementError;
  }

  @override
  void update(void Function(BatchStatementErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchStatementError build() => _build();

  _$BatchStatementError _build() {
    final _$result =
        _$v ?? new _$BatchStatementError._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
