// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.get_item_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetItemOutput extends GetItemOutput {
  @override
  final _i2.ConsumedCapacity? consumedCapacity;
  @override
  final _i4.BuiltMap<String, _i3.AttributeValue>? item;

  factory _$GetItemOutput([void Function(GetItemOutputBuilder)? updates]) =>
      (new GetItemOutputBuilder()..update(updates))._build();

  _$GetItemOutput._({this.consumedCapacity, this.item}) : super._();

  @override
  GetItemOutput rebuild(void Function(GetItemOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetItemOutputBuilder toBuilder() => new GetItemOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetItemOutput &&
        consumedCapacity == other.consumedCapacity &&
        item == other.item;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, consumedCapacity.hashCode), item.hashCode));
  }
}

class GetItemOutputBuilder
    implements Builder<GetItemOutput, GetItemOutputBuilder> {
  _$GetItemOutput? _$v;

  _i2.ConsumedCapacityBuilder? _consumedCapacity;
  _i2.ConsumedCapacityBuilder get consumedCapacity =>
      _$this._consumedCapacity ??= new _i2.ConsumedCapacityBuilder();
  set consumedCapacity(_i2.ConsumedCapacityBuilder? consumedCapacity) =>
      _$this._consumedCapacity = consumedCapacity;

  _i4.MapBuilder<String, _i3.AttributeValue>? _item;
  _i4.MapBuilder<String, _i3.AttributeValue> get item =>
      _$this._item ??= new _i4.MapBuilder<String, _i3.AttributeValue>();
  set item(_i4.MapBuilder<String, _i3.AttributeValue>? item) =>
      _$this._item = item;

  GetItemOutputBuilder() {
    GetItemOutput._init(this);
  }

  GetItemOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _consumedCapacity = $v.consumedCapacity?.toBuilder();
      _item = $v.item?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetItemOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetItemOutput;
  }

  @override
  void update(void Function(GetItemOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetItemOutput build() => _build();

  _$GetItemOutput _build() {
    _$GetItemOutput _$result;
    try {
      _$result = _$v ??
          new _$GetItemOutput._(
              consumedCapacity: _consumedCapacity?.build(),
              item: _item?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'consumedCapacity';
        _consumedCapacity?.build();
        _$failedField = 'item';
        _item?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetItemOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
