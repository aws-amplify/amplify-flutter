// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restore_snapshot_from_recycle_bin_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreSnapshotFromRecycleBinResult
    extends RestoreSnapshotFromRecycleBinResult {
  @override
  final String? snapshotId;
  @override
  final String? outpostArn;
  @override
  final String? description;
  @override
  final bool encrypted;
  @override
  final String? ownerId;
  @override
  final String? progress;
  @override
  final DateTime? startTime;
  @override
  final SnapshotState? state;
  @override
  final String? volumeId;
  @override
  final int volumeSize;
  @override
  final SseType? sseType;

  factory _$RestoreSnapshotFromRecycleBinResult(
          [void Function(RestoreSnapshotFromRecycleBinResultBuilder)?
              updates]) =>
      (new RestoreSnapshotFromRecycleBinResultBuilder()..update(updates))
          ._build();

  _$RestoreSnapshotFromRecycleBinResult._(
      {this.snapshotId,
      this.outpostArn,
      this.description,
      required this.encrypted,
      this.ownerId,
      this.progress,
      this.startTime,
      this.state,
      this.volumeId,
      required this.volumeSize,
      this.sseType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        encrypted, r'RestoreSnapshotFromRecycleBinResult', 'encrypted');
    BuiltValueNullFieldError.checkNotNull(
        volumeSize, r'RestoreSnapshotFromRecycleBinResult', 'volumeSize');
  }

  @override
  RestoreSnapshotFromRecycleBinResult rebuild(
          void Function(RestoreSnapshotFromRecycleBinResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreSnapshotFromRecycleBinResultBuilder toBuilder() =>
      new RestoreSnapshotFromRecycleBinResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreSnapshotFromRecycleBinResult &&
        snapshotId == other.snapshotId &&
        outpostArn == other.outpostArn &&
        description == other.description &&
        encrypted == other.encrypted &&
        ownerId == other.ownerId &&
        progress == other.progress &&
        startTime == other.startTime &&
        state == other.state &&
        volumeId == other.volumeId &&
        volumeSize == other.volumeSize &&
        sseType == other.sseType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, outpostArn.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, encrypted.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, volumeId.hashCode);
    _$hash = $jc(_$hash, volumeSize.hashCode);
    _$hash = $jc(_$hash, sseType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RestoreSnapshotFromRecycleBinResultBuilder
    implements
        Builder<RestoreSnapshotFromRecycleBinResult,
            RestoreSnapshotFromRecycleBinResultBuilder> {
  _$RestoreSnapshotFromRecycleBinResult? _$v;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  String? _outpostArn;
  String? get outpostArn => _$this._outpostArn;
  set outpostArn(String? outpostArn) => _$this._outpostArn = outpostArn;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _encrypted;
  bool? get encrypted => _$this._encrypted;
  set encrypted(bool? encrypted) => _$this._encrypted = encrypted;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _progress;
  String? get progress => _$this._progress;
  set progress(String? progress) => _$this._progress = progress;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  SnapshotState? _state;
  SnapshotState? get state => _$this._state;
  set state(SnapshotState? state) => _$this._state = state;

  String? _volumeId;
  String? get volumeId => _$this._volumeId;
  set volumeId(String? volumeId) => _$this._volumeId = volumeId;

  int? _volumeSize;
  int? get volumeSize => _$this._volumeSize;
  set volumeSize(int? volumeSize) => _$this._volumeSize = volumeSize;

  SseType? _sseType;
  SseType? get sseType => _$this._sseType;
  set sseType(SseType? sseType) => _$this._sseType = sseType;

  RestoreSnapshotFromRecycleBinResultBuilder() {
    RestoreSnapshotFromRecycleBinResult._init(this);
  }

  RestoreSnapshotFromRecycleBinResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _snapshotId = $v.snapshotId;
      _outpostArn = $v.outpostArn;
      _description = $v.description;
      _encrypted = $v.encrypted;
      _ownerId = $v.ownerId;
      _progress = $v.progress;
      _startTime = $v.startTime;
      _state = $v.state;
      _volumeId = $v.volumeId;
      _volumeSize = $v.volumeSize;
      _sseType = $v.sseType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestoreSnapshotFromRecycleBinResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreSnapshotFromRecycleBinResult;
  }

  @override
  void update(
      void Function(RestoreSnapshotFromRecycleBinResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreSnapshotFromRecycleBinResult build() => _build();

  _$RestoreSnapshotFromRecycleBinResult _build() {
    final _$result = _$v ??
        new _$RestoreSnapshotFromRecycleBinResult._(
            snapshotId: snapshotId,
            outpostArn: outpostArn,
            description: description,
            encrypted: BuiltValueNullFieldError.checkNotNull(
                encrypted, r'RestoreSnapshotFromRecycleBinResult', 'encrypted'),
            ownerId: ownerId,
            progress: progress,
            startTime: startTime,
            state: state,
            volumeId: volumeId,
            volumeSize: BuiltValueNullFieldError.checkNotNull(volumeSize,
                r'RestoreSnapshotFromRecycleBinResult', 'volumeSize'),
            sseType: sseType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
