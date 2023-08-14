// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_instances_ebs.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduledInstancesEbs extends ScheduledInstancesEbs {
  @override
  final bool deleteOnTermination;
  @override
  final bool encrypted;
  @override
  final int iops;
  @override
  final String? snapshotId;
  @override
  final int volumeSize;
  @override
  final String? volumeType;

  factory _$ScheduledInstancesEbs(
          [void Function(ScheduledInstancesEbsBuilder)? updates]) =>
      (new ScheduledInstancesEbsBuilder()..update(updates))._build();

  _$ScheduledInstancesEbs._(
      {required this.deleteOnTermination,
      required this.encrypted,
      required this.iops,
      this.snapshotId,
      required this.volumeSize,
      this.volumeType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deleteOnTermination, r'ScheduledInstancesEbs', 'deleteOnTermination');
    BuiltValueNullFieldError.checkNotNull(
        encrypted, r'ScheduledInstancesEbs', 'encrypted');
    BuiltValueNullFieldError.checkNotNull(
        iops, r'ScheduledInstancesEbs', 'iops');
    BuiltValueNullFieldError.checkNotNull(
        volumeSize, r'ScheduledInstancesEbs', 'volumeSize');
  }

  @override
  ScheduledInstancesEbs rebuild(
          void Function(ScheduledInstancesEbsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduledInstancesEbsBuilder toBuilder() =>
      new ScheduledInstancesEbsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduledInstancesEbs &&
        deleteOnTermination == other.deleteOnTermination &&
        encrypted == other.encrypted &&
        iops == other.iops &&
        snapshotId == other.snapshotId &&
        volumeSize == other.volumeSize &&
        volumeType == other.volumeType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deleteOnTermination.hashCode);
    _$hash = $jc(_$hash, encrypted.hashCode);
    _$hash = $jc(_$hash, iops.hashCode);
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, volumeSize.hashCode);
    _$hash = $jc(_$hash, volumeType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ScheduledInstancesEbsBuilder
    implements Builder<ScheduledInstancesEbs, ScheduledInstancesEbsBuilder> {
  _$ScheduledInstancesEbs? _$v;

  bool? _deleteOnTermination;
  bool? get deleteOnTermination => _$this._deleteOnTermination;
  set deleteOnTermination(bool? deleteOnTermination) =>
      _$this._deleteOnTermination = deleteOnTermination;

  bool? _encrypted;
  bool? get encrypted => _$this._encrypted;
  set encrypted(bool? encrypted) => _$this._encrypted = encrypted;

  int? _iops;
  int? get iops => _$this._iops;
  set iops(int? iops) => _$this._iops = iops;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  int? _volumeSize;
  int? get volumeSize => _$this._volumeSize;
  set volumeSize(int? volumeSize) => _$this._volumeSize = volumeSize;

  String? _volumeType;
  String? get volumeType => _$this._volumeType;
  set volumeType(String? volumeType) => _$this._volumeType = volumeType;

  ScheduledInstancesEbsBuilder() {
    ScheduledInstancesEbs._init(this);
  }

  ScheduledInstancesEbsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deleteOnTermination = $v.deleteOnTermination;
      _encrypted = $v.encrypted;
      _iops = $v.iops;
      _snapshotId = $v.snapshotId;
      _volumeSize = $v.volumeSize;
      _volumeType = $v.volumeType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduledInstancesEbs other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScheduledInstancesEbs;
  }

  @override
  void update(void Function(ScheduledInstancesEbsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduledInstancesEbs build() => _build();

  _$ScheduledInstancesEbs _build() {
    final _$result = _$v ??
        new _$ScheduledInstancesEbs._(
            deleteOnTermination: BuiltValueNullFieldError.checkNotNull(
                deleteOnTermination,
                r'ScheduledInstancesEbs',
                'deleteOnTermination'),
            encrypted: BuiltValueNullFieldError.checkNotNull(
                encrypted, r'ScheduledInstancesEbs', 'encrypted'),
            iops: BuiltValueNullFieldError.checkNotNull(
                iops, r'ScheduledInstancesEbs', 'iops'),
            snapshotId: snapshotId,
            volumeSize: BuiltValueNullFieldError.checkNotNull(
                volumeSize, r'ScheduledInstancesEbs', 'volumeSize'),
            volumeType: volumeType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
