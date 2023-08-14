// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fleet_spot_maintenance_strategies_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FleetSpotMaintenanceStrategiesRequest
    extends FleetSpotMaintenanceStrategiesRequest {
  @override
  final FleetSpotCapacityRebalanceRequest? capacityRebalance;

  factory _$FleetSpotMaintenanceStrategiesRequest(
          [void Function(FleetSpotMaintenanceStrategiesRequestBuilder)?
              updates]) =>
      (new FleetSpotMaintenanceStrategiesRequestBuilder()..update(updates))
          ._build();

  _$FleetSpotMaintenanceStrategiesRequest._({this.capacityRebalance})
      : super._();

  @override
  FleetSpotMaintenanceStrategiesRequest rebuild(
          void Function(FleetSpotMaintenanceStrategiesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FleetSpotMaintenanceStrategiesRequestBuilder toBuilder() =>
      new FleetSpotMaintenanceStrategiesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FleetSpotMaintenanceStrategiesRequest &&
        capacityRebalance == other.capacityRebalance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, capacityRebalance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FleetSpotMaintenanceStrategiesRequestBuilder
    implements
        Builder<FleetSpotMaintenanceStrategiesRequest,
            FleetSpotMaintenanceStrategiesRequestBuilder> {
  _$FleetSpotMaintenanceStrategiesRequest? _$v;

  FleetSpotCapacityRebalanceRequestBuilder? _capacityRebalance;
  FleetSpotCapacityRebalanceRequestBuilder get capacityRebalance =>
      _$this._capacityRebalance ??=
          new FleetSpotCapacityRebalanceRequestBuilder();
  set capacityRebalance(
          FleetSpotCapacityRebalanceRequestBuilder? capacityRebalance) =>
      _$this._capacityRebalance = capacityRebalance;

  FleetSpotMaintenanceStrategiesRequestBuilder();

  FleetSpotMaintenanceStrategiesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityRebalance = $v.capacityRebalance?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FleetSpotMaintenanceStrategiesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FleetSpotMaintenanceStrategiesRequest;
  }

  @override
  void update(
      void Function(FleetSpotMaintenanceStrategiesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FleetSpotMaintenanceStrategiesRequest build() => _build();

  _$FleetSpotMaintenanceStrategiesRequest _build() {
    _$FleetSpotMaintenanceStrategiesRequest _$result;
    try {
      _$result = _$v ??
          new _$FleetSpotMaintenanceStrategiesRequest._(
              capacityRebalance: _capacityRebalance?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'capacityRebalance';
        _capacityRebalance?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FleetSpotMaintenanceStrategiesRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
