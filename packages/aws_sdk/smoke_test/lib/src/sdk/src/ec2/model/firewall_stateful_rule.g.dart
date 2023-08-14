// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firewall_stateful_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FirewallStatefulRule extends FirewallStatefulRule {
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
  final String? protocol;
  @override
  final String? ruleAction;
  @override
  final String? direction;

  factory _$FirewallStatefulRule(
          [void Function(FirewallStatefulRuleBuilder)? updates]) =>
      (new FirewallStatefulRuleBuilder()..update(updates))._build();

  _$FirewallStatefulRule._(
      {this.ruleGroupArn,
      this.sources,
      this.destinations,
      this.sourcePorts,
      this.destinationPorts,
      this.protocol,
      this.ruleAction,
      this.direction})
      : super._();

  @override
  FirewallStatefulRule rebuild(
          void Function(FirewallStatefulRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FirewallStatefulRuleBuilder toBuilder() =>
      new FirewallStatefulRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FirewallStatefulRule &&
        ruleGroupArn == other.ruleGroupArn &&
        sources == other.sources &&
        destinations == other.destinations &&
        sourcePorts == other.sourcePorts &&
        destinationPorts == other.destinationPorts &&
        protocol == other.protocol &&
        ruleAction == other.ruleAction &&
        direction == other.direction;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleGroupArn.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, destinations.hashCode);
    _$hash = $jc(_$hash, sourcePorts.hashCode);
    _$hash = $jc(_$hash, destinationPorts.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, ruleAction.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FirewallStatefulRuleBuilder
    implements Builder<FirewallStatefulRule, FirewallStatefulRuleBuilder> {
  _$FirewallStatefulRule? _$v;

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

  String? _protocol;
  String? get protocol => _$this._protocol;
  set protocol(String? protocol) => _$this._protocol = protocol;

  String? _ruleAction;
  String? get ruleAction => _$this._ruleAction;
  set ruleAction(String? ruleAction) => _$this._ruleAction = ruleAction;

  String? _direction;
  String? get direction => _$this._direction;
  set direction(String? direction) => _$this._direction = direction;

  FirewallStatefulRuleBuilder();

  FirewallStatefulRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleGroupArn = $v.ruleGroupArn;
      _sources = $v.sources?.toBuilder();
      _destinations = $v.destinations?.toBuilder();
      _sourcePorts = $v.sourcePorts?.toBuilder();
      _destinationPorts = $v.destinationPorts?.toBuilder();
      _protocol = $v.protocol;
      _ruleAction = $v.ruleAction;
      _direction = $v.direction;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FirewallStatefulRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FirewallStatefulRule;
  }

  @override
  void update(void Function(FirewallStatefulRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FirewallStatefulRule build() => _build();

  _$FirewallStatefulRule _build() {
    _$FirewallStatefulRule _$result;
    try {
      _$result = _$v ??
          new _$FirewallStatefulRule._(
              ruleGroupArn: ruleGroupArn,
              sources: _sources?.build(),
              destinations: _destinations?.build(),
              sourcePorts: _sourcePorts?.build(),
              destinationPorts: _destinationPorts?.build(),
              protocol: protocol,
              ruleAction: ruleAction,
              direction: direction);
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
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FirewallStatefulRule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
