// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'on_demand_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OnDemandOptions extends OnDemandOptions {
  @override
  final FleetOnDemandAllocationStrategy? allocationStrategy;
  @override
  final CapacityReservationOptions? capacityReservationOptions;
  @override
  final bool singleInstanceType;
  @override
  final bool singleAvailabilityZone;
  @override
  final int minTargetCapacity;
  @override
  final String? maxTotalPrice;

  factory _$OnDemandOptions([void Function(OnDemandOptionsBuilder)? updates]) =>
      (new OnDemandOptionsBuilder()..update(updates))._build();

  _$OnDemandOptions._(
      {this.allocationStrategy,
      this.capacityReservationOptions,
      required this.singleInstanceType,
      required this.singleAvailabilityZone,
      required this.minTargetCapacity,
      this.maxTotalPrice})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        singleInstanceType, r'OnDemandOptions', 'singleInstanceType');
    BuiltValueNullFieldError.checkNotNull(
        singleAvailabilityZone, r'OnDemandOptions', 'singleAvailabilityZone');
    BuiltValueNullFieldError.checkNotNull(
        minTargetCapacity, r'OnDemandOptions', 'minTargetCapacity');
  }

  @override
  OnDemandOptions rebuild(void Function(OnDemandOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OnDemandOptionsBuilder toBuilder() =>
      new OnDemandOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OnDemandOptions &&
        allocationStrategy == other.allocationStrategy &&
        capacityReservationOptions == other.capacityReservationOptions &&
        singleInstanceType == other.singleInstanceType &&
        singleAvailabilityZone == other.singleAvailabilityZone &&
        minTargetCapacity == other.minTargetCapacity &&
        maxTotalPrice == other.maxTotalPrice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allocationStrategy.hashCode);
    _$hash = $jc(_$hash, capacityReservationOptions.hashCode);
    _$hash = $jc(_$hash, singleInstanceType.hashCode);
    _$hash = $jc(_$hash, singleAvailabilityZone.hashCode);
    _$hash = $jc(_$hash, minTargetCapacity.hashCode);
    _$hash = $jc(_$hash, maxTotalPrice.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OnDemandOptionsBuilder
    implements Builder<OnDemandOptions, OnDemandOptionsBuilder> {
  _$OnDemandOptions? _$v;

  FleetOnDemandAllocationStrategy? _allocationStrategy;
  FleetOnDemandAllocationStrategy? get allocationStrategy =>
      _$this._allocationStrategy;
  set allocationStrategy(FleetOnDemandAllocationStrategy? allocationStrategy) =>
      _$this._allocationStrategy = allocationStrategy;

  CapacityReservationOptionsBuilder? _capacityReservationOptions;
  CapacityReservationOptionsBuilder get capacityReservationOptions =>
      _$this._capacityReservationOptions ??=
          new CapacityReservationOptionsBuilder();
  set capacityReservationOptions(
          CapacityReservationOptionsBuilder? capacityReservationOptions) =>
      _$this._capacityReservationOptions = capacityReservationOptions;

  bool? _singleInstanceType;
  bool? get singleInstanceType => _$this._singleInstanceType;
  set singleInstanceType(bool? singleInstanceType) =>
      _$this._singleInstanceType = singleInstanceType;

  bool? _singleAvailabilityZone;
  bool? get singleAvailabilityZone => _$this._singleAvailabilityZone;
  set singleAvailabilityZone(bool? singleAvailabilityZone) =>
      _$this._singleAvailabilityZone = singleAvailabilityZone;

  int? _minTargetCapacity;
  int? get minTargetCapacity => _$this._minTargetCapacity;
  set minTargetCapacity(int? minTargetCapacity) =>
      _$this._minTargetCapacity = minTargetCapacity;

  String? _maxTotalPrice;
  String? get maxTotalPrice => _$this._maxTotalPrice;
  set maxTotalPrice(String? maxTotalPrice) =>
      _$this._maxTotalPrice = maxTotalPrice;

  OnDemandOptionsBuilder() {
    OnDemandOptions._init(this);
  }

  OnDemandOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allocationStrategy = $v.allocationStrategy;
      _capacityReservationOptions = $v.capacityReservationOptions?.toBuilder();
      _singleInstanceType = $v.singleInstanceType;
      _singleAvailabilityZone = $v.singleAvailabilityZone;
      _minTargetCapacity = $v.minTargetCapacity;
      _maxTotalPrice = $v.maxTotalPrice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OnDemandOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OnDemandOptions;
  }

  @override
  void update(void Function(OnDemandOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OnDemandOptions build() => _build();

  _$OnDemandOptions _build() {
    _$OnDemandOptions _$result;
    try {
      _$result = _$v ??
          new _$OnDemandOptions._(
              allocationStrategy: allocationStrategy,
              capacityReservationOptions: _capacityReservationOptions?.build(),
              singleInstanceType: BuiltValueNullFieldError.checkNotNull(
                  singleInstanceType, r'OnDemandOptions', 'singleInstanceType'),
              singleAvailabilityZone: BuiltValueNullFieldError.checkNotNull(
                  singleAvailabilityZone,
                  r'OnDemandOptions',
                  'singleAvailabilityZone'),
              minTargetCapacity: BuiltValueNullFieldError.checkNotNull(
                  minTargetCapacity, r'OnDemandOptions', 'minTargetCapacity'),
              maxTotalPrice: maxTotalPrice);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'capacityReservationOptions';
        _capacityReservationOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OnDemandOptions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
