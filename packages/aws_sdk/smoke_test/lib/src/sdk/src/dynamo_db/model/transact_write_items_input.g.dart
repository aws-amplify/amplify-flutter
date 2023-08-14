// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transact_write_items_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactWriteItemsInput extends TransactWriteItemsInput {
  @override
  final _i3.BuiltList<TransactWriteItem> transactItems;
  @override
  final ReturnConsumedCapacity? returnConsumedCapacity;
  @override
  final ReturnItemCollectionMetrics? returnItemCollectionMetrics;
  @override
  final String? clientRequestToken;

  factory _$TransactWriteItemsInput(
          [void Function(TransactWriteItemsInputBuilder)? updates]) =>
      (new TransactWriteItemsInputBuilder()..update(updates))._build();

  _$TransactWriteItemsInput._(
      {required this.transactItems,
      this.returnConsumedCapacity,
      this.returnItemCollectionMetrics,
      this.clientRequestToken})
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
        transactItems == other.transactItems &&
        returnConsumedCapacity == other.returnConsumedCapacity &&
        returnItemCollectionMetrics == other.returnItemCollectionMetrics &&
        clientRequestToken == other.clientRequestToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transactItems.hashCode);
    _$hash = $jc(_$hash, returnConsumedCapacity.hashCode);
    _$hash = $jc(_$hash, returnItemCollectionMetrics.hashCode);
    _$hash = $jc(_$hash, clientRequestToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransactWriteItemsInputBuilder
    implements
        Builder<TransactWriteItemsInput, TransactWriteItemsInputBuilder> {
  _$TransactWriteItemsInput? _$v;

  _i3.ListBuilder<TransactWriteItem>? _transactItems;
  _i3.ListBuilder<TransactWriteItem> get transactItems =>
      _$this._transactItems ??= new _i3.ListBuilder<TransactWriteItem>();
  set transactItems(_i3.ListBuilder<TransactWriteItem>? transactItems) =>
      _$this._transactItems = transactItems;

  ReturnConsumedCapacity? _returnConsumedCapacity;
  ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

  ReturnItemCollectionMetrics? _returnItemCollectionMetrics;
  ReturnItemCollectionMetrics? get returnItemCollectionMetrics =>
      _$this._returnItemCollectionMetrics;
  set returnItemCollectionMetrics(
          ReturnItemCollectionMetrics? returnItemCollectionMetrics) =>
      _$this._returnItemCollectionMetrics = returnItemCollectionMetrics;

  String? _clientRequestToken;
  String? get clientRequestToken => _$this._clientRequestToken;
  set clientRequestToken(String? clientRequestToken) =>
      _$this._clientRequestToken = clientRequestToken;

  TransactWriteItemsInputBuilder() {
    TransactWriteItemsInput._init(this);
  }

  TransactWriteItemsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactItems = $v.transactItems.toBuilder();
      _returnConsumedCapacity = $v.returnConsumedCapacity;
      _returnItemCollectionMetrics = $v.returnItemCollectionMetrics;
      _clientRequestToken = $v.clientRequestToken;
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
              transactItems: transactItems.build(),
              returnConsumedCapacity: returnConsumedCapacity,
              returnItemCollectionMetrics: returnItemCollectionMetrics,
              clientRequestToken: clientRequestToken);
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
