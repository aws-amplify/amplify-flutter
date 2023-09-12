// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_path_mappings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BasePathMappings extends BasePathMappings {
  @override
  final _i2.BuiltList<BasePathMapping>? items;
  @override
  final String? position;

  factory _$BasePathMappings(
          [void Function(BasePathMappingsBuilder)? updates]) =>
      (new BasePathMappingsBuilder()..update(updates))._build();

  _$BasePathMappings._({this.items, this.position}) : super._();

  @override
  BasePathMappings rebuild(void Function(BasePathMappingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BasePathMappingsBuilder toBuilder() =>
      new BasePathMappingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BasePathMappings &&
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

class BasePathMappingsBuilder
    implements Builder<BasePathMappings, BasePathMappingsBuilder> {
  _$BasePathMappings? _$v;

  _i2.ListBuilder<BasePathMapping>? _items;
  _i2.ListBuilder<BasePathMapping> get items =>
      _$this._items ??= new _i2.ListBuilder<BasePathMapping>();
  set items(_i2.ListBuilder<BasePathMapping>? items) => _$this._items = items;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  BasePathMappingsBuilder();

  BasePathMappingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BasePathMappings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BasePathMappings;
  }

  @override
  void update(void Function(BasePathMappingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BasePathMappings build() => _build();

  _$BasePathMappings _build() {
    _$BasePathMappings _$result;
    try {
      _$result = _$v ??
          new _$BasePathMappings._(items: _items?.build(), position: position);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BasePathMappings', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint