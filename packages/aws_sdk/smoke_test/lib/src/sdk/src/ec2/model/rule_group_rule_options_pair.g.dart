// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_group_rule_options_pair.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleGroupRuleOptionsPair extends RuleGroupRuleOptionsPair {
  @override
  final String? ruleGroupArn;
  @override
  final _i2.BuiltList<RuleOption>? ruleOptions;

  factory _$RuleGroupRuleOptionsPair(
          [void Function(RuleGroupRuleOptionsPairBuilder)? updates]) =>
      (new RuleGroupRuleOptionsPairBuilder()..update(updates))._build();

  _$RuleGroupRuleOptionsPair._({this.ruleGroupArn, this.ruleOptions})
      : super._();

  @override
  RuleGroupRuleOptionsPair rebuild(
          void Function(RuleGroupRuleOptionsPairBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RuleGroupRuleOptionsPairBuilder toBuilder() =>
      new RuleGroupRuleOptionsPairBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleGroupRuleOptionsPair &&
        ruleGroupArn == other.ruleGroupArn &&
        ruleOptions == other.ruleOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleGroupArn.hashCode);
    _$hash = $jc(_$hash, ruleOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RuleGroupRuleOptionsPairBuilder
    implements
        Builder<RuleGroupRuleOptionsPair, RuleGroupRuleOptionsPairBuilder> {
  _$RuleGroupRuleOptionsPair? _$v;

  String? _ruleGroupArn;
  String? get ruleGroupArn => _$this._ruleGroupArn;
  set ruleGroupArn(String? ruleGroupArn) => _$this._ruleGroupArn = ruleGroupArn;

  _i2.ListBuilder<RuleOption>? _ruleOptions;
  _i2.ListBuilder<RuleOption> get ruleOptions =>
      _$this._ruleOptions ??= new _i2.ListBuilder<RuleOption>();
  set ruleOptions(_i2.ListBuilder<RuleOption>? ruleOptions) =>
      _$this._ruleOptions = ruleOptions;

  RuleGroupRuleOptionsPairBuilder();

  RuleGroupRuleOptionsPairBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleGroupArn = $v.ruleGroupArn;
      _ruleOptions = $v.ruleOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleGroupRuleOptionsPair other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RuleGroupRuleOptionsPair;
  }

  @override
  void update(void Function(RuleGroupRuleOptionsPairBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleGroupRuleOptionsPair build() => _build();

  _$RuleGroupRuleOptionsPair _build() {
    _$RuleGroupRuleOptionsPair _$result;
    try {
      _$result = _$v ??
          new _$RuleGroupRuleOptionsPair._(
              ruleGroupArn: ruleGroupArn, ruleOptions: _ruleOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ruleOptions';
        _ruleOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RuleGroupRuleOptionsPair', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
