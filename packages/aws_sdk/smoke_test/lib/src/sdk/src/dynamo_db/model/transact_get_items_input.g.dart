// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.transact_get_items_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactGetItemsInput extends TransactGetItemsInput {
  @override
  final _i3.ReturnConsumedCapacity? returnConsumedCapacity;
  @override
  final _i5.BuiltList<_i4.TransactGetItem> transactItems;

  factory _$TransactGetItemsInput(
          [void Function(TransactGetItemsInputBuilder)? updates]) =>
      (new TransactGetItemsInputBuilder()..update(updates))._build();

  _$TransactGetItemsInput._(
      {this.returnConsumedCapacity, required this.transactItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        transactItems, r'TransactGetItemsInput', 'transactItems');
  }

  @override
  TransactGetItemsInput rebuild(
          void Function(TransactGetItemsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactGetItemsInputBuilder toBuilder() =>
      new TransactGetItemsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactGetItemsInput &&
        returnConsumedCapacity == other.returnConsumedCapacity &&
        transactItems == other.transactItems;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, returnConsumedCapacity.hashCode), transactItems.hashCode));
  }
}

class TransactGetItemsInputBuilder
    implements Builder<TransactGetItemsInput, TransactGetItemsInputBuilder> {
  _$TransactGetItemsInput? _$v;

  _i3.ReturnConsumedCapacity? _returnConsumedCapacity;
  _i3.ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(
          _i3.ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

  _i5.ListBuilder<_i4.TransactGetItem>? _transactItems;
  _i5.ListBuilder<_i4.TransactGetItem> get transactItems =>
      _$this._transactItems ??= new _i5.ListBuilder<_i4.TransactGetItem>();
  set transactItems(_i5.ListBuilder<_i4.TransactGetItem>? transactItems) =>
      _$this._transactItems = transactItems;

  TransactGetItemsInputBuilder() {
    TransactGetItemsInput._init(this);
  }

  TransactGetItemsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _returnConsumedCapacity = $v.returnConsumedCapacity;
      _transactItems = $v.transactItems.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactGetItemsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactGetItemsInput;
  }

  @override
  void update(void Function(TransactGetItemsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactGetItemsInput build() => _build();

  _$TransactGetItemsInput _build() {
    _$TransactGetItemsInput _$result;
    try {
      _$result = _$v ??
          new _$TransactGetItemsInput._(
              returnConsumedCapacity: returnConsumedCapacity,
              transactItems: transactItems.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transactItems';
        transactItems.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransactGetItemsInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
