// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.item_collection_metrics;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemCollectionMetrics extends ItemCollectionMetrics {
  @override
  final _i3.BuiltMap<String, _i2.AttributeValue>? itemCollectionKey;
  @override
  final _i3.BuiltList<double>? sizeEstimateRangeGb;

  factory _$ItemCollectionMetrics(
          [void Function(ItemCollectionMetricsBuilder)? updates]) =>
      (new ItemCollectionMetricsBuilder()..update(updates))._build();

  _$ItemCollectionMetrics._({this.itemCollectionKey, this.sizeEstimateRangeGb})
      : super._();

  @override
  ItemCollectionMetrics rebuild(
          void Function(ItemCollectionMetricsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemCollectionMetricsBuilder toBuilder() =>
      new ItemCollectionMetricsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemCollectionMetrics &&
        itemCollectionKey == other.itemCollectionKey &&
        sizeEstimateRangeGb == other.sizeEstimateRangeGb;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, itemCollectionKey.hashCode);
    _$hash = $jc(_$hash, sizeEstimateRangeGb.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ItemCollectionMetricsBuilder
    implements Builder<ItemCollectionMetrics, ItemCollectionMetricsBuilder> {
  _$ItemCollectionMetrics? _$v;

  _i3.MapBuilder<String, _i2.AttributeValue>? _itemCollectionKey;
  _i3.MapBuilder<String, _i2.AttributeValue> get itemCollectionKey =>
      _$this._itemCollectionKey ??=
          new _i3.MapBuilder<String, _i2.AttributeValue>();
  set itemCollectionKey(
          _i3.MapBuilder<String, _i2.AttributeValue>? itemCollectionKey) =>
      _$this._itemCollectionKey = itemCollectionKey;

  _i3.ListBuilder<double>? _sizeEstimateRangeGb;
  _i3.ListBuilder<double> get sizeEstimateRangeGb =>
      _$this._sizeEstimateRangeGb ??= new _i3.ListBuilder<double>();
  set sizeEstimateRangeGb(_i3.ListBuilder<double>? sizeEstimateRangeGb) =>
      _$this._sizeEstimateRangeGb = sizeEstimateRangeGb;

  ItemCollectionMetricsBuilder() {
    ItemCollectionMetrics._init(this);
  }

  ItemCollectionMetricsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _itemCollectionKey = $v.itemCollectionKey?.toBuilder();
      _sizeEstimateRangeGb = $v.sizeEstimateRangeGb?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemCollectionMetrics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemCollectionMetrics;
  }

  @override
  void update(void Function(ItemCollectionMetricsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemCollectionMetrics build() => _build();

  _$ItemCollectionMetrics _build() {
    _$ItemCollectionMetrics _$result;
    try {
      _$result = _$v ??
          new _$ItemCollectionMetrics._(
              itemCollectionKey: _itemCollectionKey?.build(),
              sizeEstimateRangeGb: _sizeEstimateRangeGb?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'itemCollectionKey';
        _itemCollectionKey?.build();
        _$failedField = 'sizeEstimateRangeGb';
        _sizeEstimateRangeGb?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ItemCollectionMetrics', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
