// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firewall_stateless_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FirewallStatelessRule extends FirewallStatelessRule {
  @override
  final String? ruleGroupArn;
  @override
  final _i2.BuiltList<String>? sources;
  @override
  final _i2.BuiltList<String>? destinations;
  @override
  final _i2.BuiltList<PortRange>? sourcePorts;
  @override
  final _i2.BuiltList<PortRange>? destinationPorts;
  @override
  final _i2.BuiltList<int>? protocols;
  @override
  final String? ruleAction;
  @override
  final int priority;

  factory _$FirewallStatelessRule(
          [void Function(FirewallStatelessRuleBuilder)? updates]) =>
      (new FirewallStatelessRuleBuilder()..update(updates))._build();

  _$FirewallStatelessRule._(
      {this.ruleGroupArn,
      this.sources,
      this.destinations,
      this.sourcePorts,
      this.destinationPorts,
      this.protocols,
      this.ruleAction,
      required this.priority})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        priority, r'FirewallStatelessRule', 'priority');
  }

  @override
  FirewallStatelessRule rebuild(
          void Function(FirewallStatelessRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FirewallStatelessRuleBuilder toBuilder() =>
      new FirewallStatelessRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FirewallStatelessRule &&
        ruleGroupArn == other.ruleGroupArn &&
        sources == other.sources &&
        destinations == other.destinations &&
        sourcePorts == other.sourcePorts &&
        destinationPorts == other.destinationPorts &&
        protocols == other.protocols &&
        ruleAction == other.ruleAction &&
        priority == other.priority;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleGroupArn.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, destinations.hashCode);
    _$hash = $jc(_$hash, sourcePorts.hashCode);
    _$hash = $jc(_$hash, destinationPorts.hashCode);
    _$hash = $jc(_$hash, protocols.hashCode);
    _$hash = $jc(_$hash, ruleAction.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FirewallStatelessRuleBuilder
    implements Builder<FirewallStatelessRule, FirewallStatelessRuleBuilder> {
  _$FirewallStatelessRule? _$v;

  String? _ruleGroupArn;
  String? get ruleGroupArn => _$this._ruleGroupArn;
  set ruleGroupArn(String? ruleGroupArn) => _$this._ruleGroupArn = ruleGroupArn;

  _i2.ListBuilder<String>? _sources;
  _i2.ListBuilder<String> get sources =>
      _$this._sources ??= new _i2.ListBuilder<String>();
  set sources(_i2.ListBuilder<String>? sources) => _$this._sources = sources;

  _i2.ListBuilder<String>? _destinations;
  _i2.ListBuilder<String> get destinations =>
      _$this._destinations ??= new _i2.ListBuilder<String>();
  set destinations(_i2.ListBuilder<String>? destinations) =>
      _$this._destinations = destinations;

  _i2.ListBuilder<PortRange>? _sourcePorts;
  _i2.ListBuilder<PortRange> get sourcePorts =>
      _$this._sourcePorts ??= new _i2.ListBuilder<PortRange>();
  set sourcePorts(_i2.ListBuilder<PortRange>? sourcePorts) =>
      _$this._sourcePorts = sourcePorts;

  _i2.ListBuilder<PortRange>? _destinationPorts;
  _i2.ListBuilder<PortRange> get destinationPorts =>
      _$this._destinationPorts ??= new _i2.ListBuilder<PortRange>();
  set destinationPorts(_i2.ListBuilder<PortRange>? destinationPorts) =>
      _$this._destinationPorts = destinationPorts;

  _i2.ListBuilder<int>? _protocols;
  _i2.ListBuilder<int> get protocols =>
      _$this._protocols ??= new _i2.ListBuilder<int>();
  set protocols(_i2.ListBuilder<int>? protocols) =>
      _$this._protocols = protocols;

  String? _ruleAction;
  String? get ruleAction => _$this._ruleAction;
  set ruleAction(String? ruleAction) => _$this._ruleAction = ruleAction;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  FirewallStatelessRuleBuilder() {
    FirewallStatelessRule._init(this);
  }

  FirewallStatelessRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleGroupArn = $v.ruleGroupArn;
      _sources = $v.sources?.toBuilder();
      _destinations = $v.destinations?.toBuilder();
      _sourcePorts = $v.sourcePorts?.toBuilder();
      _destinationPorts = $v.destinationPorts?.toBuilder();
      _protocols = $v.protocols?.toBuilder();
      _ruleAction = $v.ruleAction;
      _priority = $v.priority;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FirewallStatelessRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FirewallStatelessRule;
  }

  @override
  void update(void Function(FirewallStatelessRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FirewallStatelessRule build() => _build();

  _$FirewallStatelessRule _build() {
    _$FirewallStatelessRule _$result;
    try {
      _$result = _$v ??
          new _$FirewallStatelessRule._(
              ruleGroupArn: ruleGroupArn,
              sources: _sources?.build(),
              destinations: _destinations?.build(),
              sourcePorts: _sourcePorts?.build(),
              destinationPorts: _destinationPorts?.build(),
              protocols: _protocols?.build(),
              ruleAction: ruleAction,
              priority: BuiltValueNullFieldError.checkNotNull(
                  priority, r'FirewallStatelessRule', 'priority'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        _sources?.build();
        _$failedField = 'destinations';
        _destinations?.build();
        _$failedField = 'sourcePorts';
        _sourcePorts?.build();
        _$failedField = 'destinationPorts';
        _destinationPorts?.build();
        _$failedField = 'protocols';
        _protocols?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FirewallStatelessRule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
