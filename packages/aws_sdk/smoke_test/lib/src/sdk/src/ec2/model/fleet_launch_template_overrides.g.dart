// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fleet_launch_template_overrides.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FleetLaunchTemplateOverrides extends FleetLaunchTemplateOverrides {
  @override
  final InstanceType? instanceType;
  @override
  final String? maxPrice;
  @override
  final String? subnetId;
  @override
  final String? availabilityZone;
  @override
  final double weightedCapacity;
  @override
  final double priority;
  @override
  final PlacementResponse? placement;
  @override
  final InstanceRequirements? instanceRequirements;
  @override
  final String? imageId;

  factory _$FleetLaunchTemplateOverrides(
          [void Function(FleetLaunchTemplateOverridesBuilder)? updates]) =>
      (new FleetLaunchTemplateOverridesBuilder()..update(updates))._build();

  _$FleetLaunchTemplateOverrides._(
      {this.instanceType,
      this.maxPrice,
      this.subnetId,
      this.availabilityZone,
      required this.weightedCapacity,
      required this.priority,
      this.placement,
      this.instanceRequirements,
      this.imageId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        weightedCapacity, r'FleetLaunchTemplateOverrides', 'weightedCapacity');
    BuiltValueNullFieldError.checkNotNull(
        priority, r'FleetLaunchTemplateOverrides', 'priority');
  }

  @override
  FleetLaunchTemplateOverrides rebuild(
          void Function(FleetLaunchTemplateOverridesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FleetLaunchTemplateOverridesBuilder toBuilder() =>
      new FleetLaunchTemplateOverridesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FleetLaunchTemplateOverrides &&
        instanceType == other.instanceType &&
        maxPrice == other.maxPrice &&
        subnetId == other.subnetId &&
        availabilityZone == other.availabilityZone &&
        weightedCapacity == other.weightedCapacity &&
        priority == other.priority &&
        placement == other.placement &&
        instanceRequirements == other.instanceRequirements &&
        imageId == other.imageId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, maxPrice.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, weightedCapacity.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, placement.hashCode);
    _$hash = $jc(_$hash, instanceRequirements.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FleetLaunchTemplateOverridesBuilder
    implements
        Builder<FleetLaunchTemplateOverrides,
            FleetLaunchTemplateOverridesBuilder> {
  _$FleetLaunchTemplateOverrides? _$v;

  InstanceType? _instanceType;
  InstanceType? get instanceType => _$this._instanceType;
  set instanceType(InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  String? _maxPrice;
  String? get maxPrice => _$this._maxPrice;
  set maxPrice(String? maxPrice) => _$this._maxPrice = maxPrice;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  double? _weightedCapacity;
  double? get weightedCapacity => _$this._weightedCapacity;
  set weightedCapacity(double? weightedCapacity) =>
      _$this._weightedCapacity = weightedCapacity;

  double? _priority;
  double? get priority => _$this._priority;
  set priority(double? priority) => _$this._priority = priority;

  PlacementResponseBuilder? _placement;
  PlacementResponseBuilder get placement =>
      _$this._placement ??= new PlacementResponseBuilder();
  set placement(PlacementResponseBuilder? placement) =>
      _$this._placement = placement;

  InstanceRequirementsBuilder? _instanceRequirements;
  InstanceRequirementsBuilder get instanceRequirements =>
      _$this._instanceRequirements ??= new InstanceRequirementsBuilder();
  set instanceRequirements(InstanceRequirementsBuilder? instanceRequirements) =>
      _$this._instanceRequirements = instanceRequirements;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  FleetLaunchTemplateOverridesBuilder() {
    FleetLaunchTemplateOverrides._init(this);
  }

  FleetLaunchTemplateOverridesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceType = $v.instanceType;
      _maxPrice = $v.maxPrice;
      _subnetId = $v.subnetId;
      _availabilityZone = $v.availabilityZone;
      _weightedCapacity = $v.weightedCapacity;
      _priority = $v.priority;
      _placement = $v.placement?.toBuilder();
      _instanceRequirements = $v.instanceRequirements?.toBuilder();
      _imageId = $v.imageId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FleetLaunchTemplateOverrides other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FleetLaunchTemplateOverrides;
  }

  @override
  void update(void Function(FleetLaunchTemplateOverridesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FleetLaunchTemplateOverrides build() => _build();

  _$FleetLaunchTemplateOverrides _build() {
    _$FleetLaunchTemplateOverrides _$result;
    try {
      _$result = _$v ??
          new _$FleetLaunchTemplateOverrides._(
              instanceType: instanceType,
              maxPrice: maxPrice,
              subnetId: subnetId,
              availabilityZone: availabilityZone,
              weightedCapacity: BuiltValueNullFieldError.checkNotNull(
                  weightedCapacity,
                  r'FleetLaunchTemplateOverrides',
                  'weightedCapacity'),
              priority: BuiltValueNullFieldError.checkNotNull(
                  priority, r'FleetLaunchTemplateOverrides', 'priority'),
              placement: _placement?.build(),
              instanceRequirements: _instanceRequirements?.build(),
              imageId: imageId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'placement';
        _placement?.build();
        _$failedField = 'instanceRequirements';
        _instanceRequirements?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FleetLaunchTemplateOverrides', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
