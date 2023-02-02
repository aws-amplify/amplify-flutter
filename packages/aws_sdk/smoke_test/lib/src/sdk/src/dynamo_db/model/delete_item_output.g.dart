// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.delete_item_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteItemOutput extends DeleteItemOutput {
  @override
  final _i5.BuiltMap<String, _i2.AttributeValue>? attributes;
  @override
  final _i3.ConsumedCapacity? consumedCapacity;
  @override
  final _i4.ItemCollectionMetrics? itemCollectionMetrics;

  factory _$DeleteItemOutput(
          [void Function(DeleteItemOutputBuilder)? updates]) =>
      (new DeleteItemOutputBuilder()..update(updates))._build();

  _$DeleteItemOutput._(
      {this.attributes, this.consumedCapacity, this.itemCollectionMetrics})
      : super._();

  @override
  DeleteItemOutput rebuild(void Function(DeleteItemOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteItemOutputBuilder toBuilder() =>
      new DeleteItemOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteItemOutput &&
        attributes == other.attributes &&
        consumedCapacity == other.consumedCapacity &&
        itemCollectionMetrics == other.itemCollectionMetrics;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attributes.hashCode);
    _$hash = $jc(_$hash, consumedCapacity.hashCode);
    _$hash = $jc(_$hash, itemCollectionMetrics.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteItemOutputBuilder
    implements Builder<DeleteItemOutput, DeleteItemOutputBuilder> {
  _$DeleteItemOutput? _$v;

  _i5.MapBuilder<String, _i2.AttributeValue>? _attributes;
  _i5.MapBuilder<String, _i2.AttributeValue> get attributes =>
      _$this._attributes ??= new _i5.MapBuilder<String, _i2.AttributeValue>();
  set attributes(_i5.MapBuilder<String, _i2.AttributeValue>? attributes) =>
      _$this._attributes = attributes;

  _i3.ConsumedCapacityBuilder? _consumedCapacity;
  _i3.ConsumedCapacityBuilder get consumedCapacity =>
      _$this._consumedCapacity ??= new _i3.ConsumedCapacityBuilder();
  set consumedCapacity(_i3.ConsumedCapacityBuilder? consumedCapacity) =>
      _$this._consumedCapacity = consumedCapacity;

  _i4.ItemCollectionMetricsBuilder? _itemCollectionMetrics;
  _i4.ItemCollectionMetricsBuilder get itemCollectionMetrics =>
      _$this._itemCollectionMetrics ??= new _i4.ItemCollectionMetricsBuilder();
  set itemCollectionMetrics(
          _i4.ItemCollectionMetricsBuilder? itemCollectionMetrics) =>
      _$this._itemCollectionMetrics = itemCollectionMetrics;

  DeleteItemOutputBuilder() {
    DeleteItemOutput._init(this);
  }

  DeleteItemOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributes = $v.attributes?.toBuilder();
      _consumedCapacity = $v.consumedCapacity?.toBuilder();
      _itemCollectionMetrics = $v.itemCollectionMetrics?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteItemOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteItemOutput;
  }

  @override
  void update(void Function(DeleteItemOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteItemOutput build() => _build();

  _$DeleteItemOutput _build() {
    _$DeleteItemOutput _$result;
    try {
      _$result = _$v ??
          new _$DeleteItemOutput._(
              attributes: _attributes?.build(),
              consumedCapacity: _consumedCapacity?.build(),
              itemCollectionMetrics: _itemCollectionMetrics?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributes';
        _attributes?.build();
        _$failedField = 'consumedCapacity';
        _consumedCapacity?.build();
        _$failedField = 'itemCollectionMetrics';
        _itemCollectionMetrics?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteItemOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
