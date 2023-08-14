// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_instance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ActiveInstance extends ActiveInstance {
  @override
  final String? instanceId;
  @override
  final String? instanceType;
  @override
  final String? spotInstanceRequestId;
  @override
  final InstanceHealthStatus? instanceHealth;

  factory _$ActiveInstance([void Function(ActiveInstanceBuilder)? updates]) =>
      (new ActiveInstanceBuilder()..update(updates))._build();

  _$ActiveInstance._(
      {this.instanceId,
      this.instanceType,
      this.spotInstanceRequestId,
      this.instanceHealth})
      : super._();

  @override
  ActiveInstance rebuild(void Function(ActiveInstanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActiveInstanceBuilder toBuilder() =>
      new ActiveInstanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActiveInstance &&
        instanceId == other.instanceId &&
        instanceType == other.instanceType &&
        spotInstanceRequestId == other.spotInstanceRequestId &&
        instanceHealth == other.instanceHealth;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, spotInstanceRequestId.hashCode);
    _$hash = $jc(_$hash, instanceHealth.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ActiveInstanceBuilder
    implements Builder<ActiveInstance, ActiveInstanceBuilder> {
  _$ActiveInstance? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _instanceType;
  String? get instanceType => _$this._instanceType;
  set instanceType(String? instanceType) => _$this._instanceType = instanceType;

  String? _spotInstanceRequestId;
  String? get spotInstanceRequestId => _$this._spotInstanceRequestId;
  set spotInstanceRequestId(String? spotInstanceRequestId) =>
      _$this._spotInstanceRequestId = spotInstanceRequestId;

  InstanceHealthStatus? _instanceHealth;
  InstanceHealthStatus? get instanceHealth => _$this._instanceHealth;
  set instanceHealth(InstanceHealthStatus? instanceHealth) =>
      _$this._instanceHealth = instanceHealth;

  ActiveInstanceBuilder();

  ActiveInstanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _instanceType = $v.instanceType;
      _spotInstanceRequestId = $v.spotInstanceRequestId;
      _instanceHealth = $v.instanceHealth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActiveInstance other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActiveInstance;
  }

  @override
  void update(void Function(ActiveInstanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActiveInstance build() => _build();

  _$ActiveInstance _build() {
    final _$result = _$v ??
        new _$ActiveInstance._(
            instanceId: instanceId,
            instanceType: instanceType,
            spotInstanceRequestId: spotInstanceRequestId,
            instanceHealth: instanceHealth);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
