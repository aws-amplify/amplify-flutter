// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_instances_block_device_mapping.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduledInstancesBlockDeviceMapping
    extends ScheduledInstancesBlockDeviceMapping {
  @override
  final String? deviceName;
  @override
  final ScheduledInstancesEbs? ebs;
  @override
  final String? noDevice;
  @override
  final String? virtualName;

  factory _$ScheduledInstancesBlockDeviceMapping(
          [void Function(ScheduledInstancesBlockDeviceMappingBuilder)?
              updates]) =>
      (new ScheduledInstancesBlockDeviceMappingBuilder()..update(updates))
          ._build();

  _$ScheduledInstancesBlockDeviceMapping._(
      {this.deviceName, this.ebs, this.noDevice, this.virtualName})
      : super._();

  @override
  ScheduledInstancesBlockDeviceMapping rebuild(
          void Function(ScheduledInstancesBlockDeviceMappingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduledInstancesBlockDeviceMappingBuilder toBuilder() =>
      new ScheduledInstancesBlockDeviceMappingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduledInstancesBlockDeviceMapping &&
        deviceName == other.deviceName &&
        ebs == other.ebs &&
        noDevice == other.noDevice &&
        virtualName == other.virtualName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceName.hashCode);
    _$hash = $jc(_$hash, ebs.hashCode);
    _$hash = $jc(_$hash, noDevice.hashCode);
    _$hash = $jc(_$hash, virtualName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ScheduledInstancesBlockDeviceMappingBuilder
    implements
        Builder<ScheduledInstancesBlockDeviceMapping,
            ScheduledInstancesBlockDeviceMappingBuilder> {
  _$ScheduledInstancesBlockDeviceMapping? _$v;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  ScheduledInstancesEbsBuilder? _ebs;
  ScheduledInstancesEbsBuilder get ebs =>
      _$this._ebs ??= new ScheduledInstancesEbsBuilder();
  set ebs(ScheduledInstancesEbsBuilder? ebs) => _$this._ebs = ebs;

  String? _noDevice;
  String? get noDevice => _$this._noDevice;
  set noDevice(String? noDevice) => _$this._noDevice = noDevice;

  String? _virtualName;
  String? get virtualName => _$this._virtualName;
  set virtualName(String? virtualName) => _$this._virtualName = virtualName;

  ScheduledInstancesBlockDeviceMappingBuilder();

  ScheduledInstancesBlockDeviceMappingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceName = $v.deviceName;
      _ebs = $v.ebs?.toBuilder();
      _noDevice = $v.noDevice;
      _virtualName = $v.virtualName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduledInstancesBlockDeviceMapping other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScheduledInstancesBlockDeviceMapping;
  }

  @override
  void update(
      void Function(ScheduledInstancesBlockDeviceMappingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduledInstancesBlockDeviceMapping build() => _build();

  _$ScheduledInstancesBlockDeviceMapping _build() {
    _$ScheduledInstancesBlockDeviceMapping _$result;
    try {
      _$result = _$v ??
          new _$ScheduledInstancesBlockDeviceMapping._(
              deviceName: deviceName,
              ebs: _ebs?.build(),
              noDevice: noDevice,
              virtualName: virtualName);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ebs';
        _ebs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ScheduledInstancesBlockDeviceMapping',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
