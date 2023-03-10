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
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
