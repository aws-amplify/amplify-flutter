// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fleet_spot_capacity_rebalance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FleetSpotCapacityRebalance extends FleetSpotCapacityRebalance {
  @override
  final FleetReplacementStrategy? replacementStrategy;
  @override
  final int terminationDelay;

  factory _$FleetSpotCapacityRebalance(
          [void Function(FleetSpotCapacityRebalanceBuilder)? updates]) =>
      (new FleetSpotCapacityRebalanceBuilder()..update(updates))._build();

  _$FleetSpotCapacityRebalance._(
      {this.replacementStrategy, required this.terminationDelay})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        terminationDelay, r'FleetSpotCapacityRebalance', 'terminationDelay');
  }

  @override
  FleetSpotCapacityRebalance rebuild(
          void Function(FleetSpotCapacityRebalanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FleetSpotCapacityRebalanceBuilder toBuilder() =>
      new FleetSpotCapacityRebalanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FleetSpotCapacityRebalance &&
        replacementStrategy == other.replacementStrategy &&
        terminationDelay == other.terminationDelay;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, replacementStrategy.hashCode);
    _$hash = $jc(_$hash, terminationDelay.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FleetSpotCapacityRebalanceBuilder
    implements
        Builder<FleetSpotCapacityRebalance, FleetSpotCapacityRebalanceBuilder> {
  _$FleetSpotCapacityRebalance? _$v;

  FleetReplacementStrategy? _replacementStrategy;
  FleetReplacementStrategy? get replacementStrategy =>
      _$this._replacementStrategy;
  set replacementStrategy(FleetReplacementStrategy? replacementStrategy) =>
      _$this._replacementStrategy = replacementStrategy;

  int? _terminationDelay;
  int? get terminationDelay => _$this._terminationDelay;
  set terminationDelay(int? terminationDelay) =>
      _$this._terminationDelay = terminationDelay;

  FleetSpotCapacityRebalanceBuilder() {
    FleetSpotCapacityRebalance._init(this);
  }

  FleetSpotCapacityRebalanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _replacementStrategy = $v.replacementStrategy;
      _terminationDelay = $v.terminationDelay;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FleetSpotCapacityRebalance other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FleetSpotCapacityRebalance;
  }

  @override
  void update(void Function(FleetSpotCapacityRebalanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FleetSpotCapacityRebalance build() => _build();

  _$FleetSpotCapacityRebalance _build() {
    final _$result = _$v ??
        new _$FleetSpotCapacityRebalance._(
            replacementStrategy: replacementStrategy,
            terminationDelay: BuiltValueNullFieldError.checkNotNull(
                terminationDelay,
                r'FleetSpotCapacityRebalance',
                'terminationDelay'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
