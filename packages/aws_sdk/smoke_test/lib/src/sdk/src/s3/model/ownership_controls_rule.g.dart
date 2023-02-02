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
    var _$hash = 0;
    _$hash = $jc(_$hash, objectOwnership.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
