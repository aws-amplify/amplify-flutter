// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.inventory_filter;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InventoryFilter extends InventoryFilter {
  @override
  final String prefix;

  factory _$InventoryFilter([void Function(InventoryFilterBuilder)? updates]) =>
      (new InventoryFilterBuilder()..update(updates))._build();

  _$InventoryFilter._({required this.prefix}) : super._() {
    BuiltValueNullFieldError.checkNotNull(prefix, r'InventoryFilter', 'prefix');
  }

  @override
  InventoryFilter rebuild(void Function(InventoryFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InventoryFilterBuilder toBuilder() =>
      new InventoryFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InventoryFilter && prefix == other.prefix;
  }

  @override
  int get hashCode {
    return $jf($jc(0, prefix.hashCode));
  }
}

class InventoryFilterBuilder
    implements Builder<InventoryFilter, InventoryFilterBuilder> {
  _$InventoryFilter? _$v;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  InventoryFilterBuilder() {
    InventoryFilter._init(this);
  }

  InventoryFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prefix = $v.prefix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InventoryFilter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InventoryFilter;
  }

  @override
  void update(void Function(InventoryFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InventoryFilter build() => _build();

  _$InventoryFilter _build() {
    final _$result = _$v ??
        new _$InventoryFilter._(
            prefix: BuiltValueNullFieldError.checkNotNull(
                prefix, r'InventoryFilter', 'prefix'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
