// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capacity_reservation_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CapacityReservationOptions extends CapacityReservationOptions {
  @override
  final FleetCapacityReservationUsageStrategy? usageStrategy;

  factory _$CapacityReservationOptions(
          [void Function(CapacityReservationOptionsBuilder)? updates]) =>
      (new CapacityReservationOptionsBuilder()..update(updates))._build();

  _$CapacityReservationOptions._({this.usageStrategy}) : super._();

  @override
  CapacityReservationOptions rebuild(
          void Function(CapacityReservationOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CapacityReservationOptionsBuilder toBuilder() =>
      new CapacityReservationOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CapacityReservationOptions &&
        usageStrategy == other.usageStrategy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, usageStrategy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CapacityReservationOptionsBuilder
    implements
        Builder<CapacityReservationOptions, CapacityReservationOptionsBuilder> {
  _$CapacityReservationOptions? _$v;

  FleetCapacityReservationUsageStrategy? _usageStrategy;
  FleetCapacityReservationUsageStrategy? get usageStrategy =>
      _$this._usageStrategy;
  set usageStrategy(FleetCapacityReservationUsageStrategy? usageStrategy) =>
      _$this._usageStrategy = usageStrategy;

  CapacityReservationOptionsBuilder();

  CapacityReservationOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usageStrategy = $v.usageStrategy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CapacityReservationOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CapacityReservationOptions;
  }

  @override
  void update(void Function(CapacityReservationOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CapacityReservationOptions build() => _build();

  _$CapacityReservationOptions _build() {
    final _$result =
        _$v ?? new _$CapacityReservationOptions._(usageStrategy: usageStrategy);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
