// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.update_item_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateItemOutput extends UpdateItemOutput {
  @override
  final _i5.BuiltMap<String, _i2.AttributeValue>? attributes;
  @override
  final _i3.ConsumedCapacity? consumedCapacity;
  @override
  final _i4.ItemCollectionMetrics? itemCollectionMetrics;

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
    return $jf($jc($jc($jc(0, attributes.hashCode), consumedCapacity.hashCode),
        itemCollectionMetrics.hashCode));
  }
}

class UpdateItemOutputBuilder
    implements Builder<UpdateItemOutput, UpdateItemOutputBuilder> {
  _$UpdateItemOutput? _$v;

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

  UpdateItemOutputBuilder() {
    UpdateItemOutput._init(this);
  }

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
