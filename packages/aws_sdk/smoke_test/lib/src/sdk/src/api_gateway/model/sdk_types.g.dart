// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.sdk_types;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SdkTypes extends SdkTypes {
  @override
  final _i3.BuiltList<_i2.SdkType>? items;

  factory _$SdkTypes([void Function(SdkTypesBuilder)? updates]) =>
      (new SdkTypesBuilder()..update(updates))._build();

  _$SdkTypes._({this.items}) : super._();

  @override
  SdkTypes rebuild(void Function(SdkTypesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SdkTypesBuilder toBuilder() => new SdkTypesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SdkTypes && items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SdkTypesBuilder implements Builder<SdkTypes, SdkTypesBuilder> {
  _$SdkTypes? _$v;

  _i3.ListBuilder<_i2.SdkType>? _items;
  _i3.ListBuilder<_i2.SdkType> get items =>
      _$this._items ??= new _i3.ListBuilder<_i2.SdkType>();
  set items(_i3.ListBuilder<_i2.SdkType>? items) => _$this._items = items;

  SdkTypesBuilder() {
    SdkTypes._init(this);
  }

  SdkTypesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SdkTypes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SdkTypes;
  }

  @override
  void update(void Function(SdkTypesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SdkTypes build() => _build();

  _$SdkTypes _build() {
    _$SdkTypes _$result;
    try {
      _$result = _$v ?? new _$SdkTypes._(items: _items?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SdkTypes', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
