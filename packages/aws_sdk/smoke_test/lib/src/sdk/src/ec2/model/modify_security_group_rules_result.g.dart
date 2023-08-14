// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_security_group_rules_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifySecurityGroupRulesResult extends ModifySecurityGroupRulesResult {
  @override
  final bool return_;

  factory _$ModifySecurityGroupRulesResult(
          [void Function(ModifySecurityGroupRulesResultBuilder)? updates]) =>
      (new ModifySecurityGroupRulesResultBuilder()..update(updates))._build();

  _$ModifySecurityGroupRulesResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'ModifySecurityGroupRulesResult', 'return_');
  }

  @override
  ModifySecurityGroupRulesResult rebuild(
          void Function(ModifySecurityGroupRulesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifySecurityGroupRulesResultBuilder toBuilder() =>
      new ModifySecurityGroupRulesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifySecurityGroupRulesResult && return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifySecurityGroupRulesResultBuilder
    implements
        Builder<ModifySecurityGroupRulesResult,
            ModifySecurityGroupRulesResultBuilder> {
  _$ModifySecurityGroupRulesResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  ModifySecurityGroupRulesResultBuilder() {
    ModifySecurityGroupRulesResult._init(this);
  }

  ModifySecurityGroupRulesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifySecurityGroupRulesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifySecurityGroupRulesResult;
  }

  @override
  void update(void Function(ModifySecurityGroupRulesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifySecurityGroupRulesResult build() => _build();

  _$ModifySecurityGroupRulesResult _build() {
    final _$result = _$v ??
        new _$ModifySecurityGroupRulesResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'ModifySecurityGroupRulesResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
