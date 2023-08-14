// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_acl_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalysisAclRule extends AnalysisAclRule {
  @override
  final String? cidr;
  @override
  final bool egress;
  @override
  final PortRange? portRange;
  @override
  final String? protocol;
  @override
  final String? ruleAction;
  @override
  final int ruleNumber;

  factory _$AnalysisAclRule([void Function(AnalysisAclRuleBuilder)? updates]) =>
      (new AnalysisAclRuleBuilder()..update(updates))._build();

  _$AnalysisAclRule._(
      {this.cidr,
      required this.egress,
      this.portRange,
      this.protocol,
      this.ruleAction,
      required this.ruleNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(egress, r'AnalysisAclRule', 'egress');
    BuiltValueNullFieldError.checkNotNull(
        ruleNumber, r'AnalysisAclRule', 'ruleNumber');
  }

  @override
  AnalysisAclRule rebuild(void Function(AnalysisAclRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalysisAclRuleBuilder toBuilder() =>
      new AnalysisAclRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalysisAclRule &&
        cidr == other.cidr &&
        egress == other.egress &&
        portRange == other.portRange &&
        protocol == other.protocol &&
        ruleAction == other.ruleAction &&
        ruleNumber == other.ruleNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jc(_$hash, egress.hashCode);
    _$hash = $jc(_$hash, portRange.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, ruleAction.hashCode);
    _$hash = $jc(_$hash, ruleNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AnalysisAclRuleBuilder
    implements Builder<AnalysisAclRule, AnalysisAclRuleBuilder> {
  _$AnalysisAclRule? _$v;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  bool? _egress;
  bool? get egress => _$this._egress;
  set egress(bool? egress) => _$this._egress = egress;

  PortRangeBuilder? _portRange;
  PortRangeBuilder get portRange =>
      _$this._portRange ??= new PortRangeBuilder();
  set portRange(PortRangeBuilder? portRange) => _$this._portRange = portRange;

  String? _protocol;
  String? get protocol => _$this._protocol;
  set protocol(String? protocol) => _$this._protocol = protocol;

  String? _ruleAction;
  String? get ruleAction => _$this._ruleAction;
  set ruleAction(String? ruleAction) => _$this._ruleAction = ruleAction;

  int? _ruleNumber;
  int? get ruleNumber => _$this._ruleNumber;
  set ruleNumber(int? ruleNumber) => _$this._ruleNumber = ruleNumber;

  AnalysisAclRuleBuilder() {
    AnalysisAclRule._init(this);
  }

  AnalysisAclRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidr = $v.cidr;
      _egress = $v.egress;
      _portRange = $v.portRange?.toBuilder();
      _protocol = $v.protocol;
      _ruleAction = $v.ruleAction;
      _ruleNumber = $v.ruleNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalysisAclRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnalysisAclRule;
  }

  @override
  void update(void Function(AnalysisAclRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalysisAclRule build() => _build();

  _$AnalysisAclRule _build() {
    _$AnalysisAclRule _$result;
    try {
      _$result = _$v ??
          new _$AnalysisAclRule._(
              cidr: cidr,
              egress: BuiltValueNullFieldError.checkNotNull(
                  egress, r'AnalysisAclRule', 'egress'),
              portRange: _portRange?.build(),
              protocol: protocol,
              ruleAction: ruleAction,
              ruleNumber: BuiltValueNullFieldError.checkNotNull(
                  ruleNumber, r'AnalysisAclRule', 'ruleNumber'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'portRange';
        _portRange?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AnalysisAclRule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
