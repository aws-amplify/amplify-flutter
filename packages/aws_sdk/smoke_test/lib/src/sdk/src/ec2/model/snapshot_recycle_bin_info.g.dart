// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snapshot_recycle_bin_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SnapshotRecycleBinInfo extends SnapshotRecycleBinInfo {
  @override
  final String? snapshotId;
  @override
  final DateTime? recycleBinEnterTime;
  @override
  final DateTime? recycleBinExitTime;
  @override
  final String? description;
  @override
  final String? volumeId;

  factory _$SnapshotRecycleBinInfo(
          [void Function(SnapshotRecycleBinInfoBuilder)? updates]) =>
      (new SnapshotRecycleBinInfoBuilder()..update(updates))._build();

  _$SnapshotRecycleBinInfo._(
      {this.snapshotId,
      this.recycleBinEnterTime,
      this.recycleBinExitTime,
      this.description,
      this.volumeId})
      : super._();

  @override
  SnapshotRecycleBinInfo rebuild(
          void Function(SnapshotRecycleBinInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SnapshotRecycleBinInfoBuilder toBuilder() =>
      new SnapshotRecycleBinInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SnapshotRecycleBinInfo &&
        snapshotId == other.snapshotId &&
        recycleBinEnterTime == other.recycleBinEnterTime &&
        recycleBinExitTime == other.recycleBinExitTime &&
        description == other.description &&
        volumeId == other.volumeId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, recycleBinEnterTime.hashCode);
    _$hash = $jc(_$hash, recycleBinExitTime.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, volumeId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SnapshotRecycleBinInfoBuilder
    implements Builder<SnapshotRecycleBinInfo, SnapshotRecycleBinInfoBuilder> {
  _$SnapshotRecycleBinInfo? _$v;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  DateTime? _recycleBinEnterTime;
  DateTime? get recycleBinEnterTime => _$this._recycleBinEnterTime;
  set recycleBinEnterTime(DateTime? recycleBinEnterTime) =>
      _$this._recycleBinEnterTime = recycleBinEnterTime;

  DateTime? _recycleBinExitTime;
  DateTime? get recycleBinExitTime => _$this._recycleBinExitTime;
  set recycleBinExitTime(DateTime? recycleBinExitTime) =>
      _$this._recycleBinExitTime = recycleBinExitTime;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _volumeId;
  String? get volumeId => _$this._volumeId;
  set volumeId(String? volumeId) => _$this._volumeId = volumeId;

  SnapshotRecycleBinInfoBuilder();

  SnapshotRecycleBinInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _snapshotId = $v.snapshotId;
      _recycleBinEnterTime = $v.recycleBinEnterTime;
      _recycleBinExitTime = $v.recycleBinExitTime;
      _description = $v.description;
      _volumeId = $v.volumeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SnapshotRecycleBinInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SnapshotRecycleBinInfo;
  }

  @override
  void update(void Function(SnapshotRecycleBinInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SnapshotRecycleBinInfo build() => _build();

  _$SnapshotRecycleBinInfo _build() {
    final _$result = _$v ??
        new _$SnapshotRecycleBinInfo._(
            snapshotId: snapshotId,
            recycleBinEnterTime: recycleBinEnterTime,
            recycleBinExitTime: recycleBinExitTime,
            description: description,
            volumeId: volumeId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
