// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.transact_get_items_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactGetItemsInput extends TransactGetItemsInput {
  @override
  final _i5.BuiltList<_i3.TransactGetItem> transactItems;
  @override
  final _i4.ReturnConsumedCapacity? returnConsumedCapacity;

  factory _$TransactGetItemsInput(
          [void Function(TransactGetItemsInputBuilder)? updates]) =>
      (new TransactGetItemsInputBuilder()..update(updates))._build();

  _$TransactGetItemsInput._(
      {required this.transactItems, this.returnConsumedCapacity})
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
        transactItems == other.transactItems &&
        returnConsumedCapacity == other.returnConsumedCapacity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transactItems.hashCode);
    _$hash = $jc(_$hash, returnConsumedCapacity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransactGetItemsInputBuilder
    implements Builder<TransactGetItemsInput, TransactGetItemsInputBuilder> {
  _$TransactGetItemsInput? _$v;

  _i5.ListBuilder<_i3.TransactGetItem>? _transactItems;
  _i5.ListBuilder<_i3.TransactGetItem> get transactItems =>
      _$this._transactItems ??= new _i5.ListBuilder<_i3.TransactGetItem>();
  set transactItems(_i5.ListBuilder<_i3.TransactGetItem>? transactItems) =>
      _$this._transactItems = transactItems;

  _i4.ReturnConsumedCapacity? _returnConsumedCapacity;
  _i4.ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(
          _i4.ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

  TransactGetItemsInputBuilder() {
    TransactGetItemsInput._init(this);
  }

  TransactGetItemsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactItems = $v.transactItems.toBuilder();
      _returnConsumedCapacity = $v.returnConsumedCapacity;
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
              transactItems: transactItems.build(),
              returnConsumedCapacity: returnConsumedCapacity);
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
