// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.item_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemResponse extends ItemResponse {
  @override
  final _i3.BuiltMap<String, _i2.AttributeValue>? item;

  factory _$ItemResponse([void Function(ItemResponseBuilder)? updates]) =>
      (new ItemResponseBuilder()..update(updates))._build();

  _$ItemResponse._({this.item}) : super._();

  @override
  ItemResponse rebuild(void Function(ItemResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemResponseBuilder toBuilder() => new ItemResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemResponse && item == other.item;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, item.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ItemResponseBuilder
    implements Builder<ItemResponse, ItemResponseBuilder> {
  _$ItemResponse? _$v;

  _i3.MapBuilder<String, _i2.AttributeValue>? _item;
  _i3.MapBuilder<String, _i2.AttributeValue> get item =>
      _$this._item ??= new _i3.MapBuilder<String, _i2.AttributeValue>();
  set item(_i3.MapBuilder<String, _i2.AttributeValue>? item) =>
      _$this._item = item;

  ItemResponseBuilder() {
    ItemResponse._init(this);
  }

  ItemResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _item = $v.item?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemResponse;
  }

  @override
  void update(void Function(ItemResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemResponse build() => _build();

  _$ItemResponse _build() {
    _$ItemResponse _$result;
    try {
      _$result = _$v ?? new _$ItemResponse._(item: _item?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'item';
        _item?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ItemResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
