// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reserved_instances_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReservedInstancesConfiguration extends ReservedInstancesConfiguration {
  @override
  final String? availabilityZone;
  @override
  final int instanceCount;
  @override
  final InstanceType? instanceType;
  @override
  final String? platform;
  @override
  final Scope? scope;

  factory _$ReservedInstancesConfiguration(
          [void Function(ReservedInstancesConfigurationBuilder)? updates]) =>
      (new ReservedInstancesConfigurationBuilder()..update(updates))._build();

  _$ReservedInstancesConfiguration._(
      {this.availabilityZone,
      required this.instanceCount,
      this.instanceType,
      this.platform,
      this.scope})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        instanceCount, r'ReservedInstancesConfiguration', 'instanceCount');
  }

  @override
  ReservedInstancesConfiguration rebuild(
          void Function(ReservedInstancesConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReservedInstancesConfigurationBuilder toBuilder() =>
      new ReservedInstancesConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReservedInstancesConfiguration &&
        availabilityZone == other.availabilityZone &&
        instanceCount == other.instanceCount &&
        instanceType == other.instanceType &&
        platform == other.platform &&
        scope == other.scope;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, instanceCount.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReservedInstancesConfigurationBuilder
    implements
        Builder<ReservedInstancesConfiguration,
            ReservedInstancesConfigurationBuilder> {
  _$ReservedInstancesConfiguration? _$v;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  int? _instanceCount;
  int? get instanceCount => _$this._instanceCount;
  set instanceCount(int? instanceCount) =>
      _$this._instanceCount = instanceCount;

  InstanceType? _instanceType;
  InstanceType? get instanceType => _$this._instanceType;
  set instanceType(InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  Scope? _scope;
  Scope? get scope => _$this._scope;
  set scope(Scope? scope) => _$this._scope = scope;

  ReservedInstancesConfigurationBuilder() {
    ReservedInstancesConfiguration._init(this);
  }

  ReservedInstancesConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _instanceCount = $v.instanceCount;
      _instanceType = $v.instanceType;
      _platform = $v.platform;
      _scope = $v.scope;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReservedInstancesConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReservedInstancesConfiguration;
  }

  @override
  void update(void Function(ReservedInstancesConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReservedInstancesConfiguration build() => _build();

  _$ReservedInstancesConfiguration _build() {
    final _$result = _$v ??
        new _$ReservedInstancesConfiguration._(
            availabilityZone: availabilityZone,
            instanceCount: BuiltValueNullFieldError.checkNotNull(instanceCount,
                r'ReservedInstancesConfiguration', 'instanceCount'),
            instanceType: instanceType,
            platform: platform,
            scope: scope);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
