// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_item_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateItemOutput extends UpdateItemOutput {
  @override
  final _i2.BuiltMap<String, AttributeValue>? attributes;
  @override
  final ConsumedCapacity? consumedCapacity;
  @override
  final ItemCollectionMetrics? itemCollectionMetrics;

  factory _$UpdateItemOutput(
          [void Function(UpdateItemOutputBuilder)? updates]) =>
      (new UpdateItemOutputBuilder()..update(updates))._build();

  _$UpdateItemOutput._(
      {this.attributes, this.consumedCapacity, this.itemCollectionMetrics})
      : super._();

  @override
  UpdateItemOutput rebuild(void Function(UpdateItemOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateItemOutputBuilder toBuilder() =>
      new UpdateItemOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateItemOutput &&
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

class UpdateItemOutputBuilder
    implements Builder<UpdateItemOutput, UpdateItemOutputBuilder> {
  _$UpdateItemOutput? _$v;

  _i2.MapBuilder<String, AttributeValue>? _attributes;
  _i2.MapBuilder<String, AttributeValue> get attributes =>
      _$this._attributes ??= new _i2.MapBuilder<String, AttributeValue>();
  set attributes(_i2.MapBuilder<String, AttributeValue>? attributes) =>
      _$this._attributes = attributes;

  ConsumedCapacityBuilder? _consumedCapacity;
  ConsumedCapacityBuilder get consumedCapacity =>
      _$this._consumedCapacity ??= new ConsumedCapacityBuilder();
  set consumedCapacity(ConsumedCapacityBuilder? consumedCapacity) =>
      _$this._consumedCapacity = consumedCapacity;

  ItemCollectionMetricsBuilder? _itemCollectionMetrics;
  ItemCollectionMetricsBuilder get itemCollectionMetrics =>
      _$this._itemCollectionMetrics ??= new ItemCollectionMetricsBuilder();
  set itemCollectionMetrics(
          ItemCollectionMetricsBuilder? itemCollectionMetrics) =>
      _$this._itemCollectionMetrics = itemCollectionMetrics;

  UpdateItemOutputBuilder();

  UpdateItemOutputBuilder get _$this {
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
  void replace(UpdateItemOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateItemOutput;
  }

  @override
  void update(void Function(UpdateItemOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateItemOutput build() => _build();

  _$UpdateItemOutput _build() {
    _$UpdateItemOutput _$result;
    try {
      _$result = _$v ??
          new _$UpdateItemOutput._(
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
            r'UpdateItemOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint