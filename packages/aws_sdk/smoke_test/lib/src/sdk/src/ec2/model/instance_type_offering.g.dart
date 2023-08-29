// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_type_offering.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceTypeOffering extends InstanceTypeOffering {
  @override
  final InstanceType? instanceType;
  @override
  final LocationType? locationType;
  @override
  final String? location;

  factory _$InstanceTypeOffering(
          [void Function(InstanceTypeOfferingBuilder)? updates]) =>
      (new InstanceTypeOfferingBuilder()..update(updates))._build();

  _$InstanceTypeOffering._(
      {this.instanceType, this.locationType, this.location})
      : super._();

  @override
  InstanceTypeOffering rebuild(
          void Function(InstanceTypeOfferingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceTypeOfferingBuilder toBuilder() =>
      new InstanceTypeOfferingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceTypeOffering &&
        instanceType == other.instanceType &&
        locationType == other.locationType &&
        location == other.location;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, locationType.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceTypeOfferingBuilder
    implements Builder<InstanceTypeOffering, InstanceTypeOfferingBuilder> {
  _$InstanceTypeOffering? _$v;

  InstanceType? _instanceType;
  InstanceType? get instanceType => _$this._instanceType;
  set instanceType(InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  LocationType? _locationType;
  LocationType? get locationType => _$this._locationType;
  set locationType(LocationType? locationType) =>
      _$this._locationType = locationType;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  InstanceTypeOfferingBuilder();

  InstanceTypeOfferingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceType = $v.instanceType;
      _locationType = $v.locationType;
      _location = $v.location;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceTypeOffering other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceTypeOffering;
  }

  @override
  void update(void Function(InstanceTypeOfferingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceTypeOffering build() => _build();

  _$InstanceTypeOffering _build() {
    final _$result = _$v ??
        new _$InstanceTypeOffering._(
            instanceType: instanceType,
            locationType: locationType,
            location: location);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
