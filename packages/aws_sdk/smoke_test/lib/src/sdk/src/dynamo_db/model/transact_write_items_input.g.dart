// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.transact_write_items_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactWriteItemsInput extends TransactWriteItemsInput {
  @override
  final String? clientRequestToken;
  @override
  final _i3.ReturnConsumedCapacity? returnConsumedCapacity;
  @override
  final _i4.ReturnItemCollectionMetrics? returnItemCollectionMetrics;
  @override
  final _i6.BuiltList<_i5.TransactWriteItem> transactItems;

  factory _$TransactWriteItemsInput(
          [void Function(TransactWriteItemsInputBuilder)? updates]) =>
      (new TransactWriteItemsInputBuilder()..update(updates))._build();

  _$TransactWriteItemsInput._(
      {this.clientRequestToken,
      this.returnConsumedCapacity,
      this.returnItemCollectionMetrics,
      required this.transactItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        transactItems, r'TransactWriteItemsInput', 'transactItems');
  }

  @override
  TransactWriteItemsInput rebuild(
          void Function(TransactWriteItemsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactWriteItemsInputBuilder toBuilder() =>
      new TransactWriteItemsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactWriteItemsInput &&
        clientRequestToken == other.clientRequestToken &&
        returnConsumedCapacity == other.returnConsumedCapacity &&
        returnItemCollectionMetrics == other.returnItemCollectionMetrics &&
        transactItems == other.transactItems;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc(0, clientRequestToken.hashCode),
                returnConsumedCapacity.hashCode),
            returnItemCollectionMetrics.hashCode),
        transactItems.hashCode));
  }
}

class TransactWriteItemsInputBuilder
    implements
        Builder<TransactWriteItemsInput, TransactWriteItemsInputBuilder> {
  _$TransactWriteItemsInput? _$v;

  String? _clientRequestToken;
  String? get clientRequestToken => _$this._clientRequestToken;
  set clientRequestToken(String? clientRequestToken) =>
      _$this._clientRequestToken = clientRequestToken;

  _i3.ReturnConsumedCapacity? _returnConsumedCapacity;
  _i3.ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(
          _i3.ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

  _i4.ReturnItemCollectionMetrics? _returnItemCollectionMetrics;
  _i4.ReturnItemCollectionMetrics? get returnItemCollectionMetrics =>
      _$this._returnItemCollectionMetrics;
  set returnItemCollectionMetrics(
          _i4.ReturnItemCollectionMetrics? returnItemCollectionMetrics) =>
      _$this._returnItemCollectionMetrics = returnItemCollectionMetrics;

  _i6.ListBuilder<_i5.TransactWriteItem>? _transactItems;
  _i6.ListBuilder<_i5.TransactWriteItem> get transactItems =>
      _$this._transactItems ??= new _i6.ListBuilder<_i5.TransactWriteItem>();
  set transactItems(_i6.ListBuilder<_i5.TransactWriteItem>? transactItems) =>
      _$this._transactItems = transactItems;

  TransactWriteItemsInputBuilder() {
    TransactWriteItemsInput._init(this);
  }

  TransactWriteItemsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientRequestToken = $v.clientRequestToken;
      _returnConsumedCapacity = $v.returnConsumedCapacity;
      _returnItemCollectionMetrics = $v.returnItemCollectionMetrics;
      _transactItems = $v.transactItems.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactWriteItemsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactWriteItemsInput;
  }

  @override
  void update(void Function(TransactWriteItemsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactWriteItemsInput build() => _build();

  _$TransactWriteItemsInput _build() {
    _$TransactWriteItemsInput _$result;
    try {
      _$result = _$v ??
          new _$TransactWriteItemsInput._(
              clientRequestToken: clientRequestToken,
              returnConsumedCapacity: returnConsumedCapacity,
              returnItemCollectionMetrics: returnItemCollectionMetrics,
              transactItems: transactItems.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transactItems';
        transactItems.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransactWriteItemsInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
