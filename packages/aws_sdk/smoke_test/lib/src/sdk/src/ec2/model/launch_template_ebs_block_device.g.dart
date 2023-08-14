// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_ebs_block_device.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateEbsBlockDevice extends LaunchTemplateEbsBlockDevice {
  @override
  final bool encrypted;
  @override
  final bool deleteOnTermination;
  @override
  final int iops;
  @override
  final String? kmsKeyId;
  @override
  final String? snapshotId;
  @override
  final int volumeSize;
  @override
  final VolumeType? volumeType;
  @override
  final int throughput;

  factory _$LaunchTemplateEbsBlockDevice(
          [void Function(LaunchTemplateEbsBlockDeviceBuilder)? updates]) =>
      (new LaunchTemplateEbsBlockDeviceBuilder()..update(updates))._build();

  _$LaunchTemplateEbsBlockDevice._(
      {required this.encrypted,
      required this.deleteOnTermination,
      required this.iops,
      this.kmsKeyId,
      this.snapshotId,
      required this.volumeSize,
      this.volumeType,
      required this.throughput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        encrypted, r'LaunchTemplateEbsBlockDevice', 'encrypted');
    BuiltValueNullFieldError.checkNotNull(deleteOnTermination,
        r'LaunchTemplateEbsBlockDevice', 'deleteOnTermination');
    BuiltValueNullFieldError.checkNotNull(
        iops, r'LaunchTemplateEbsBlockDevice', 'iops');
    BuiltValueNullFieldError.checkNotNull(
        volumeSize, r'LaunchTemplateEbsBlockDevice', 'volumeSize');
    BuiltValueNullFieldError.checkNotNull(
        throughput, r'LaunchTemplateEbsBlockDevice', 'throughput');
  }

  @override
  LaunchTemplateEbsBlockDevice rebuild(
          void Function(LaunchTemplateEbsBlockDeviceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateEbsBlockDeviceBuilder toBuilder() =>
      new LaunchTemplateEbsBlockDeviceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateEbsBlockDevice &&
        encrypted == other.encrypted &&
        deleteOnTermination == other.deleteOnTermination &&
        iops == other.iops &&
        kmsKeyId == other.kmsKeyId &&
        snapshotId == other.snapshotId &&
        volumeSize == other.volumeSize &&
        volumeType == other.volumeType &&
        throughput == other.throughput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, encrypted.hashCode);
    _$hash = $jc(_$hash, deleteOnTermination.hashCode);
    _$hash = $jc(_$hash, iops.hashCode);
    _$hash = $jc(_$hash, kmsKeyId.hashCode);
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, volumeSize.hashCode);
    _$hash = $jc(_$hash, volumeType.hashCode);
    _$hash = $jc(_$hash, throughput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchTemplateEbsBlockDeviceBuilder
    implements
        Builder<LaunchTemplateEbsBlockDevice,
            LaunchTemplateEbsBlockDeviceBuilder> {
  _$LaunchTemplateEbsBlockDevice? _$v;

  bool? _encrypted;
  bool? get encrypted => _$this._encrypted;
  set encrypted(bool? encrypted) => _$this._encrypted = encrypted;

  bool? _deleteOnTermination;
  bool? get deleteOnTermination => _$this._deleteOnTermination;
  set deleteOnTermination(bool? deleteOnTermination) =>
      _$this._deleteOnTermination = deleteOnTermination;

  int? _iops;
  int? get iops => _$this._iops;
  set iops(int? iops) => _$this._iops = iops;

  String? _kmsKeyId;
  String? get kmsKeyId => _$this._kmsKeyId;
  set kmsKeyId(String? kmsKeyId) => _$this._kmsKeyId = kmsKeyId;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  int? _volumeSize;
  int? get volumeSize => _$this._volumeSize;
  set volumeSize(int? volumeSize) => _$this._volumeSize = volumeSize;

  VolumeType? _volumeType;
  VolumeType? get volumeType => _$this._volumeType;
  set volumeType(VolumeType? volumeType) => _$this._volumeType = volumeType;

  int? _throughput;
  int? get throughput => _$this._throughput;
  set throughput(int? throughput) => _$this._throughput = throughput;

  LaunchTemplateEbsBlockDeviceBuilder() {
    LaunchTemplateEbsBlockDevice._init(this);
  }

  LaunchTemplateEbsBlockDeviceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _encrypted = $v.encrypted;
      _deleteOnTermination = $v.deleteOnTermination;
      _iops = $v.iops;
      _kmsKeyId = $v.kmsKeyId;
      _snapshotId = $v.snapshotId;
      _volumeSize = $v.volumeSize;
      _volumeType = $v.volumeType;
      _throughput = $v.throughput;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateEbsBlockDevice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateEbsBlockDevice;
  }

  @override
  void update(void Function(LaunchTemplateEbsBlockDeviceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateEbsBlockDevice build() => _build();

  _$LaunchTemplateEbsBlockDevice _build() {
    final _$result = _$v ??
        new _$LaunchTemplateEbsBlockDevice._(
            encrypted: BuiltValueNullFieldError.checkNotNull(
                encrypted, r'LaunchTemplateEbsBlockDevice', 'encrypted'),
            deleteOnTermination: BuiltValueNullFieldError.checkNotNull(
                deleteOnTermination,
                r'LaunchTemplateEbsBlockDevice',
                'deleteOnTermination'),
            iops: BuiltValueNullFieldError.checkNotNull(
                iops, r'LaunchTemplateEbsBlockDevice', 'iops'),
            kmsKeyId: kmsKeyId,
            snapshotId: snapshotId,
            volumeSize: BuiltValueNullFieldError.checkNotNull(
                volumeSize, r'LaunchTemplateEbsBlockDevice', 'volumeSize'),
            volumeType: volumeType,
            throughput: BuiltValueNullFieldError.checkNotNull(
                throughput, r'LaunchTemplateEbsBlockDevice', 'throughput'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
