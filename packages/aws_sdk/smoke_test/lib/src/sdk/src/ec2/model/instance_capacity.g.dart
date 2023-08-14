// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_capacity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceCapacity extends InstanceCapacity {
  @override
  final int availableCapacity;
  @override
  final String? instanceType;
  @override
  final int totalCapacity;

  factory _$InstanceCapacity(
          [void Function(InstanceCapacityBuilder)? updates]) =>
      (new InstanceCapacityBuilder()..update(updates))._build();

  _$InstanceCapacity._(
      {required this.availableCapacity,
      this.instanceType,
      required this.totalCapacity})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        availableCapacity, r'InstanceCapacity', 'availableCapacity');
    BuiltValueNullFieldError.checkNotNull(
        totalCapacity, r'InstanceCapacity', 'totalCapacity');
  }

  @override
  InstanceCapacity rebuild(void Function(InstanceCapacityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceCapacityBuilder toBuilder() =>
      new InstanceCapacityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceCapacity &&
        availableCapacity == other.availableCapacity &&
        instanceType == other.instanceType &&
        totalCapacity == other.totalCapacity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availableCapacity.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, totalCapacity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceCapacityBuilder
    implements Builder<InstanceCapacity, InstanceCapacityBuilder> {
  _$InstanceCapacity? _$v;

  int? _availableCapacity;
  int? get availableCapacity => _$this._availableCapacity;
  set availableCapacity(int? availableCapacity) =>
      _$this._availableCapacity = availableCapacity;

  String? _instanceType;
  String? get instanceType => _$this._instanceType;
  set instanceType(String? instanceType) => _$this._instanceType = instanceType;

  int? _totalCapacity;
  int? get totalCapacity => _$this._totalCapacity;
  set totalCapacity(int? totalCapacity) =>
      _$this._totalCapacity = totalCapacity;

  InstanceCapacityBuilder() {
    InstanceCapacity._init(this);
  }

  InstanceCapacityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availableCapacity = $v.availableCapacity;
      _instanceType = $v.instanceType;
      _totalCapacity = $v.totalCapacity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceCapacity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceCapacity;
  }

  @override
  void update(void Function(InstanceCapacityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceCapacity build() => _build();

  _$InstanceCapacity _build() {
    final _$result = _$v ??
        new _$InstanceCapacity._(
            availableCapacity: BuiltValueNullFieldError.checkNotNull(
                availableCapacity, r'InstanceCapacity', 'availableCapacity'),
            instanceType: instanceType,
            totalCapacity: BuiltValueNullFieldError.checkNotNull(
                totalCapacity, r'InstanceCapacity', 'totalCapacity'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
