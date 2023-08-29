// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_block_device_mapping.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateBlockDeviceMapping
    extends LaunchTemplateBlockDeviceMapping {
  @override
  final String? deviceName;
  @override
  final String? virtualName;
  @override
  final LaunchTemplateEbsBlockDevice? ebs;
  @override
  final String? noDevice;

  factory _$LaunchTemplateBlockDeviceMapping(
          [void Function(LaunchTemplateBlockDeviceMappingBuilder)? updates]) =>
      (new LaunchTemplateBlockDeviceMappingBuilder()..update(updates))._build();

  _$LaunchTemplateBlockDeviceMapping._(
      {this.deviceName, this.virtualName, this.ebs, this.noDevice})
      : super._();

  @override
  LaunchTemplateBlockDeviceMapping rebuild(
          void Function(LaunchTemplateBlockDeviceMappingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateBlockDeviceMappingBuilder toBuilder() =>
      new LaunchTemplateBlockDeviceMappingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateBlockDeviceMapping &&
        deviceName == other.deviceName &&
        virtualName == other.virtualName &&
        ebs == other.ebs &&
        noDevice == other.noDevice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceName.hashCode);
    _$hash = $jc(_$hash, virtualName.hashCode);
    _$hash = $jc(_$hash, ebs.hashCode);
    _$hash = $jc(_$hash, noDevice.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchTemplateBlockDeviceMappingBuilder
    implements
        Builder<LaunchTemplateBlockDeviceMapping,
            LaunchTemplateBlockDeviceMappingBuilder> {
  _$LaunchTemplateBlockDeviceMapping? _$v;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  String? _virtualName;
  String? get virtualName => _$this._virtualName;
  set virtualName(String? virtualName) => _$this._virtualName = virtualName;

  LaunchTemplateEbsBlockDeviceBuilder? _ebs;
  LaunchTemplateEbsBlockDeviceBuilder get ebs =>
      _$this._ebs ??= new LaunchTemplateEbsBlockDeviceBuilder();
  set ebs(LaunchTemplateEbsBlockDeviceBuilder? ebs) => _$this._ebs = ebs;

  String? _noDevice;
  String? get noDevice => _$this._noDevice;
  set noDevice(String? noDevice) => _$this._noDevice = noDevice;

  LaunchTemplateBlockDeviceMappingBuilder();

  LaunchTemplateBlockDeviceMappingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceName = $v.deviceName;
      _virtualName = $v.virtualName;
      _ebs = $v.ebs?.toBuilder();
      _noDevice = $v.noDevice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateBlockDeviceMapping other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateBlockDeviceMapping;
  }

  @override
  void update(void Function(LaunchTemplateBlockDeviceMappingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateBlockDeviceMapping build() => _build();

  _$LaunchTemplateBlockDeviceMapping _build() {
    _$LaunchTemplateBlockDeviceMapping _$result;
    try {
      _$result = _$v ??
          new _$LaunchTemplateBlockDeviceMapping._(
              deviceName: deviceName,
              virtualName: virtualName,
              ebs: _ebs?.build(),
              noDevice: noDevice);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ebs';
        _ebs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LaunchTemplateBlockDeviceMapping', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
