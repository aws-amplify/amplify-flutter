// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_item_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutItemOutput extends PutItemOutput {
  @override
  final _i2.BuiltMap<String, AttributeValue>? attributes;
  @override
  final ConsumedCapacity? consumedCapacity;
  @override
  final ItemCollectionMetrics? itemCollectionMetrics;

  factory _$PutItemOutput([void Function(PutItemOutputBuilder)? updates]) =>
      (new PutItemOutputBuilder()..update(updates))._build();

  _$PutItemOutput._(
      {this.attributes, this.consumedCapacity, this.itemCollectionMetrics})
      : super._();

  @override
  PutItemOutput rebuild(void Function(PutItemOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutItemOutputBuilder toBuilder() => new PutItemOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutItemOutput &&
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

class PutItemOutputBuilder
    implements Builder<PutItemOutput, PutItemOutputBuilder> {
  _$PutItemOutput? _$v;

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

  PutItemOutputBuilder();

  PutItemOutputBuilder get _$this {
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
  void replace(PutItemOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutItemOutput;
  }

  @override
  void update(void Function(PutItemOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutItemOutput build() => _build();

  _$PutItemOutput _build() {
    _$PutItemOutput _$result;
    try {
      _$result = _$v ??
          new _$PutItemOutput._(
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
            r'PutItemOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
