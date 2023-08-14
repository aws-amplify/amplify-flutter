// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routing_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RoutingRule extends RoutingRule {
  @override
  final Condition? condition;
  @override
  final Redirect redirect;

  factory _$RoutingRule([void Function(RoutingRuleBuilder)? updates]) =>
      (new RoutingRuleBuilder()..update(updates))._build();

  _$RoutingRule._({this.condition, required this.redirect}) : super._() {
    BuiltValueNullFieldError.checkNotNull(redirect, r'RoutingRule', 'redirect');
  }

  @override
  RoutingRule rebuild(void Function(RoutingRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoutingRuleBuilder toBuilder() => new RoutingRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RoutingRule &&
        condition == other.condition &&
        redirect == other.redirect;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, condition.hashCode);
    _$hash = $jc(_$hash, redirect.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RoutingRuleBuilder implements Builder<RoutingRule, RoutingRuleBuilder> {
  _$RoutingRule? _$v;

  ConditionBuilder? _condition;
  ConditionBuilder get condition =>
      _$this._condition ??= new ConditionBuilder();
  set condition(ConditionBuilder? condition) => _$this._condition = condition;

  RedirectBuilder? _redirect;
  RedirectBuilder get redirect => _$this._redirect ??= new RedirectBuilder();
  set redirect(RedirectBuilder? redirect) => _$this._redirect = redirect;

  RoutingRuleBuilder();

  RoutingRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _condition = $v.condition?.toBuilder();
      _redirect = $v.redirect.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RoutingRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RoutingRule;
  }

  @override
  void update(void Function(RoutingRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RoutingRule build() => _build();

  _$RoutingRule _build() {
    _$RoutingRule _$result;
    try {
      _$result = _$v ??
          new _$RoutingRule._(
              condition: _condition?.build(), redirect: redirect.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'condition';
        _condition?.build();
        _$failedField = 'redirect';
        redirect.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RoutingRule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
