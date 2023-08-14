// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_block_device_mapping_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateBlockDeviceMappingRequest
    extends LaunchTemplateBlockDeviceMappingRequest {
  @override
  final String? deviceName;
  @override
  final String? virtualName;
  @override
  final LaunchTemplateEbsBlockDeviceRequest? ebs;
  @override
  final String? noDevice;

  factory _$LaunchTemplateBlockDeviceMappingRequest(
          [void Function(LaunchTemplateBlockDeviceMappingRequestBuilder)?
              updates]) =>
      (new LaunchTemplateBlockDeviceMappingRequestBuilder()..update(updates))
          ._build();

  _$LaunchTemplateBlockDeviceMappingRequest._(
      {this.deviceName, this.virtualName, this.ebs, this.noDevice})
      : super._();

  @override
  LaunchTemplateBlockDeviceMappingRequest rebuild(
          void Function(LaunchTemplateBlockDeviceMappingRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateBlockDeviceMappingRequestBuilder toBuilder() =>
      new LaunchTemplateBlockDeviceMappingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateBlockDeviceMappingRequest &&
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

class LaunchTemplateBlockDeviceMappingRequestBuilder
    implements
        Builder<LaunchTemplateBlockDeviceMappingRequest,
            LaunchTemplateBlockDeviceMappingRequestBuilder> {
  _$LaunchTemplateBlockDeviceMappingRequest? _$v;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  String? _virtualName;
  String? get virtualName => _$this._virtualName;
  set virtualName(String? virtualName) => _$this._virtualName = virtualName;

  LaunchTemplateEbsBlockDeviceRequestBuilder? _ebs;
  LaunchTemplateEbsBlockDeviceRequestBuilder get ebs =>
      _$this._ebs ??= new LaunchTemplateEbsBlockDeviceRequestBuilder();
  set ebs(LaunchTemplateEbsBlockDeviceRequestBuilder? ebs) => _$this._ebs = ebs;

  String? _noDevice;
  String? get noDevice => _$this._noDevice;
  set noDevice(String? noDevice) => _$this._noDevice = noDevice;

  LaunchTemplateBlockDeviceMappingRequestBuilder();

  LaunchTemplateBlockDeviceMappingRequestBuilder get _$this {
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
  void replace(LaunchTemplateBlockDeviceMappingRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateBlockDeviceMappingRequest;
  }

  @override
  void update(
      void Function(LaunchTemplateBlockDeviceMappingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateBlockDeviceMappingRequest build() => _build();

  _$LaunchTemplateBlockDeviceMappingRequest _build() {
    _$LaunchTemplateBlockDeviceMappingRequest _$result;
    try {
      _$result = _$v ??
          new _$LaunchTemplateBlockDeviceMappingRequest._(
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
            r'LaunchTemplateBlockDeviceMappingRequest',
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
