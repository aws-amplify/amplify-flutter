// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.domain_names;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DomainNames extends DomainNames {
  @override
  final _i3.BuiltList<_i2.DomainName>? items;
  @override
  final String? position;

  factory _$DomainNames([void Function(DomainNamesBuilder)? updates]) =>
      (new DomainNamesBuilder()..update(updates))._build();

  _$DomainNames._({this.items, this.position}) : super._();

  @override
  DomainNames rebuild(void Function(DomainNamesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DomainNamesBuilder toBuilder() => new DomainNamesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DomainNames &&
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

class DomainNamesBuilder implements Builder<DomainNames, DomainNamesBuilder> {
  _$DomainNames? _$v;

  _i3.ListBuilder<_i2.DomainName>? _items;
  _i3.ListBuilder<_i2.DomainName> get items =>
      _$this._items ??= new _i3.ListBuilder<_i2.DomainName>();
  set items(_i3.ListBuilder<_i2.DomainName>? items) => _$this._items = items;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  DomainNamesBuilder() {
    DomainNames._init(this);
  }

  DomainNamesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DomainNames other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DomainNames;
  }

  @override
  void update(void Function(DomainNamesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DomainNames build() => _build();

  _$DomainNames _build() {
    _$DomainNames _$result;
    try {
      _$result = _$v ??
          new _$DomainNames._(items: _items?.build(), position: position);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DomainNames', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
