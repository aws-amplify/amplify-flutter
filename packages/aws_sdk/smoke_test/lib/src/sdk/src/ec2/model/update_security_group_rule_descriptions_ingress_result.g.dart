// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_security_group_rule_descriptions_ingress_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateSecurityGroupRuleDescriptionsIngressResult
    extends UpdateSecurityGroupRuleDescriptionsIngressResult {
  @override
  final bool return_;

  factory _$UpdateSecurityGroupRuleDescriptionsIngressResult(
          [void Function(
                  UpdateSecurityGroupRuleDescriptionsIngressResultBuilder)?
              updates]) =>
      (new UpdateSecurityGroupRuleDescriptionsIngressResultBuilder()
            ..update(updates))
          ._build();

  _$UpdateSecurityGroupRuleDescriptionsIngressResult._({required this.return_})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(return_,
        r'UpdateSecurityGroupRuleDescriptionsIngressResult', 'return_');
  }

  @override
  UpdateSecurityGroupRuleDescriptionsIngressResult rebuild(
          void Function(UpdateSecurityGroupRuleDescriptionsIngressResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateSecurityGroupRuleDescriptionsIngressResultBuilder toBuilder() =>
      new UpdateSecurityGroupRuleDescriptionsIngressResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateSecurityGroupRuleDescriptionsIngressResult &&
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

class UpdateSecurityGroupRuleDescriptionsIngressResultBuilder
    implements
        Builder<UpdateSecurityGroupRuleDescriptionsIngressResult,
            UpdateSecurityGroupRuleDescriptionsIngressResultBuilder> {
  _$UpdateSecurityGroupRuleDescriptionsIngressResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  UpdateSecurityGroupRuleDescriptionsIngressResultBuilder() {
    UpdateSecurityGroupRuleDescriptionsIngressResult._init(this);
  }

  UpdateSecurityGroupRuleDescriptionsIngressResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateSecurityGroupRuleDescriptionsIngressResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateSecurityGroupRuleDescriptionsIngressResult;
  }

  @override
  void update(
      void Function(UpdateSecurityGroupRuleDescriptionsIngressResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateSecurityGroupRuleDescriptionsIngressResult build() => _build();

  _$UpdateSecurityGroupRuleDescriptionsIngressResult _build() {
    final _$result = _$v ??
        new _$UpdateSecurityGroupRuleDescriptionsIngressResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_,
                r'UpdateSecurityGroupRuleDescriptionsIngressResult',
                'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
