// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'on_demand_options_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OnDemandOptionsRequest extends OnDemandOptionsRequest {
  @override
  final FleetOnDemandAllocationStrategy? allocationStrategy;
  @override
  final CapacityReservationOptionsRequest? capacityReservationOptions;
  @override
  final bool singleInstanceType;
  @override
  final bool singleAvailabilityZone;
  @override
  final int minTargetCapacity;
  @override
  final String? maxTotalPrice;

  factory _$OnDemandOptionsRequest(
          [void Function(OnDemandOptionsRequestBuilder)? updates]) =>
      (new OnDemandOptionsRequestBuilder()..update(updates))._build();

  _$OnDemandOptionsRequest._(
      {this.allocationStrategy,
      this.capacityReservationOptions,
      required this.singleInstanceType,
      required this.singleAvailabilityZone,
      required this.minTargetCapacity,
      this.maxTotalPrice})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        singleInstanceType, r'OnDemandOptionsRequest', 'singleInstanceType');
    BuiltValueNullFieldError.checkNotNull(singleAvailabilityZone,
        r'OnDemandOptionsRequest', 'singleAvailabilityZone');
    BuiltValueNullFieldError.checkNotNull(
        minTargetCapacity, r'OnDemandOptionsRequest', 'minTargetCapacity');
  }

  @override
  OnDemandOptionsRequest rebuild(
          void Function(OnDemandOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OnDemandOptionsRequestBuilder toBuilder() =>
      new OnDemandOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OnDemandOptionsRequest &&
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

class OnDemandOptionsRequestBuilder
    implements Builder<OnDemandOptionsRequest, OnDemandOptionsRequestBuilder> {
  _$OnDemandOptionsRequest? _$v;

  FleetOnDemandAllocationStrategy? _allocationStrategy;
  FleetOnDemandAllocationStrategy? get allocationStrategy =>
      _$this._allocationStrategy;
  set allocationStrategy(FleetOnDemandAllocationStrategy? allocationStrategy) =>
      _$this._allocationStrategy = allocationStrategy;

  CapacityReservationOptionsRequestBuilder? _capacityReservationOptions;
  CapacityReservationOptionsRequestBuilder get capacityReservationOptions =>
      _$this._capacityReservationOptions ??=
          new CapacityReservationOptionsRequestBuilder();
  set capacityReservationOptions(
          CapacityReservationOptionsRequestBuilder?
              capacityReservationOptions) =>
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

  OnDemandOptionsRequestBuilder() {
    OnDemandOptionsRequest._init(this);
  }

  OnDemandOptionsRequestBuilder get _$this {
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
  void replace(OnDemandOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OnDemandOptionsRequest;
  }

  @override
  void update(void Function(OnDemandOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OnDemandOptionsRequest build() => _build();

  _$OnDemandOptionsRequest _build() {
    _$OnDemandOptionsRequest _$result;
    try {
      _$result = _$v ??
          new _$OnDemandOptionsRequest._(
              allocationStrategy: allocationStrategy,
              capacityReservationOptions: _capacityReservationOptions?.build(),
              singleInstanceType: BuiltValueNullFieldError.checkNotNull(
                  singleInstanceType,
                  r'OnDemandOptionsRequest',
                  'singleInstanceType'),
              singleAvailabilityZone: BuiltValueNullFieldError.checkNotNull(
                  singleAvailabilityZone,
                  r'OnDemandOptionsRequest',
                  'singleAvailabilityZone'),
              minTargetCapacity: BuiltValueNullFieldError.checkNotNull(
                  minTargetCapacity,
                  r'OnDemandOptionsRequest',
                  'minTargetCapacity'),
              maxTotalPrice: maxTotalPrice);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'capacityReservationOptions';
        _capacityReservationOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OnDemandOptionsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
