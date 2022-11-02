// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.batch_execute_statement_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchExecuteStatementOutput extends BatchExecuteStatementOutput {
  @override
  final _i4.BuiltList<_i2.ConsumedCapacity>? consumedCapacity;
  @override
  final _i4.BuiltList<_i3.BatchStatementResponse>? responses;

  factory _$BatchExecuteStatementOutput(
          [void Function(BatchExecuteStatementOutputBuilder)? updates]) =>
      (new BatchExecuteStatementOutputBuilder()..update(updates))._build();

  _$BatchExecuteStatementOutput._({this.consumedCapacity, this.responses})
      : super._();

  @override
  BatchExecuteStatementOutput rebuild(
          void Function(BatchExecuteStatementOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchExecuteStatementOutputBuilder toBuilder() =>
      new BatchExecuteStatementOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchExecuteStatementOutput &&
        consumedCapacity == other.consumedCapacity &&
        responses == other.responses;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, consumedCapacity.hashCode), responses.hashCode));
  }
}

class BatchExecuteStatementOutputBuilder
    implements
        Builder<BatchExecuteStatementOutput,
            BatchExecuteStatementOutputBuilder> {
  _$BatchExecuteStatementOutput? _$v;

  _i4.ListBuilder<_i2.ConsumedCapacity>? _consumedCapacity;
  _i4.ListBuilder<_i2.ConsumedCapacity> get consumedCapacity =>
      _$this._consumedCapacity ??= new _i4.ListBuilder<_i2.ConsumedCapacity>();
  set consumedCapacity(
          _i4.ListBuilder<_i2.ConsumedCapacity>? consumedCapacity) =>
      _$this._consumedCapacity = consumedCapacity;

  _i4.ListBuilder<_i3.BatchStatementResponse>? _responses;
  _i4.ListBuilder<_i3.BatchStatementResponse> get responses =>
      _$this._responses ??= new _i4.ListBuilder<_i3.BatchStatementResponse>();
  set responses(_i4.ListBuilder<_i3.BatchStatementResponse>? responses) =>
      _$this._responses = responses;

  BatchExecuteStatementOutputBuilder() {
    BatchExecuteStatementOutput._init(this);
  }

  BatchExecuteStatementOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _consumedCapacity = $v.consumedCapacity?.toBuilder();
      _responses = $v.responses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchExecuteStatementOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchExecuteStatementOutput;
  }

  @override
  void update(void Function(BatchExecuteStatementOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchExecuteStatementOutput build() => _build();

  _$BatchExecuteStatementOutput _build() {
    _$BatchExecuteStatementOutput _$result;
    try {
      _$result = _$v ??
          new _$BatchExecuteStatementOutput._(
              consumedCapacity: _consumedCapacity?.build(),
              responses: _responses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'consumedCapacity';
        _consumedCapacity?.build();
        _$failedField = 'responses';
        _responses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchExecuteStatementOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
