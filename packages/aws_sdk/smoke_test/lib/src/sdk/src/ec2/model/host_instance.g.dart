// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'host_instance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HostInstance extends HostInstance {
  @override
  final String? instanceId;
  @override
  final String? instanceType;
  @override
  final String? ownerId;

  factory _$HostInstance([void Function(HostInstanceBuilder)? updates]) =>
      (new HostInstanceBuilder()..update(updates))._build();

  _$HostInstance._({this.instanceId, this.instanceType, this.ownerId})
      : super._();

  @override
  HostInstance rebuild(void Function(HostInstanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HostInstanceBuilder toBuilder() => new HostInstanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HostInstance &&
        instanceId == other.instanceId &&
        instanceType == other.instanceType &&
        ownerId == other.ownerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HostInstanceBuilder
    implements Builder<HostInstance, HostInstanceBuilder> {
  _$HostInstance? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _instanceType;
  String? get instanceType => _$this._instanceType;
  set instanceType(String? instanceType) => _$this._instanceType = instanceType;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  HostInstanceBuilder();

  HostInstanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _instanceType = $v.instanceType;
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HostInstance other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HostInstance;
  }

  @override
  void update(void Function(HostInstanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HostInstance build() => _build();

  _$HostInstance _build() {
    final _$result = _$v ??
        new _$HostInstance._(
            instanceId: instanceId,
            instanceType: instanceType,
            ownerId: ownerId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
