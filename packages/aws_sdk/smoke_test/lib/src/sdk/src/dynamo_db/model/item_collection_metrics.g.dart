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
    return $jf(
        $jc($jc(0, itemCollectionKey.hashCode), sizeEstimateRangeGb.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
