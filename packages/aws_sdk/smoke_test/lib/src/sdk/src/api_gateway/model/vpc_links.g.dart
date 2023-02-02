// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.vpc_links;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VpcLinks extends VpcLinks {
  @override
  final _i3.BuiltList<_i2.VpcLink>? items;
  @override
  final String? position;

  factory _$VpcLinks([void Function(VpcLinksBuilder)? updates]) =>
      (new VpcLinksBuilder()..update(updates))._build();

  _$VpcLinks._({this.items, this.position}) : super._();

  @override
  VpcLinks rebuild(void Function(VpcLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VpcLinksBuilder toBuilder() => new VpcLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VpcLinks &&
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

class VpcLinksBuilder implements Builder<VpcLinks, VpcLinksBuilder> {
  _$VpcLinks? _$v;

  _i3.ListBuilder<_i2.VpcLink>? _items;
  _i3.ListBuilder<_i2.VpcLink> get items =>
      _$this._items ??= new _i3.ListBuilder<_i2.VpcLink>();
  set items(_i3.ListBuilder<_i2.VpcLink>? items) => _$this._items = items;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  VpcLinksBuilder() {
    VpcLinks._init(this);
  }

  VpcLinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VpcLinks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VpcLinks;
  }

  @override
  void update(void Function(VpcLinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VpcLinks build() => _build();

  _$VpcLinks _build() {
    _$VpcLinks _$result;
    try {
      _$result =
          _$v ?? new _$VpcLinks._(items: _items?.build(), position: position);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VpcLinks', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
