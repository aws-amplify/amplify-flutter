// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.filter_rule;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilterRule extends FilterRule {
  @override
  final _i2.FilterRuleName? name;
  @override
  final String? value;

  factory _$FilterRule([void Function(FilterRuleBuilder)? updates]) =>
      (new FilterRuleBuilder()..update(updates))._build();

  _$FilterRule._({this.name, this.value}) : super._();

  @override
  FilterRule rebuild(void Function(FilterRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterRuleBuilder toBuilder() => new FilterRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterRule && name == other.name && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), value.hashCode));
  }
}

class FilterRuleBuilder implements Builder<FilterRule, FilterRuleBuilder> {
  _$FilterRule? _$v;

  _i2.FilterRuleName? _name;
  _i2.FilterRuleName? get name => _$this._name;
  set name(_i2.FilterRuleName? name) => _$this._name = name;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  FilterRuleBuilder() {
    FilterRule._init(this);
  }

  FilterRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FilterRule;
  }

  @override
  void update(void Function(FilterRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilterRule build() => _build();

  _$FilterRule _build() {
    final _$result = _$v ?? new _$FilterRule._(name: name, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
