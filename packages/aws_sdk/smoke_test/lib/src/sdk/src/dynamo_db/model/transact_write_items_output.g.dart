// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transact_write_items_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactWriteItemsOutput extends TransactWriteItemsOutput {
  @override
  final _i2.BuiltList<ConsumedCapacity>? consumedCapacity;
  @override
  final _i2.BuiltListMultimap<String, ItemCollectionMetrics>?
      itemCollectionMetrics;

  factory _$TransactWriteItemsOutput(
          [void Function(TransactWriteItemsOutputBuilder)? updates]) =>
      (new TransactWriteItemsOutputBuilder()..update(updates))._build();

  _$TransactWriteItemsOutput._(
      {this.consumedCapacity, this.itemCollectionMetrics})
      : super._();

  @override
  TransactWriteItemsOutput rebuild(
          void Function(TransactWriteItemsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactWriteItemsOutputBuilder toBuilder() =>
      new TransactWriteItemsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactWriteItemsOutput &&
        consumedCapacity == other.consumedCapacity &&
        itemCollectionMetrics == other.itemCollectionMetrics;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, consumedCapacity.hashCode);
    _$hash = $jc(_$hash, itemCollectionMetrics.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransactWriteItemsOutputBuilder
    implements
        Builder<TransactWriteItemsOutput, TransactWriteItemsOutputBuilder> {
  _$TransactWriteItemsOutput? _$v;

  _i2.ListBuilder<ConsumedCapacity>? _consumedCapacity;
  _i2.ListBuilder<ConsumedCapacity> get consumedCapacity =>
      _$this._consumedCapacity ??= new _i2.ListBuilder<ConsumedCapacity>();
  set consumedCapacity(_i2.ListBuilder<ConsumedCapacity>? consumedCapacity) =>
      _$this._consumedCapacity = consumedCapacity;

  _i2.ListMultimapBuilder<String, ItemCollectionMetrics>?
      _itemCollectionMetrics;
  _i2.ListMultimapBuilder<String, ItemCollectionMetrics>
      get itemCollectionMetrics => _$this._itemCollectionMetrics ??=
          new _i2.ListMultimapBuilder<String, ItemCollectionMetrics>();
  set itemCollectionMetrics(
          _i2.ListMultimapBuilder<String, ItemCollectionMetrics>?
              itemCollectionMetrics) =>
      _$this._itemCollectionMetrics = itemCollectionMetrics;

  TransactWriteItemsOutputBuilder();

  TransactWriteItemsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _consumedCapacity = $v.consumedCapacity?.toBuilder();
      _itemCollectionMetrics = $v.itemCollectionMetrics?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactWriteItemsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactWriteItemsOutput;
  }

  @override
  void update(void Function(TransactWriteItemsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactWriteItemsOutput build() => _build();

  _$TransactWriteItemsOutput _build() {
    _$TransactWriteItemsOutput _$result;
    try {
      _$result = _$v ??
          new _$TransactWriteItemsOutput._(
              consumedCapacity: _consumedCapacity?.build(),
              itemCollectionMetrics: _itemCollectionMetrics?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'consumedCapacity';
        _consumedCapacity?.build();
        _$failedField = 'itemCollectionMetrics';
        _itemCollectionMetrics?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransactWriteItemsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
