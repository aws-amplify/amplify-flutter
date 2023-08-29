// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_capacity_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TargetCapacitySpecification extends TargetCapacitySpecification {
  @override
  final int totalTargetCapacity;
  @override
  final int onDemandTargetCapacity;
  @override
  final int spotTargetCapacity;
  @override
  final DefaultTargetCapacityType? defaultTargetCapacityType;
  @override
  final TargetCapacityUnitType? targetCapacityUnitType;

  factory _$TargetCapacitySpecification(
          [void Function(TargetCapacitySpecificationBuilder)? updates]) =>
      (new TargetCapacitySpecificationBuilder()..update(updates))._build();

  _$TargetCapacitySpecification._(
      {required this.totalTargetCapacity,
      required this.onDemandTargetCapacity,
      required this.spotTargetCapacity,
      this.defaultTargetCapacityType,
      this.targetCapacityUnitType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(totalTargetCapacity,
        r'TargetCapacitySpecification', 'totalTargetCapacity');
    BuiltValueNullFieldError.checkNotNull(onDemandTargetCapacity,
        r'TargetCapacitySpecification', 'onDemandTargetCapacity');
    BuiltValueNullFieldError.checkNotNull(spotTargetCapacity,
        r'TargetCapacitySpecification', 'spotTargetCapacity');
  }

  @override
  TargetCapacitySpecification rebuild(
          void Function(TargetCapacitySpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TargetCapacitySpecificationBuilder toBuilder() =>
      new TargetCapacitySpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TargetCapacitySpecification &&
        totalTargetCapacity == other.totalTargetCapacity &&
        onDemandTargetCapacity == other.onDemandTargetCapacity &&
        spotTargetCapacity == other.spotTargetCapacity &&
        defaultTargetCapacityType == other.defaultTargetCapacityType &&
        targetCapacityUnitType == other.targetCapacityUnitType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalTargetCapacity.hashCode);
    _$hash = $jc(_$hash, onDemandTargetCapacity.hashCode);
    _$hash = $jc(_$hash, spotTargetCapacity.hashCode);
    _$hash = $jc(_$hash, defaultTargetCapacityType.hashCode);
    _$hash = $jc(_$hash, targetCapacityUnitType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TargetCapacitySpecificationBuilder
    implements
        Builder<TargetCapacitySpecification,
            TargetCapacitySpecificationBuilder> {
  _$TargetCapacitySpecification? _$v;

  int? _totalTargetCapacity;
  int? get totalTargetCapacity => _$this._totalTargetCapacity;
  set totalTargetCapacity(int? totalTargetCapacity) =>
      _$this._totalTargetCapacity = totalTargetCapacity;

  int? _onDemandTargetCapacity;
  int? get onDemandTargetCapacity => _$this._onDemandTargetCapacity;
  set onDemandTargetCapacity(int? onDemandTargetCapacity) =>
      _$this._onDemandTargetCapacity = onDemandTargetCapacity;

  int? _spotTargetCapacity;
  int? get spotTargetCapacity => _$this._spotTargetCapacity;
  set spotTargetCapacity(int? spotTargetCapacity) =>
      _$this._spotTargetCapacity = spotTargetCapacity;

  DefaultTargetCapacityType? _defaultTargetCapacityType;
  DefaultTargetCapacityType? get defaultTargetCapacityType =>
      _$this._defaultTargetCapacityType;
  set defaultTargetCapacityType(
          DefaultTargetCapacityType? defaultTargetCapacityType) =>
      _$this._defaultTargetCapacityType = defaultTargetCapacityType;

  TargetCapacityUnitType? _targetCapacityUnitType;
  TargetCapacityUnitType? get targetCapacityUnitType =>
      _$this._targetCapacityUnitType;
  set targetCapacityUnitType(TargetCapacityUnitType? targetCapacityUnitType) =>
      _$this._targetCapacityUnitType = targetCapacityUnitType;

  TargetCapacitySpecificationBuilder() {
    TargetCapacitySpecification._init(this);
  }

  TargetCapacitySpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalTargetCapacity = $v.totalTargetCapacity;
      _onDemandTargetCapacity = $v.onDemandTargetCapacity;
      _spotTargetCapacity = $v.spotTargetCapacity;
      _defaultTargetCapacityType = $v.defaultTargetCapacityType;
      _targetCapacityUnitType = $v.targetCapacityUnitType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TargetCapacitySpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TargetCapacitySpecification;
  }

  @override
  void update(void Function(TargetCapacitySpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TargetCapacitySpecification build() => _build();

  _$TargetCapacitySpecification _build() {
    final _$result = _$v ??
        new _$TargetCapacitySpecification._(
            totalTargetCapacity: BuiltValueNullFieldError.checkNotNull(
                totalTargetCapacity,
                r'TargetCapacitySpecification',
                'totalTargetCapacity'),
            onDemandTargetCapacity: BuiltValueNullFieldError.checkNotNull(
                onDemandTargetCapacity,
                r'TargetCapacitySpecification',
                'onDemandTargetCapacity'),
            spotTargetCapacity: BuiltValueNullFieldError.checkNotNull(
                spotTargetCapacity,
                r'TargetCapacitySpecification',
                'spotTargetCapacity'),
            defaultTargetCapacityType: defaultTargetCapacityType,
            targetCapacityUnitType: targetCapacityUnitType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
