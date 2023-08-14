// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fleet_launch_template_overrides_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FleetLaunchTemplateOverridesRequest
    extends FleetLaunchTemplateOverridesRequest {
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
  final Placement? placement;
  @override
  final InstanceRequirementsRequest? instanceRequirements;
  @override
  final String? imageId;

  factory _$FleetLaunchTemplateOverridesRequest(
          [void Function(FleetLaunchTemplateOverridesRequestBuilder)?
              updates]) =>
      (new FleetLaunchTemplateOverridesRequestBuilder()..update(updates))
          ._build();

  _$FleetLaunchTemplateOverridesRequest._(
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
    BuiltValueNullFieldError.checkNotNull(weightedCapacity,
        r'FleetLaunchTemplateOverridesRequest', 'weightedCapacity');
    BuiltValueNullFieldError.checkNotNull(
        priority, r'FleetLaunchTemplateOverridesRequest', 'priority');
  }

  @override
  FleetLaunchTemplateOverridesRequest rebuild(
          void Function(FleetLaunchTemplateOverridesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FleetLaunchTemplateOverridesRequestBuilder toBuilder() =>
      new FleetLaunchTemplateOverridesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FleetLaunchTemplateOverridesRequest &&
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

class FleetLaunchTemplateOverridesRequestBuilder
    implements
        Builder<FleetLaunchTemplateOverridesRequest,
            FleetLaunchTemplateOverridesRequestBuilder> {
  _$FleetLaunchTemplateOverridesRequest? _$v;

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

  PlacementBuilder? _placement;
  PlacementBuilder get placement =>
      _$this._placement ??= new PlacementBuilder();
  set placement(PlacementBuilder? placement) => _$this._placement = placement;

  InstanceRequirementsRequestBuilder? _instanceRequirements;
  InstanceRequirementsRequestBuilder get instanceRequirements =>
      _$this._instanceRequirements ??= new InstanceRequirementsRequestBuilder();
  set instanceRequirements(
          InstanceRequirementsRequestBuilder? instanceRequirements) =>
      _$this._instanceRequirements = instanceRequirements;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  FleetLaunchTemplateOverridesRequestBuilder() {
    FleetLaunchTemplateOverridesRequest._init(this);
  }

  FleetLaunchTemplateOverridesRequestBuilder get _$this {
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
  void replace(FleetLaunchTemplateOverridesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FleetLaunchTemplateOverridesRequest;
  }

  @override
  void update(
      void Function(FleetLaunchTemplateOverridesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FleetLaunchTemplateOverridesRequest build() => _build();

  _$FleetLaunchTemplateOverridesRequest _build() {
    _$FleetLaunchTemplateOverridesRequest _$result;
    try {
      _$result = _$v ??
          new _$FleetLaunchTemplateOverridesRequest._(
              instanceType: instanceType,
              maxPrice: maxPrice,
              subnetId: subnetId,
              availabilityZone: availabilityZone,
              weightedCapacity: BuiltValueNullFieldError.checkNotNull(
                  weightedCapacity,
                  r'FleetLaunchTemplateOverridesRequest',
                  'weightedCapacity'),
              priority: BuiltValueNullFieldError.checkNotNull(
                  priority, r'FleetLaunchTemplateOverridesRequest', 'priority'),
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
            r'FleetLaunchTemplateOverridesRequest',
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
