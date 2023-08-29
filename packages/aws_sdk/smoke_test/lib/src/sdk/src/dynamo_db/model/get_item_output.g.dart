// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_item_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetItemOutput extends GetItemOutput {
  @override
  final _i2.BuiltMap<String, AttributeValue>? item;
  @override
  final ConsumedCapacity? consumedCapacity;

  factory _$GetItemOutput([void Function(GetItemOutputBuilder)? updates]) =>
      (new GetItemOutputBuilder()..update(updates))._build();

  _$GetItemOutput._({this.item, this.consumedCapacity}) : super._();

  @override
  GetItemOutput rebuild(void Function(GetItemOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetItemOutputBuilder toBuilder() => new GetItemOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetItemOutput &&
        item == other.item &&
        consumedCapacity == other.consumedCapacity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, item.hashCode);
    _$hash = $jc(_$hash, consumedCapacity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetItemOutputBuilder
    implements Builder<GetItemOutput, GetItemOutputBuilder> {
  _$GetItemOutput? _$v;

  _i2.MapBuilder<String, AttributeValue>? _item;
  _i2.MapBuilder<String, AttributeValue> get item =>
      _$this._item ??= new _i2.MapBuilder<String, AttributeValue>();
  set item(_i2.MapBuilder<String, AttributeValue>? item) => _$this._item = item;

  ConsumedCapacityBuilder? _consumedCapacity;
  ConsumedCapacityBuilder get consumedCapacity =>
      _$this._consumedCapacity ??= new ConsumedCapacityBuilder();
  set consumedCapacity(ConsumedCapacityBuilder? consumedCapacity) =>
      _$this._consumedCapacity = consumedCapacity;

  GetItemOutputBuilder();

  GetItemOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _item = $v.item?.toBuilder();
      _consumedCapacity = $v.consumedCapacity?.toBuilder();
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
              item: _item?.build(),
              consumedCapacity: _consumedCapacity?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'item';
        _item?.build();
        _$failedField = 'consumedCapacity';
        _consumedCapacity?.build();
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
