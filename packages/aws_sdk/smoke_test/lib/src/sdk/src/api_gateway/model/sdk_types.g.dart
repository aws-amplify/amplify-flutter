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
    return $jf($jc(0, items.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
