// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_group_rule_description.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SecurityGroupRuleDescription extends SecurityGroupRuleDescription {
  @override
  final String? securityGroupRuleId;
  @override
  final String? description;

  factory _$SecurityGroupRuleDescription(
          [void Function(SecurityGroupRuleDescriptionBuilder)? updates]) =>
      (new SecurityGroupRuleDescriptionBuilder()..update(updates))._build();

  _$SecurityGroupRuleDescription._({this.securityGroupRuleId, this.description})
      : super._();

  @override
  SecurityGroupRuleDescription rebuild(
          void Function(SecurityGroupRuleDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SecurityGroupRuleDescriptionBuilder toBuilder() =>
      new SecurityGroupRuleDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SecurityGroupRuleDescription &&
        securityGroupRuleId == other.securityGroupRuleId &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, securityGroupRuleId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SecurityGroupRuleDescriptionBuilder
    implements
        Builder<SecurityGroupRuleDescription,
            SecurityGroupRuleDescriptionBuilder> {
  _$SecurityGroupRuleDescription? _$v;

  String? _securityGroupRuleId;
  String? get securityGroupRuleId => _$this._securityGroupRuleId;
  set securityGroupRuleId(String? securityGroupRuleId) =>
      _$this._securityGroupRuleId = securityGroupRuleId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  SecurityGroupRuleDescriptionBuilder();

  SecurityGroupRuleDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _securityGroupRuleId = $v.securityGroupRuleId;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SecurityGroupRuleDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SecurityGroupRuleDescription;
  }

  @override
  void update(void Function(SecurityGroupRuleDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SecurityGroupRuleDescription build() => _build();

  _$SecurityGroupRuleDescription _build() {
    final _$result = _$v ??
        new _$SecurityGroupRuleDescription._(
            securityGroupRuleId: securityGroupRuleId, description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
