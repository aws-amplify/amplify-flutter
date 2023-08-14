// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_plans.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UsagePlans extends UsagePlans {
  @override
  final _i2.BuiltList<UsagePlan>? items;
  @override
  final String? position;

  factory _$UsagePlans([void Function(UsagePlansBuilder)? updates]) =>
      (new UsagePlansBuilder()..update(updates))._build();

  _$UsagePlans._({this.items, this.position}) : super._();

  @override
  UsagePlans rebuild(void Function(UsagePlansBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsagePlansBuilder toBuilder() => new UsagePlansBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsagePlans &&
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

class UsagePlansBuilder implements Builder<UsagePlans, UsagePlansBuilder> {
  _$UsagePlans? _$v;

  _i2.ListBuilder<UsagePlan>? _items;
  _i2.ListBuilder<UsagePlan> get items =>
      _$this._items ??= new _i2.ListBuilder<UsagePlan>();
  set items(_i2.ListBuilder<UsagePlan>? items) => _$this._items = items;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  UsagePlansBuilder();

  UsagePlansBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsagePlans other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsagePlans;
  }

  @override
  void update(void Function(UsagePlansBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsagePlans build() => _build();

  _$UsagePlans _build() {
    _$UsagePlans _$result;
    try {
      _$result =
          _$v ?? new _$UsagePlans._(items: _items?.build(), position: position);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsagePlans', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
