// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.batch_execute_statement_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchExecuteStatementInput extends BatchExecuteStatementInput {
  @override
  final _i5.BuiltList<_i3.BatchStatementRequest> statements;
  @override
  final _i4.ReturnConsumedCapacity? returnConsumedCapacity;

  factory _$BatchExecuteStatementInput(
          [void Function(BatchExecuteStatementInputBuilder)? updates]) =>
      (new BatchExecuteStatementInputBuilder()..update(updates))._build();

  _$BatchExecuteStatementInput._(
      {required this.statements, this.returnConsumedCapacity})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        statements, r'BatchExecuteStatementInput', 'statements');
  }

  @override
  BatchExecuteStatementInput rebuild(
          void Function(BatchExecuteStatementInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchExecuteStatementInputBuilder toBuilder() =>
      new BatchExecuteStatementInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchExecuteStatementInput &&
        statements == other.statements &&
        returnConsumedCapacity == other.returnConsumedCapacity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, statements.hashCode);
    _$hash = $jc(_$hash, returnConsumedCapacity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BatchExecuteStatementInputBuilder
    implements
        Builder<BatchExecuteStatementInput, BatchExecuteStatementInputBuilder> {
  _$BatchExecuteStatementInput? _$v;

  _i5.ListBuilder<_i3.BatchStatementRequest>? _statements;
  _i5.ListBuilder<_i3.BatchStatementRequest> get statements =>
      _$this._statements ??= new _i5.ListBuilder<_i3.BatchStatementRequest>();
  set statements(_i5.ListBuilder<_i3.BatchStatementRequest>? statements) =>
      _$this._statements = statements;

  _i4.ReturnConsumedCapacity? _returnConsumedCapacity;
  _i4.ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(
          _i4.ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

  BatchExecuteStatementInputBuilder() {
    BatchExecuteStatementInput._init(this);
  }

  BatchExecuteStatementInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statements = $v.statements.toBuilder();
      _returnConsumedCapacity = $v.returnConsumedCapacity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchExecuteStatementInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchExecuteStatementInput;
  }

  @override
  void update(void Function(BatchExecuteStatementInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchExecuteStatementInput build() => _build();

  _$BatchExecuteStatementInput _build() {
    _$BatchExecuteStatementInput _$result;
    try {
      _$result = _$v ??
          new _$BatchExecuteStatementInput._(
              statements: statements.build(),
              returnConsumedCapacity: returnConsumedCapacity);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'statements';
        statements.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchExecuteStatementInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
