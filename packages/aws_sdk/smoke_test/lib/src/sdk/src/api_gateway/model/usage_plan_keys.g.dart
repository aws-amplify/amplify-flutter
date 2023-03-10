// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.usage_plan_keys;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UsagePlanKeys extends UsagePlanKeys {
  @override
  final _i3.BuiltList<_i2.UsagePlanKey>? items;
  @override
  final String? position;

  factory _$UsagePlanKeys([void Function(UsagePlanKeysBuilder)? updates]) =>
      (new UsagePlanKeysBuilder()..update(updates))._build();

  _$UsagePlanKeys._({this.items, this.position}) : super._();

  @override
  UsagePlanKeys rebuild(void Function(UsagePlanKeysBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsagePlanKeysBuilder toBuilder() => new UsagePlanKeysBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsagePlanKeys &&
        items == other.items &&
        position == other.position;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UsagePlanKeysBuilder
    implements Builder<UsagePlanKeys, UsagePlanKeysBuilder> {
  _$UsagePlanKeys? _$v;

  _i3.ListBuilder<_i2.UsagePlanKey>? _items;
  _i3.ListBuilder<_i2.UsagePlanKey> get items =>
      _$this._items ??= new _i3.ListBuilder<_i2.UsagePlanKey>();
  set items(_i3.ListBuilder<_i2.UsagePlanKey>? items) => _$this._items = items;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  UsagePlanKeysBuilder() {
    UsagePlanKeys._init(this);
  }

  UsagePlanKeysBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsagePlanKeys other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsagePlanKeys;
  }

  @override
  void update(void Function(UsagePlanKeysBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsagePlanKeys build() => _build();

  _$UsagePlanKeys _build() {
    _$UsagePlanKeys _$result;
    try {
      _$result = _$v ??
          new _$UsagePlanKeys._(items: _items?.build(), position: position);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsagePlanKeys', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
