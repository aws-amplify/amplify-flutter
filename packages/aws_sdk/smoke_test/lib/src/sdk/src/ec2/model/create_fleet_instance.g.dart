// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_fleet_instance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateFleetInstance extends CreateFleetInstance {
  @override
  final LaunchTemplateAndOverridesResponse? launchTemplateAndOverrides;
  @override
  final InstanceLifecycle? lifecycle;
  @override
  final _i2.BuiltList<String>? instanceIds;
  @override
  final InstanceType? instanceType;
  @override
  final PlatformValues? platform;

  factory _$CreateFleetInstance(
          [void Function(CreateFleetInstanceBuilder)? updates]) =>
      (new CreateFleetInstanceBuilder()..update(updates))._build();

  _$CreateFleetInstance._(
      {this.launchTemplateAndOverrides,
      this.lifecycle,
      this.instanceIds,
      this.instanceType,
      this.platform})
      : super._();

  @override
  CreateFleetInstance rebuild(
          void Function(CreateFleetInstanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateFleetInstanceBuilder toBuilder() =>
      new CreateFleetInstanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateFleetInstance &&
        launchTemplateAndOverrides == other.launchTemplateAndOverrides &&
        lifecycle == other.lifecycle &&
        instanceIds == other.instanceIds &&
        instanceType == other.instanceType &&
        platform == other.platform;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, launchTemplateAndOverrides.hashCode);
    _$hash = $jc(_$hash, lifecycle.hashCode);
    _$hash = $jc(_$hash, instanceIds.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateFleetInstanceBuilder
    implements Builder<CreateFleetInstance, CreateFleetInstanceBuilder> {
  _$CreateFleetInstance? _$v;

  LaunchTemplateAndOverridesResponseBuilder? _launchTemplateAndOverrides;
  LaunchTemplateAndOverridesResponseBuilder get launchTemplateAndOverrides =>
      _$this._launchTemplateAndOverrides ??=
          new LaunchTemplateAndOverridesResponseBuilder();
  set launchTemplateAndOverrides(
          LaunchTemplateAndOverridesResponseBuilder?
              launchTemplateAndOverrides) =>
      _$this._launchTemplateAndOverrides = launchTemplateAndOverrides;

  InstanceLifecycle? _lifecycle;
  InstanceLifecycle? get lifecycle => _$this._lifecycle;
  set lifecycle(InstanceLifecycle? lifecycle) => _$this._lifecycle = lifecycle;

  _i2.ListBuilder<String>? _instanceIds;
  _i2.ListBuilder<String> get instanceIds =>
      _$this._instanceIds ??= new _i2.ListBuilder<String>();
  set instanceIds(_i2.ListBuilder<String>? instanceIds) =>
      _$this._instanceIds = instanceIds;

  InstanceType? _instanceType;
  InstanceType? get instanceType => _$this._instanceType;
  set instanceType(InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  PlatformValues? _platform;
  PlatformValues? get platform => _$this._platform;
  set platform(PlatformValues? platform) => _$this._platform = platform;

  CreateFleetInstanceBuilder();

  CreateFleetInstanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _launchTemplateAndOverrides = $v.launchTemplateAndOverrides?.toBuilder();
      _lifecycle = $v.lifecycle;
      _instanceIds = $v.instanceIds?.toBuilder();
      _instanceType = $v.instanceType;
      _platform = $v.platform;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateFleetInstance other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateFleetInstance;
  }

  @override
  void update(void Function(CreateFleetInstanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateFleetInstance build() => _build();

  _$CreateFleetInstance _build() {
    _$CreateFleetInstance _$result;
    try {
      _$result = _$v ??
          new _$CreateFleetInstance._(
              launchTemplateAndOverrides: _launchTemplateAndOverrides?.build(),
              lifecycle: lifecycle,
              instanceIds: _instanceIds?.build(),
              instanceType: instanceType,
              platform: platform);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launchTemplateAndOverrides';
        _launchTemplateAndOverrides?.build();

        _$failedField = 'instanceIds';
        _instanceIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateFleetInstance', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
