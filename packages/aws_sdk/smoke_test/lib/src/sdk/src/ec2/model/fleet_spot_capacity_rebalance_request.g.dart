// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fleet_spot_capacity_rebalance_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FleetSpotCapacityRebalanceRequest
    extends FleetSpotCapacityRebalanceRequest {
  @override
  final FleetReplacementStrategy? replacementStrategy;
  @override
  final int terminationDelay;

  factory _$FleetSpotCapacityRebalanceRequest(
          [void Function(FleetSpotCapacityRebalanceRequestBuilder)? updates]) =>
      (new FleetSpotCapacityRebalanceRequestBuilder()..update(updates))
          ._build();

  _$FleetSpotCapacityRebalanceRequest._(
      {this.replacementStrategy, required this.terminationDelay})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(terminationDelay,
        r'FleetSpotCapacityRebalanceRequest', 'terminationDelay');
  }

  @override
  FleetSpotCapacityRebalanceRequest rebuild(
          void Function(FleetSpotCapacityRebalanceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FleetSpotCapacityRebalanceRequestBuilder toBuilder() =>
      new FleetSpotCapacityRebalanceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FleetSpotCapacityRebalanceRequest &&
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

class FleetSpotCapacityRebalanceRequestBuilder
    implements
        Builder<FleetSpotCapacityRebalanceRequest,
            FleetSpotCapacityRebalanceRequestBuilder> {
  _$FleetSpotCapacityRebalanceRequest? _$v;

  FleetReplacementStrategy? _replacementStrategy;
  FleetReplacementStrategy? get replacementStrategy =>
      _$this._replacementStrategy;
  set replacementStrategy(FleetReplacementStrategy? replacementStrategy) =>
      _$this._replacementStrategy = replacementStrategy;

  int? _terminationDelay;
  int? get terminationDelay => _$this._terminationDelay;
  set terminationDelay(int? terminationDelay) =>
      _$this._terminationDelay = terminationDelay;

  FleetSpotCapacityRebalanceRequestBuilder() {
    FleetSpotCapacityRebalanceRequest._init(this);
  }

  FleetSpotCapacityRebalanceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _replacementStrategy = $v.replacementStrategy;
      _terminationDelay = $v.terminationDelay;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FleetSpotCapacityRebalanceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FleetSpotCapacityRebalanceRequest;
  }

  @override
  void update(
      void Function(FleetSpotCapacityRebalanceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FleetSpotCapacityRebalanceRequest build() => _build();

  _$FleetSpotCapacityRebalanceRequest _build() {
    final _$result = _$v ??
        new _$FleetSpotCapacityRebalanceRequest._(
            replacementStrategy: replacementStrategy,
            terminationDelay: BuiltValueNullFieldError.checkNotNull(
                terminationDelay,
                r'FleetSpotCapacityRebalanceRequest',
                'terminationDelay'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
