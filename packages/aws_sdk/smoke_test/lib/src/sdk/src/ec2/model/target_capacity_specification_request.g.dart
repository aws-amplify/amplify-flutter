// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_capacity_specification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TargetCapacitySpecificationRequest
    extends TargetCapacitySpecificationRequest {
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

  factory _$TargetCapacitySpecificationRequest(
          [void Function(TargetCapacitySpecificationRequestBuilder)?
              updates]) =>
      (new TargetCapacitySpecificationRequestBuilder()..update(updates))
          ._build();

  _$TargetCapacitySpecificationRequest._(
      {required this.totalTargetCapacity,
      required this.onDemandTargetCapacity,
      required this.spotTargetCapacity,
      this.defaultTargetCapacityType,
      this.targetCapacityUnitType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(totalTargetCapacity,
        r'TargetCapacitySpecificationRequest', 'totalTargetCapacity');
    BuiltValueNullFieldError.checkNotNull(onDemandTargetCapacity,
        r'TargetCapacitySpecificationRequest', 'onDemandTargetCapacity');
    BuiltValueNullFieldError.checkNotNull(spotTargetCapacity,
        r'TargetCapacitySpecificationRequest', 'spotTargetCapacity');
  }

  @override
  TargetCapacitySpecificationRequest rebuild(
          void Function(TargetCapacitySpecificationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TargetCapacitySpecificationRequestBuilder toBuilder() =>
      new TargetCapacitySpecificationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TargetCapacitySpecificationRequest &&
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

class TargetCapacitySpecificationRequestBuilder
    implements
        Builder<TargetCapacitySpecificationRequest,
            TargetCapacitySpecificationRequestBuilder> {
  _$TargetCapacitySpecificationRequest? _$v;

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

  TargetCapacitySpecificationRequestBuilder() {
    TargetCapacitySpecificationRequest._init(this);
  }

  TargetCapacitySpecificationRequestBuilder get _$this {
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
  void replace(TargetCapacitySpecificationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TargetCapacitySpecificationRequest;
  }

  @override
  void update(
      void Function(TargetCapacitySpecificationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TargetCapacitySpecificationRequest build() => _build();

  _$TargetCapacitySpecificationRequest _build() {
    final _$result = _$v ??
        new _$TargetCapacitySpecificationRequest._(
            totalTargetCapacity: BuiltValueNullFieldError.checkNotNull(
                totalTargetCapacity,
                r'TargetCapacitySpecificationRequest',
                'totalTargetCapacity'),
            onDemandTargetCapacity: BuiltValueNullFieldError.checkNotNull(
                onDemandTargetCapacity,
                r'TargetCapacitySpecificationRequest',
                'onDemandTargetCapacity'),
            spotTargetCapacity: BuiltValueNullFieldError.checkNotNull(
                spotTargetCapacity,
                r'TargetCapacitySpecificationRequest',
                'spotTargetCapacity'),
            defaultTargetCapacityType: defaultTargetCapacityType,
            targetCapacityUnitType: targetCapacityUnitType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
