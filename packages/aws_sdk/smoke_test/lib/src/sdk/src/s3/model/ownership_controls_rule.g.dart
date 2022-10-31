// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.ownership_controls_rule;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OwnershipControlsRule extends OwnershipControlsRule {
  @override
  final _i2.ObjectOwnership objectOwnership;

  factory _$OwnershipControlsRule(
          [void Function(OwnershipControlsRuleBuilder)? updates]) =>
      (new OwnershipControlsRuleBuilder()..update(updates))._build();

  _$OwnershipControlsRule._({required this.objectOwnership}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        objectOwnership, r'OwnershipControlsRule', 'objectOwnership');
  }

  @override
  OwnershipControlsRule rebuild(
          void Function(OwnershipControlsRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OwnershipControlsRuleBuilder toBuilder() =>
      new OwnershipControlsRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OwnershipControlsRule &&
        objectOwnership == other.objectOwnership;
  }

  @override
  int get hashCode {
    return $jf($jc(0, objectOwnership.hashCode));
  }
}

class OwnershipControlsRuleBuilder
    implements Builder<OwnershipControlsRule, OwnershipControlsRuleBuilder> {
  _$OwnershipControlsRule? _$v;

  _i2.ObjectOwnership? _objectOwnership;
  _i2.ObjectOwnership? get objectOwnership => _$this._objectOwnership;
  set objectOwnership(_i2.ObjectOwnership? objectOwnership) =>
      _$this._objectOwnership = objectOwnership;

  OwnershipControlsRuleBuilder() {
    OwnershipControlsRule._init(this);
  }

  OwnershipControlsRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _objectOwnership = $v.objectOwnership;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OwnershipControlsRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OwnershipControlsRule;
  }

  @override
  void update(void Function(OwnershipControlsRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OwnershipControlsRule build() => _build();

  _$OwnershipControlsRule _build() {
    final _$result = _$v ??
        new _$OwnershipControlsRule._(
            objectOwnership: BuiltValueNullFieldError.checkNotNull(
                objectOwnership, r'OwnershipControlsRule', 'objectOwnership'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
