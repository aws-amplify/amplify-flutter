// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_security_group_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalysisSecurityGroupRule extends AnalysisSecurityGroupRule {
  @override
  final String? cidr;
  @override
  final String? direction;
  @override
  final String? securityGroupId;
  @override
  final PortRange? portRange;
  @override
  final String? prefixListId;
  @override
  final String? protocol;

  factory _$AnalysisSecurityGroupRule(
          [void Function(AnalysisSecurityGroupRuleBuilder)? updates]) =>
      (new AnalysisSecurityGroupRuleBuilder()..update(updates))._build();

  _$AnalysisSecurityGroupRule._(
      {this.cidr,
      this.direction,
      this.securityGroupId,
      this.portRange,
      this.prefixListId,
      this.protocol})
      : super._();

  @override
  AnalysisSecurityGroupRule rebuild(
          void Function(AnalysisSecurityGroupRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalysisSecurityGroupRuleBuilder toBuilder() =>
      new AnalysisSecurityGroupRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalysisSecurityGroupRule &&
        cidr == other.cidr &&
        direction == other.direction &&
        securityGroupId == other.securityGroupId &&
        portRange == other.portRange &&
        prefixListId == other.prefixListId &&
        protocol == other.protocol;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jc(_$hash, securityGroupId.hashCode);
    _$hash = $jc(_$hash, portRange.hashCode);
    _$hash = $jc(_$hash, prefixListId.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AnalysisSecurityGroupRuleBuilder
    implements
        Builder<AnalysisSecurityGroupRule, AnalysisSecurityGroupRuleBuilder> {
  _$AnalysisSecurityGroupRule? _$v;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  String? _direction;
  String? get direction => _$this._direction;
  set direction(String? direction) => _$this._direction = direction;

  String? _securityGroupId;
  String? get securityGroupId => _$this._securityGroupId;
  set securityGroupId(String? securityGroupId) =>
      _$this._securityGroupId = securityGroupId;

  PortRangeBuilder? _portRange;
  PortRangeBuilder get portRange =>
      _$this._portRange ??= new PortRangeBuilder();
  set portRange(PortRangeBuilder? portRange) => _$this._portRange = portRange;

  String? _prefixListId;
  String? get prefixListId => _$this._prefixListId;
  set prefixListId(String? prefixListId) => _$this._prefixListId = prefixListId;

  String? _protocol;
  String? get protocol => _$this._protocol;
  set protocol(String? protocol) => _$this._protocol = protocol;

  AnalysisSecurityGroupRuleBuilder();

  AnalysisSecurityGroupRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidr = $v.cidr;
      _direction = $v.direction;
      _securityGroupId = $v.securityGroupId;
      _portRange = $v.portRange?.toBuilder();
      _prefixListId = $v.prefixListId;
      _protocol = $v.protocol;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalysisSecurityGroupRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnalysisSecurityGroupRule;
  }

  @override
  void update(void Function(AnalysisSecurityGroupRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalysisSecurityGroupRule build() => _build();

  _$AnalysisSecurityGroupRule _build() {
    _$AnalysisSecurityGroupRule _$result;
    try {
      _$result = _$v ??
          new _$AnalysisSecurityGroupRule._(
              cidr: cidr,
              direction: direction,
              securityGroupId: securityGroupId,
              portRange: _portRange?.build(),
              prefixListId: prefixListId,
              protocol: protocol);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'portRange';
        _portRange?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AnalysisSecurityGroupRule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
