// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_write_item_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchWriteItemOutput extends BatchWriteItemOutput {
  @override
  final _i2.BuiltListMultimap<String, WriteRequest>? unprocessedItems;
  @override
  final _i2.BuiltListMultimap<String, ItemCollectionMetrics>?
      itemCollectionMetrics;
  @override
  final _i2.BuiltList<ConsumedCapacity>? consumedCapacity;

  factory _$BatchWriteItemOutput(
          [void Function(BatchWriteItemOutputBuilder)? updates]) =>
      (new BatchWriteItemOutputBuilder()..update(updates))._build();

  _$BatchWriteItemOutput._(
      {this.unprocessedItems,
      this.itemCollectionMetrics,
      this.consumedCapacity})
      : super._();

  @override
  BatchWriteItemOutput rebuild(
          void Function(BatchWriteItemOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchWriteItemOutputBuilder toBuilder() =>
      new BatchWriteItemOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchWriteItemOutput &&
        unprocessedItems == other.unprocessedItems &&
        itemCollectionMetrics == other.itemCollectionMetrics &&
        consumedCapacity == other.consumedCapacity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, unprocessedItems.hashCode);
    _$hash = $jc(_$hash, itemCollectionMetrics.hashCode);
    _$hash = $jc(_$hash, consumedCapacity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BatchWriteItemOutputBuilder
    implements Builder<BatchWriteItemOutput, BatchWriteItemOutputBuilder> {
  _$BatchWriteItemOutput? _$v;

  _i2.ListMultimapBuilder<String, WriteRequest>? _unprocessedItems;
  _i2.ListMultimapBuilder<String, WriteRequest> get unprocessedItems =>
      _$this._unprocessedItems ??=
          new _i2.ListMultimapBuilder<String, WriteRequest>();
  set unprocessedItems(
          _i2.ListMultimapBuilder<String, WriteRequest>? unprocessedItems) =>
      _$this._unprocessedItems = unprocessedItems;

  _i2.ListMultimapBuilder<String, ItemCollectionMetrics>?
      _itemCollectionMetrics;
  _i2.ListMultimapBuilder<String, ItemCollectionMetrics>
      get itemCollectionMetrics => _$this._itemCollectionMetrics ??=
          new _i2.ListMultimapBuilder<String, ItemCollectionMetrics>();
  set itemCollectionMetrics(
          _i2.ListMultimapBuilder<String, ItemCollectionMetrics>?
              itemCollectionMetrics) =>
      _$this._itemCollectionMetrics = itemCollectionMetrics;

  _i2.ListBuilder<ConsumedCapacity>? _consumedCapacity;
  _i2.ListBuilder<ConsumedCapacity> get consumedCapacity =>
      _$this._consumedCapacity ??= new _i2.ListBuilder<ConsumedCapacity>();
  set consumedCapacity(_i2.ListBuilder<ConsumedCapacity>? consumedCapacity) =>
      _$this._consumedCapacity = consumedCapacity;

  BatchWriteItemOutputBuilder();

  BatchWriteItemOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unprocessedItems = $v.unprocessedItems?.toBuilder();
      _itemCollectionMetrics = $v.itemCollectionMetrics?.toBuilder();
      _consumedCapacity = $v.consumedCapacity?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchWriteItemOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchWriteItemOutput;
  }

  @override
  void update(void Function(BatchWriteItemOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchWriteItemOutput build() => _build();

  _$BatchWriteItemOutput _build() {
    _$BatchWriteItemOutput _$result;
    try {
      _$result = _$v ??
          new _$BatchWriteItemOutput._(
              unprocessedItems: _unprocessedItems?.build(),
              itemCollectionMetrics: _itemCollectionMetrics?.build(),
              consumedCapacity: _consumedCapacity?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'unprocessedItems';
        _unprocessedItems?.build();
        _$failedField = 'itemCollectionMetrics';
        _itemCollectionMetrics?.build();
        _$failedField = 'consumedCapacity';
        _consumedCapacity?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchWriteItemOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
