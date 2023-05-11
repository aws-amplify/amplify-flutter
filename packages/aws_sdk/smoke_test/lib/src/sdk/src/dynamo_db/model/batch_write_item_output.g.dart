// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.batch_write_item_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchWriteItemOutput extends BatchWriteItemOutput {
  @override
  final _i5.BuiltListMultimap<String, _i2.WriteRequest>? unprocessedItems;
  @override
  final _i5.BuiltListMultimap<String, _i3.ItemCollectionMetrics>?
      itemCollectionMetrics;
  @override
  final _i5.BuiltList<_i4.ConsumedCapacity>? consumedCapacity;

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

  _i5.ListMultimapBuilder<String, _i2.WriteRequest>? _unprocessedItems;
  _i5.ListMultimapBuilder<String, _i2.WriteRequest> get unprocessedItems =>
      _$this._unprocessedItems ??=
          new _i5.ListMultimapBuilder<String, _i2.WriteRequest>();
  set unprocessedItems(
          _i5.ListMultimapBuilder<String, _i2.WriteRequest>?
              unprocessedItems) =>
      _$this._unprocessedItems = unprocessedItems;

  _i5.ListMultimapBuilder<String, _i3.ItemCollectionMetrics>?
      _itemCollectionMetrics;
  _i5.ListMultimapBuilder<String, _i3.ItemCollectionMetrics>
      get itemCollectionMetrics => _$this._itemCollectionMetrics ??=
          new _i5.ListMultimapBuilder<String, _i3.ItemCollectionMetrics>();
  set itemCollectionMetrics(
          _i5.ListMultimapBuilder<String, _i3.ItemCollectionMetrics>?
              itemCollectionMetrics) =>
      _$this._itemCollectionMetrics = itemCollectionMetrics;

  _i5.ListBuilder<_i4.ConsumedCapacity>? _consumedCapacity;
  _i5.ListBuilder<_i4.ConsumedCapacity> get consumedCapacity =>
      _$this._consumedCapacity ??= new _i5.ListBuilder<_i4.ConsumedCapacity>();
  set consumedCapacity(
          _i5.ListBuilder<_i4.ConsumedCapacity>? consumedCapacity) =>
      _$this._consumedCapacity = consumedCapacity;

  BatchWriteItemOutputBuilder() {
    BatchWriteItemOutput._init(this);
  }

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
