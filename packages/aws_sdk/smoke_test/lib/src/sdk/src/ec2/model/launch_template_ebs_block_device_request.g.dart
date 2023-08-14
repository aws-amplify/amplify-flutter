// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_ebs_block_device_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateEbsBlockDeviceRequest
    extends LaunchTemplateEbsBlockDeviceRequest {
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

  factory _$LaunchTemplateEbsBlockDeviceRequest(
          [void Function(LaunchTemplateEbsBlockDeviceRequestBuilder)?
              updates]) =>
      (new LaunchTemplateEbsBlockDeviceRequestBuilder()..update(updates))
          ._build();

  _$LaunchTemplateEbsBlockDeviceRequest._(
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
        encrypted, r'LaunchTemplateEbsBlockDeviceRequest', 'encrypted');
    BuiltValueNullFieldError.checkNotNull(deleteOnTermination,
        r'LaunchTemplateEbsBlockDeviceRequest', 'deleteOnTermination');
    BuiltValueNullFieldError.checkNotNull(
        iops, r'LaunchTemplateEbsBlockDeviceRequest', 'iops');
    BuiltValueNullFieldError.checkNotNull(
        volumeSize, r'LaunchTemplateEbsBlockDeviceRequest', 'volumeSize');
    BuiltValueNullFieldError.checkNotNull(
        throughput, r'LaunchTemplateEbsBlockDeviceRequest', 'throughput');
  }

  @override
  LaunchTemplateEbsBlockDeviceRequest rebuild(
          void Function(LaunchTemplateEbsBlockDeviceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateEbsBlockDeviceRequestBuilder toBuilder() =>
      new LaunchTemplateEbsBlockDeviceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateEbsBlockDeviceRequest &&
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

class LaunchTemplateEbsBlockDeviceRequestBuilder
    implements
        Builder<LaunchTemplateEbsBlockDeviceRequest,
            LaunchTemplateEbsBlockDeviceRequestBuilder> {
  _$LaunchTemplateEbsBlockDeviceRequest? _$v;

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

  LaunchTemplateEbsBlockDeviceRequestBuilder() {
    LaunchTemplateEbsBlockDeviceRequest._init(this);
  }

  LaunchTemplateEbsBlockDeviceRequestBuilder get _$this {
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
  void replace(LaunchTemplateEbsBlockDeviceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateEbsBlockDeviceRequest;
  }

  @override
  void update(
      void Function(LaunchTemplateEbsBlockDeviceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateEbsBlockDeviceRequest build() => _build();

  _$LaunchTemplateEbsBlockDeviceRequest _build() {
    final _$result = _$v ??
        new _$LaunchTemplateEbsBlockDeviceRequest._(
            encrypted: BuiltValueNullFieldError.checkNotNull(
                encrypted, r'LaunchTemplateEbsBlockDeviceRequest', 'encrypted'),
            deleteOnTermination: BuiltValueNullFieldError.checkNotNull(
                deleteOnTermination,
                r'LaunchTemplateEbsBlockDeviceRequest',
                'deleteOnTermination'),
            iops: BuiltValueNullFieldError.checkNotNull(
                iops, r'LaunchTemplateEbsBlockDeviceRequest', 'iops'),
            kmsKeyId: kmsKeyId,
            snapshotId: snapshotId,
            volumeSize: BuiltValueNullFieldError.checkNotNull(volumeSize,
                r'LaunchTemplateEbsBlockDeviceRequest', 'volumeSize'),
            volumeType: volumeType,
            throughput: BuiltValueNullFieldError.checkNotNull(throughput,
                r'LaunchTemplateEbsBlockDeviceRequest', 'throughput'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
