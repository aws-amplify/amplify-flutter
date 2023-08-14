// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_maintenance_strategies.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpotMaintenanceStrategies extends SpotMaintenanceStrategies {
  @override
  final SpotCapacityRebalance? capacityRebalance;

  factory _$SpotMaintenanceStrategies(
          [void Function(SpotMaintenanceStrategiesBuilder)? updates]) =>
      (new SpotMaintenanceStrategiesBuilder()..update(updates))._build();

  _$SpotMaintenanceStrategies._({this.capacityRebalance}) : super._();

  @override
  SpotMaintenanceStrategies rebuild(
          void Function(SpotMaintenanceStrategiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpotMaintenanceStrategiesBuilder toBuilder() =>
      new SpotMaintenanceStrategiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpotMaintenanceStrategies &&
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

class SpotMaintenanceStrategiesBuilder
    implements
        Builder<SpotMaintenanceStrategies, SpotMaintenanceStrategiesBuilder> {
  _$SpotMaintenanceStrategies? _$v;

  SpotCapacityRebalanceBuilder? _capacityRebalance;
  SpotCapacityRebalanceBuilder get capacityRebalance =>
      _$this._capacityRebalance ??= new SpotCapacityRebalanceBuilder();
  set capacityRebalance(SpotCapacityRebalanceBuilder? capacityRebalance) =>
      _$this._capacityRebalance = capacityRebalance;

  SpotMaintenanceStrategiesBuilder();

  SpotMaintenanceStrategiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityRebalance = $v.capacityRebalance?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpotMaintenanceStrategies other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpotMaintenanceStrategies;
  }

  @override
  void update(void Function(SpotMaintenanceStrategiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpotMaintenanceStrategies build() => _build();

  _$SpotMaintenanceStrategies _build() {
    _$SpotMaintenanceStrategies _$result;
    try {
      _$result = _$v ??
          new _$SpotMaintenanceStrategies._(
              capacityRebalance: _capacityRebalance?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'capacityRebalance';
        _capacityRebalance?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SpotMaintenanceStrategies', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
