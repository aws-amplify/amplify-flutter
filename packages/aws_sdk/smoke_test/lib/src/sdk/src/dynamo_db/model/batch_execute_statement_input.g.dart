// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_execute_statement_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchExecuteStatementInput extends BatchExecuteStatementInput {
  @override
  final _i3.BuiltList<BatchStatementRequest> statements;
  @override
  final ReturnConsumedCapacity? returnConsumedCapacity;

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

  _i3.ListBuilder<BatchStatementRequest>? _statements;
  _i3.ListBuilder<BatchStatementRequest> get statements =>
      _$this._statements ??= new _i3.ListBuilder<BatchStatementRequest>();
  set statements(_i3.ListBuilder<BatchStatementRequest>? statements) =>
      _$this._statements = statements;

  ReturnConsumedCapacity? _returnConsumedCapacity;
  ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

  BatchExecuteStatementInputBuilder();

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
