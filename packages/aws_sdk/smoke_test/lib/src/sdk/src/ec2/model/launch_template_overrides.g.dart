// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_overrides.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateOverrides extends LaunchTemplateOverrides {
  @override
  final InstanceType? instanceType;
  @override
  final String? spotPrice;
  @override
  final String? subnetId;
  @override
  final String? availabilityZone;
  @override
  final double weightedCapacity;
  @override
  final double priority;
  @override
  final InstanceRequirements? instanceRequirements;

  factory _$LaunchTemplateOverrides(
          [void Function(LaunchTemplateOverridesBuilder)? updates]) =>
      (new LaunchTemplateOverridesBuilder()..update(updates))._build();

  _$LaunchTemplateOverrides._(
      {this.instanceType,
      this.spotPrice,
      this.subnetId,
      this.availabilityZone,
      required this.weightedCapacity,
      required this.priority,
      this.instanceRequirements})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        weightedCapacity, r'LaunchTemplateOverrides', 'weightedCapacity');
    BuiltValueNullFieldError.checkNotNull(
        priority, r'LaunchTemplateOverrides', 'priority');
  }

  @override
  LaunchTemplateOverrides rebuild(
          void Function(LaunchTemplateOverridesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateOverridesBuilder toBuilder() =>
      new LaunchTemplateOverridesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateOverrides &&
        instanceType == other.instanceType &&
        spotPrice == other.spotPrice &&
        subnetId == other.subnetId &&
        availabilityZone == other.availabilityZone &&
        weightedCapacity == other.weightedCapacity &&
        priority == other.priority &&
        instanceRequirements == other.instanceRequirements;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, spotPrice.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, weightedCapacity.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, instanceRequirements.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchTemplateOverridesBuilder
    implements
        Builder<LaunchTemplateOverrides, LaunchTemplateOverridesBuilder> {
  _$LaunchTemplateOverrides? _$v;

  InstanceType? _instanceType;
  InstanceType? get instanceType => _$this._instanceType;
  set instanceType(InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  String? _spotPrice;
  String? get spotPrice => _$this._spotPrice;
  set spotPrice(String? spotPrice) => _$this._spotPrice = spotPrice;

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

  InstanceRequirementsBuilder? _instanceRequirements;
  InstanceRequirementsBuilder get instanceRequirements =>
      _$this._instanceRequirements ??= new InstanceRequirementsBuilder();
  set instanceRequirements(InstanceRequirementsBuilder? instanceRequirements) =>
      _$this._instanceRequirements = instanceRequirements;

  LaunchTemplateOverridesBuilder() {
    LaunchTemplateOverrides._init(this);
  }

  LaunchTemplateOverridesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceType = $v.instanceType;
      _spotPrice = $v.spotPrice;
      _subnetId = $v.subnetId;
      _availabilityZone = $v.availabilityZone;
      _weightedCapacity = $v.weightedCapacity;
      _priority = $v.priority;
      _instanceRequirements = $v.instanceRequirements?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateOverrides other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateOverrides;
  }

  @override
  void update(void Function(LaunchTemplateOverridesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateOverrides build() => _build();

  _$LaunchTemplateOverrides _build() {
    _$LaunchTemplateOverrides _$result;
    try {
      _$result = _$v ??
          new _$LaunchTemplateOverrides._(
              instanceType: instanceType,
              spotPrice: spotPrice,
              subnetId: subnetId,
              availabilityZone: availabilityZone,
              weightedCapacity: BuiltValueNullFieldError.checkNotNull(
                  weightedCapacity,
                  r'LaunchTemplateOverrides',
                  'weightedCapacity'),
              priority: BuiltValueNullFieldError.checkNotNull(
                  priority, r'LaunchTemplateOverrides', 'priority'),
              instanceRequirements: _instanceRequirements?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceRequirements';
        _instanceRequirements?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LaunchTemplateOverrides', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
