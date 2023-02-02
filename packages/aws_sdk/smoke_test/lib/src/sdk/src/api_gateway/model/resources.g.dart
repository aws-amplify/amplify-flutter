// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.resources;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Resources extends Resources {
  @override
  final _i3.BuiltList<_i2.Resource>? items;
  @override
  final String? position;

  factory _$Resources([void Function(ResourcesBuilder)? updates]) =>
      (new ResourcesBuilder()..update(updates))._build();

  _$Resources._({this.items, this.position}) : super._();

  @override
  Resources rebuild(void Function(ResourcesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourcesBuilder toBuilder() => new ResourcesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Resources &&
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

class ResourcesBuilder implements Builder<Resources, ResourcesBuilder> {
  _$Resources? _$v;

  _i3.ListBuilder<_i2.Resource>? _items;
  _i3.ListBuilder<_i2.Resource> get items =>
      _$this._items ??= new _i3.ListBuilder<_i2.Resource>();
  set items(_i3.ListBuilder<_i2.Resource>? items) => _$this._items = items;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  ResourcesBuilder() {
    Resources._init(this);
  }

  ResourcesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Resources other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Resources;
  }

  @override
  void update(void Function(ResourcesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Resources build() => _build();

  _$Resources _build() {
    _$Resources _$result;
    try {
      _$result =
          _$v ?? new _$Resources._(items: _items?.build(), position: position);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Resources', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
