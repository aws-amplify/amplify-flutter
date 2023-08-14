// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'traffic_mirror_filter_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrafficMirrorFilterRule extends TrafficMirrorFilterRule {
  @override
  final String? trafficMirrorFilterRuleId;
  @override
  final String? trafficMirrorFilterId;
  @override
  final TrafficDirection? trafficDirection;
  @override
  final int ruleNumber;
  @override
  final TrafficMirrorRuleAction? ruleAction;
  @override
  final int protocol;
  @override
  final TrafficMirrorPortRange? destinationPortRange;
  @override
  final TrafficMirrorPortRange? sourcePortRange;
  @override
  final String? destinationCidrBlock;
  @override
  final String? sourceCidrBlock;
  @override
  final String? description;

  factory _$TrafficMirrorFilterRule(
          [void Function(TrafficMirrorFilterRuleBuilder)? updates]) =>
      (new TrafficMirrorFilterRuleBuilder()..update(updates))._build();

  _$TrafficMirrorFilterRule._(
      {this.trafficMirrorFilterRuleId,
      this.trafficMirrorFilterId,
      this.trafficDirection,
      required this.ruleNumber,
      this.ruleAction,
      required this.protocol,
      this.destinationPortRange,
      this.sourcePortRange,
      this.destinationCidrBlock,
      this.sourceCidrBlock,
      this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        ruleNumber, r'TrafficMirrorFilterRule', 'ruleNumber');
    BuiltValueNullFieldError.checkNotNull(
        protocol, r'TrafficMirrorFilterRule', 'protocol');
  }

  @override
  TrafficMirrorFilterRule rebuild(
          void Function(TrafficMirrorFilterRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrafficMirrorFilterRuleBuilder toBuilder() =>
      new TrafficMirrorFilterRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrafficMirrorFilterRule &&
        trafficMirrorFilterRuleId == other.trafficMirrorFilterRuleId &&
        trafficMirrorFilterId == other.trafficMirrorFilterId &&
        trafficDirection == other.trafficDirection &&
        ruleNumber == other.ruleNumber &&
        ruleAction == other.ruleAction &&
        protocol == other.protocol &&
        destinationPortRange == other.destinationPortRange &&
        sourcePortRange == other.sourcePortRange &&
        destinationCidrBlock == other.destinationCidrBlock &&
        sourceCidrBlock == other.sourceCidrBlock &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorFilterRuleId.hashCode);
    _$hash = $jc(_$hash, trafficMirrorFilterId.hashCode);
    _$hash = $jc(_$hash, trafficDirection.hashCode);
    _$hash = $jc(_$hash, ruleNumber.hashCode);
    _$hash = $jc(_$hash, ruleAction.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, destinationPortRange.hashCode);
    _$hash = $jc(_$hash, sourcePortRange.hashCode);
    _$hash = $jc(_$hash, destinationCidrBlock.hashCode);
    _$hash = $jc(_$hash, sourceCidrBlock.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TrafficMirrorFilterRuleBuilder
    implements
        Builder<TrafficMirrorFilterRule, TrafficMirrorFilterRuleBuilder> {
  _$TrafficMirrorFilterRule? _$v;

  String? _trafficMirrorFilterRuleId;
  String? get trafficMirrorFilterRuleId => _$this._trafficMirrorFilterRuleId;
  set trafficMirrorFilterRuleId(String? trafficMirrorFilterRuleId) =>
      _$this._trafficMirrorFilterRuleId = trafficMirrorFilterRuleId;

  String? _trafficMirrorFilterId;
  String? get trafficMirrorFilterId => _$this._trafficMirrorFilterId;
  set trafficMirrorFilterId(String? trafficMirrorFilterId) =>
      _$this._trafficMirrorFilterId = trafficMirrorFilterId;

  TrafficDirection? _trafficDirection;
  TrafficDirection? get trafficDirection => _$this._trafficDirection;
  set trafficDirection(TrafficDirection? trafficDirection) =>
      _$this._trafficDirection = trafficDirection;

  int? _ruleNumber;
  int? get ruleNumber => _$this._ruleNumber;
  set ruleNumber(int? ruleNumber) => _$this._ruleNumber = ruleNumber;

  TrafficMirrorRuleAction? _ruleAction;
  TrafficMirrorRuleAction? get ruleAction => _$this._ruleAction;
  set ruleAction(TrafficMirrorRuleAction? ruleAction) =>
      _$this._ruleAction = ruleAction;

  int? _protocol;
  int? get protocol => _$this._protocol;
  set protocol(int? protocol) => _$this._protocol = protocol;

  TrafficMirrorPortRangeBuilder? _destinationPortRange;
  TrafficMirrorPortRangeBuilder get destinationPortRange =>
      _$this._destinationPortRange ??= new TrafficMirrorPortRangeBuilder();
  set destinationPortRange(
          TrafficMirrorPortRangeBuilder? destinationPortRange) =>
      _$this._destinationPortRange = destinationPortRange;

  TrafficMirrorPortRangeBuilder? _sourcePortRange;
  TrafficMirrorPortRangeBuilder get sourcePortRange =>
      _$this._sourcePortRange ??= new TrafficMirrorPortRangeBuilder();
  set sourcePortRange(TrafficMirrorPortRangeBuilder? sourcePortRange) =>
      _$this._sourcePortRange = sourcePortRange;

  String? _destinationCidrBlock;
  String? get destinationCidrBlock => _$this._destinationCidrBlock;
  set destinationCidrBlock(String? destinationCidrBlock) =>
      _$this._destinationCidrBlock = destinationCidrBlock;

  String? _sourceCidrBlock;
  String? get sourceCidrBlock => _$this._sourceCidrBlock;
  set sourceCidrBlock(String? sourceCidrBlock) =>
      _$this._sourceCidrBlock = sourceCidrBlock;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  TrafficMirrorFilterRuleBuilder() {
    TrafficMirrorFilterRule._init(this);
  }

  TrafficMirrorFilterRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorFilterRuleId = $v.trafficMirrorFilterRuleId;
      _trafficMirrorFilterId = $v.trafficMirrorFilterId;
      _trafficDirection = $v.trafficDirection;
      _ruleNumber = $v.ruleNumber;
      _ruleAction = $v.ruleAction;
      _protocol = $v.protocol;
      _destinationPortRange = $v.destinationPortRange?.toBuilder();
      _sourcePortRange = $v.sourcePortRange?.toBuilder();
      _destinationCidrBlock = $v.destinationCidrBlock;
      _sourceCidrBlock = $v.sourceCidrBlock;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrafficMirrorFilterRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrafficMirrorFilterRule;
  }

  @override
  void update(void Function(TrafficMirrorFilterRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrafficMirrorFilterRule build() => _build();

  _$TrafficMirrorFilterRule _build() {
    _$TrafficMirrorFilterRule _$result;
    try {
      _$result = _$v ??
          new _$TrafficMirrorFilterRule._(
              trafficMirrorFilterRuleId: trafficMirrorFilterRuleId,
              trafficMirrorFilterId: trafficMirrorFilterId,
              trafficDirection: trafficDirection,
              ruleNumber: BuiltValueNullFieldError.checkNotNull(
                  ruleNumber, r'TrafficMirrorFilterRule', 'ruleNumber'),
              ruleAction: ruleAction,
              protocol: BuiltValueNullFieldError.checkNotNull(
                  protocol, r'TrafficMirrorFilterRule', 'protocol'),
              destinationPortRange: _destinationPortRange?.build(),
              sourcePortRange: _sourcePortRange?.build(),
              destinationCidrBlock: destinationCidrBlock,
              sourceCidrBlock: sourceCidrBlock,
              description: description);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'destinationPortRange';
        _destinationPortRange?.build();
        _$failedField = 'sourcePortRange';
        _sourcePortRange?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TrafficMirrorFilterRule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
