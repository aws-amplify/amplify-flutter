// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_capacity_rebalance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpotCapacityRebalance extends SpotCapacityRebalance {
  @override
  final ReplacementStrategy? replacementStrategy;
  @override
  final int terminationDelay;

  factory _$SpotCapacityRebalance(
          [void Function(SpotCapacityRebalanceBuilder)? updates]) =>
      (new SpotCapacityRebalanceBuilder()..update(updates))._build();

  _$SpotCapacityRebalance._(
      {this.replacementStrategy, required this.terminationDelay})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        terminationDelay, r'SpotCapacityRebalance', 'terminationDelay');
  }

  @override
  SpotCapacityRebalance rebuild(
          void Function(SpotCapacityRebalanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpotCapacityRebalanceBuilder toBuilder() =>
      new SpotCapacityRebalanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpotCapacityRebalance &&
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

class SpotCapacityRebalanceBuilder
    implements Builder<SpotCapacityRebalance, SpotCapacityRebalanceBuilder> {
  _$SpotCapacityRebalance? _$v;

  ReplacementStrategy? _replacementStrategy;
  ReplacementStrategy? get replacementStrategy => _$this._replacementStrategy;
  set replacementStrategy(ReplacementStrategy? replacementStrategy) =>
      _$this._replacementStrategy = replacementStrategy;

  int? _terminationDelay;
  int? get terminationDelay => _$this._terminationDelay;
  set terminationDelay(int? terminationDelay) =>
      _$this._terminationDelay = terminationDelay;

  SpotCapacityRebalanceBuilder() {
    SpotCapacityRebalance._init(this);
  }

  SpotCapacityRebalanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _replacementStrategy = $v.replacementStrategy;
      _terminationDelay = $v.terminationDelay;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpotCapacityRebalance other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpotCapacityRebalance;
  }

  @override
  void update(void Function(SpotCapacityRebalanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpotCapacityRebalance build() => _build();

  _$SpotCapacityRebalance _build() {
    final _$result = _$v ??
        new _$SpotCapacityRebalance._(
            replacementStrategy: replacementStrategy,
            terminationDelay: BuiltValueNullFieldError.checkNotNull(
                terminationDelay,
                r'SpotCapacityRebalance',
                'terminationDelay'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
