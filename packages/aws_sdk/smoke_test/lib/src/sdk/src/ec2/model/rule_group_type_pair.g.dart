// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_group_type_pair.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleGroupTypePair extends RuleGroupTypePair {
  @override
  final String? ruleGroupArn;
  @override
  final String? ruleGroupType;

  factory _$RuleGroupTypePair(
          [void Function(RuleGroupTypePairBuilder)? updates]) =>
      (new RuleGroupTypePairBuilder()..update(updates))._build();

  _$RuleGroupTypePair._({this.ruleGroupArn, this.ruleGroupType}) : super._();

  @override
  RuleGroupTypePair rebuild(void Function(RuleGroupTypePairBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RuleGroupTypePairBuilder toBuilder() =>
      new RuleGroupTypePairBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleGroupTypePair &&
        ruleGroupArn == other.ruleGroupArn &&
        ruleGroupType == other.ruleGroupType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleGroupArn.hashCode);
    _$hash = $jc(_$hash, ruleGroupType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RuleGroupTypePairBuilder
    implements Builder<RuleGroupTypePair, RuleGroupTypePairBuilder> {
  _$RuleGroupTypePair? _$v;

  String? _ruleGroupArn;
  String? get ruleGroupArn => _$this._ruleGroupArn;
  set ruleGroupArn(String? ruleGroupArn) => _$this._ruleGroupArn = ruleGroupArn;

  String? _ruleGroupType;
  String? get ruleGroupType => _$this._ruleGroupType;
  set ruleGroupType(String? ruleGroupType) =>
      _$this._ruleGroupType = ruleGroupType;

  RuleGroupTypePairBuilder();

  RuleGroupTypePairBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleGroupArn = $v.ruleGroupArn;
      _ruleGroupType = $v.ruleGroupType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleGroupTypePair other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RuleGroupTypePair;
  }

  @override
  void update(void Function(RuleGroupTypePairBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleGroupTypePair build() => _build();

  _$RuleGroupTypePair _build() {
    final _$result = _$v ??
        new _$RuleGroupTypePair._(
            ruleGroupArn: ruleGroupArn, ruleGroupType: ruleGroupType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
