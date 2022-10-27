// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.execute_transaction_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExecuteTransactionOutput extends ExecuteTransactionOutput {
  @override
  final _i4.BuiltList<_i2.ConsumedCapacity>? consumedCapacity;
  @override
  final _i4.BuiltList<_i3.ItemResponse>? responses;

  factory _$ExecuteTransactionOutput(
          [void Function(ExecuteTransactionOutputBuilder)? updates]) =>
      (new ExecuteTransactionOutputBuilder()..update(updates))._build();

  _$ExecuteTransactionOutput._({this.consumedCapacity, this.responses})
      : super._();

  @override
  ExecuteTransactionOutput rebuild(
          void Function(ExecuteTransactionOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExecuteTransactionOutputBuilder toBuilder() =>
      new ExecuteTransactionOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExecuteTransactionOutput &&
        consumedCapacity == other.consumedCapacity &&
        responses == other.responses;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, consumedCapacity.hashCode), responses.hashCode));
  }
}

class ExecuteTransactionOutputBuilder
    implements
        Builder<ExecuteTransactionOutput, ExecuteTransactionOutputBuilder> {
  _$ExecuteTransactionOutput? _$v;

  _i4.ListBuilder<_i2.ConsumedCapacity>? _consumedCapacity;
  _i4.ListBuilder<_i2.ConsumedCapacity> get consumedCapacity =>
      _$this._consumedCapacity ??= new _i4.ListBuilder<_i2.ConsumedCapacity>();
  set consumedCapacity(
          _i4.ListBuilder<_i2.ConsumedCapacity>? consumedCapacity) =>
      _$this._consumedCapacity = consumedCapacity;

  _i4.ListBuilder<_i3.ItemResponse>? _responses;
  _i4.ListBuilder<_i3.ItemResponse> get responses =>
      _$this._responses ??= new _i4.ListBuilder<_i3.ItemResponse>();
  set responses(_i4.ListBuilder<_i3.ItemResponse>? responses) =>
      _$this._responses = responses;

  ExecuteTransactionOutputBuilder() {
    ExecuteTransactionOutput._init(this);
  }

  ExecuteTransactionOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _consumedCapacity = $v.consumedCapacity?.toBuilder();
      _responses = $v.responses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExecuteTransactionOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExecuteTransactionOutput;
  }

  @override
  void update(void Function(ExecuteTransactionOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExecuteTransactionOutput build() => _build();

  _$ExecuteTransactionOutput _build() {
    _$ExecuteTransactionOutput _$result;
    try {
      _$result = _$v ??
          new _$ExecuteTransactionOutput._(
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
            r'ExecuteTransactionOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
