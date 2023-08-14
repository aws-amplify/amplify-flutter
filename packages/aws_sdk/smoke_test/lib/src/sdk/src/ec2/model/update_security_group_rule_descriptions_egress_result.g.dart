// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_security_group_rule_descriptions_egress_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateSecurityGroupRuleDescriptionsEgressResult
    extends UpdateSecurityGroupRuleDescriptionsEgressResult {
  @override
  final bool return_;

  factory _$UpdateSecurityGroupRuleDescriptionsEgressResult(
          [void Function(
                  UpdateSecurityGroupRuleDescriptionsEgressResultBuilder)?
              updates]) =>
      (new UpdateSecurityGroupRuleDescriptionsEgressResultBuilder()
            ..update(updates))
          ._build();

  _$UpdateSecurityGroupRuleDescriptionsEgressResult._({required this.return_})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'UpdateSecurityGroupRuleDescriptionsEgressResult', 'return_');
  }

  @override
  UpdateSecurityGroupRuleDescriptionsEgressResult rebuild(
          void Function(UpdateSecurityGroupRuleDescriptionsEgressResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateSecurityGroupRuleDescriptionsEgressResultBuilder toBuilder() =>
      new UpdateSecurityGroupRuleDescriptionsEgressResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateSecurityGroupRuleDescriptionsEgressResult &&
        return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateSecurityGroupRuleDescriptionsEgressResultBuilder
    implements
        Builder<UpdateSecurityGroupRuleDescriptionsEgressResult,
            UpdateSecurityGroupRuleDescriptionsEgressResultBuilder> {
  _$UpdateSecurityGroupRuleDescriptionsEgressResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  UpdateSecurityGroupRuleDescriptionsEgressResultBuilder() {
    UpdateSecurityGroupRuleDescriptionsEgressResult._init(this);
  }

  UpdateSecurityGroupRuleDescriptionsEgressResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateSecurityGroupRuleDescriptionsEgressResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateSecurityGroupRuleDescriptionsEgressResult;
  }

  @override
  void update(
      void Function(UpdateSecurityGroupRuleDescriptionsEgressResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateSecurityGroupRuleDescriptionsEgressResult build() => _build();

  _$UpdateSecurityGroupRuleDescriptionsEgressResult _build() {
    final _$result = _$v ??
        new _$UpdateSecurityGroupRuleDescriptionsEgressResult._(
            return_: BuiltValueNullFieldError.checkNotNull(return_,
                r'UpdateSecurityGroupRuleDescriptionsEgressResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
