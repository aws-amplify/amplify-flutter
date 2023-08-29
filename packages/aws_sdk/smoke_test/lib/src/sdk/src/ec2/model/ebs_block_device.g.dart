// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ebs_block_device.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EbsBlockDevice extends EbsBlockDevice {
  @override
  final bool deleteOnTermination;
  @override
  final int iops;
  @override
  final String? snapshotId;
  @override
  final int volumeSize;
  @override
  final VolumeType? volumeType;
  @override
  final String? kmsKeyId;
  @override
  final int throughput;
  @override
  final String? outpostArn;
  @override
  final bool encrypted;

  factory _$EbsBlockDevice([void Function(EbsBlockDeviceBuilder)? updates]) =>
      (new EbsBlockDeviceBuilder()..update(updates))._build();

  _$EbsBlockDevice._(
      {required this.deleteOnTermination,
      required this.iops,
      this.snapshotId,
      required this.volumeSize,
      this.volumeType,
      this.kmsKeyId,
      required this.throughput,
      this.outpostArn,
      required this.encrypted})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deleteOnTermination, r'EbsBlockDevice', 'deleteOnTermination');
    BuiltValueNullFieldError.checkNotNull(iops, r'EbsBlockDevice', 'iops');
    BuiltValueNullFieldError.checkNotNull(
        volumeSize, r'EbsBlockDevice', 'volumeSize');
    BuiltValueNullFieldError.checkNotNull(
        throughput, r'EbsBlockDevice', 'throughput');
    BuiltValueNullFieldError.checkNotNull(
        encrypted, r'EbsBlockDevice', 'encrypted');
  }

  @override
  EbsBlockDevice rebuild(void Function(EbsBlockDeviceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EbsBlockDeviceBuilder toBuilder() =>
      new EbsBlockDeviceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EbsBlockDevice &&
        deleteOnTermination == other.deleteOnTermination &&
        iops == other.iops &&
        snapshotId == other.snapshotId &&
        volumeSize == other.volumeSize &&
        volumeType == other.volumeType &&
        kmsKeyId == other.kmsKeyId &&
        throughput == other.throughput &&
        outpostArn == other.outpostArn &&
        encrypted == other.encrypted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deleteOnTermination.hashCode);
    _$hash = $jc(_$hash, iops.hashCode);
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, volumeSize.hashCode);
    _$hash = $jc(_$hash, volumeType.hashCode);
    _$hash = $jc(_$hash, kmsKeyId.hashCode);
    _$hash = $jc(_$hash, throughput.hashCode);
    _$hash = $jc(_$hash, outpostArn.hashCode);
    _$hash = $jc(_$hash, encrypted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EbsBlockDeviceBuilder
    implements Builder<EbsBlockDevice, EbsBlockDeviceBuilder> {
  _$EbsBlockDevice? _$v;

  bool? _deleteOnTermination;
  bool? get deleteOnTermination => _$this._deleteOnTermination;
  set deleteOnTermination(bool? deleteOnTermination) =>
      _$this._deleteOnTermination = deleteOnTermination;

  int? _iops;
  int? get iops => _$this._iops;
  set iops(int? iops) => _$this._iops = iops;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  int? _volumeSize;
  int? get volumeSize => _$this._volumeSize;
  set volumeSize(int? volumeSize) => _$this._volumeSize = volumeSize;

  VolumeType? _volumeType;
  VolumeType? get volumeType => _$this._volumeType;
  set volumeType(VolumeType? volumeType) => _$this._volumeType = volumeType;

  String? _kmsKeyId;
  String? get kmsKeyId => _$this._kmsKeyId;
  set kmsKeyId(String? kmsKeyId) => _$this._kmsKeyId = kmsKeyId;

  int? _throughput;
  int? get throughput => _$this._throughput;
  set throughput(int? throughput) => _$this._throughput = throughput;

  String? _outpostArn;
  String? get outpostArn => _$this._outpostArn;
  set outpostArn(String? outpostArn) => _$this._outpostArn = outpostArn;

  bool? _encrypted;
  bool? get encrypted => _$this._encrypted;
  set encrypted(bool? encrypted) => _$this._encrypted = encrypted;

  EbsBlockDeviceBuilder() {
    EbsBlockDevice._init(this);
  }

  EbsBlockDeviceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deleteOnTermination = $v.deleteOnTermination;
      _iops = $v.iops;
      _snapshotId = $v.snapshotId;
      _volumeSize = $v.volumeSize;
      _volumeType = $v.volumeType;
      _kmsKeyId = $v.kmsKeyId;
      _throughput = $v.throughput;
      _outpostArn = $v.outpostArn;
      _encrypted = $v.encrypted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EbsBlockDevice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EbsBlockDevice;
  }

  @override
  void update(void Function(EbsBlockDeviceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EbsBlockDevice build() => _build();

  _$EbsBlockDevice _build() {
    final _$result = _$v ??
        new _$EbsBlockDevice._(
            deleteOnTermination: BuiltValueNullFieldError.checkNotNull(
                deleteOnTermination, r'EbsBlockDevice', 'deleteOnTermination'),
            iops: BuiltValueNullFieldError.checkNotNull(
                iops, r'EbsBlockDevice', 'iops'),
            snapshotId: snapshotId,
            volumeSize: BuiltValueNullFieldError.checkNotNull(
                volumeSize, r'EbsBlockDevice', 'volumeSize'),
            volumeType: volumeType,
            kmsKeyId: kmsKeyId,
            throughput: BuiltValueNullFieldError.checkNotNull(
                throughput, r'EbsBlockDevice', 'throughput'),
            outpostArn: outpostArn,
            encrypted: BuiltValueNullFieldError.checkNotNull(
                encrypted, r'EbsBlockDevice', 'encrypted'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
