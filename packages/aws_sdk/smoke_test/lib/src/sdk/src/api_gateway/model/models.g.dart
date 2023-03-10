// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Models extends Models {
  @override
  final _i3.BuiltList<_i2.Model>? items;
  @override
  final String? position;

  factory _$Models([void Function(ModelsBuilder)? updates]) =>
      (new ModelsBuilder()..update(updates))._build();

  _$Models._({this.items, this.position}) : super._();

  @override
  Models rebuild(void Function(ModelsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModelsBuilder toBuilder() => new ModelsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Models &&
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

class ModelsBuilder implements Builder<Models, ModelsBuilder> {
  _$Models? _$v;

  _i3.ListBuilder<_i2.Model>? _items;
  _i3.ListBuilder<_i2.Model> get items =>
      _$this._items ??= new _i3.ListBuilder<_i2.Model>();
  set items(_i3.ListBuilder<_i2.Model>? items) => _$this._items = items;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  ModelsBuilder() {
    Models._init(this);
  }

  ModelsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Models other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Models;
  }

  @override
  void update(void Function(ModelsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Models build() => _build();

  _$Models _build() {
    _$Models _$result;
    try {
      _$result =
          _$v ?? new _$Models._(items: _items?.build(), position: position);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Models', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
