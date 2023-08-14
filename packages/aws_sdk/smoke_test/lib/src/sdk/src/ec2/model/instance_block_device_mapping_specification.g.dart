// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_block_device_mapping_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceBlockDeviceMappingSpecification
    extends InstanceBlockDeviceMappingSpecification {
  @override
  final String? deviceName;
  @override
  final EbsInstanceBlockDeviceSpecification? ebs;
  @override
  final String? noDevice;
  @override
  final String? virtualName;

  factory _$InstanceBlockDeviceMappingSpecification(
          [void Function(InstanceBlockDeviceMappingSpecificationBuilder)?
              updates]) =>
      (new InstanceBlockDeviceMappingSpecificationBuilder()..update(updates))
          ._build();

  _$InstanceBlockDeviceMappingSpecification._(
      {this.deviceName, this.ebs, this.noDevice, this.virtualName})
      : super._();

  @override
  InstanceBlockDeviceMappingSpecification rebuild(
          void Function(InstanceBlockDeviceMappingSpecificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceBlockDeviceMappingSpecificationBuilder toBuilder() =>
      new InstanceBlockDeviceMappingSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceBlockDeviceMappingSpecification &&
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

class InstanceBlockDeviceMappingSpecificationBuilder
    implements
        Builder<InstanceBlockDeviceMappingSpecification,
            InstanceBlockDeviceMappingSpecificationBuilder> {
  _$InstanceBlockDeviceMappingSpecification? _$v;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  EbsInstanceBlockDeviceSpecificationBuilder? _ebs;
  EbsInstanceBlockDeviceSpecificationBuilder get ebs =>
      _$this._ebs ??= new EbsInstanceBlockDeviceSpecificationBuilder();
  set ebs(EbsInstanceBlockDeviceSpecificationBuilder? ebs) => _$this._ebs = ebs;

  String? _noDevice;
  String? get noDevice => _$this._noDevice;
  set noDevice(String? noDevice) => _$this._noDevice = noDevice;

  String? _virtualName;
  String? get virtualName => _$this._virtualName;
  set virtualName(String? virtualName) => _$this._virtualName = virtualName;

  InstanceBlockDeviceMappingSpecificationBuilder();

  InstanceBlockDeviceMappingSpecificationBuilder get _$this {
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
  void replace(InstanceBlockDeviceMappingSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceBlockDeviceMappingSpecification;
  }

  @override
  void update(
      void Function(InstanceBlockDeviceMappingSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceBlockDeviceMappingSpecification build() => _build();

  _$InstanceBlockDeviceMappingSpecification _build() {
    _$InstanceBlockDeviceMappingSpecification _$result;
    try {
      _$result = _$v ??
          new _$InstanceBlockDeviceMappingSpecification._(
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
            r'InstanceBlockDeviceMappingSpecification',
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
