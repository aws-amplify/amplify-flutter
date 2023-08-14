// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snapshot_tier_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SnapshotTierStatus extends SnapshotTierStatus {
  @override
  final String? snapshotId;
  @override
  final String? volumeId;
  @override
  final SnapshotState? status;
  @override
  final String? ownerId;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final StorageTier? storageTier;
  @override
  final DateTime? lastTieringStartTime;
  @override
  final int lastTieringProgress;
  @override
  final TieringOperationStatus? lastTieringOperationStatus;
  @override
  final String? lastTieringOperationStatusDetail;
  @override
  final DateTime? archivalCompleteTime;
  @override
  final DateTime? restoreExpiryTime;

  factory _$SnapshotTierStatus(
          [void Function(SnapshotTierStatusBuilder)? updates]) =>
      (new SnapshotTierStatusBuilder()..update(updates))._build();

  _$SnapshotTierStatus._(
      {this.snapshotId,
      this.volumeId,
      this.status,
      this.ownerId,
      this.tags,
      this.storageTier,
      this.lastTieringStartTime,
      required this.lastTieringProgress,
      this.lastTieringOperationStatus,
      this.lastTieringOperationStatusDetail,
      this.archivalCompleteTime,
      this.restoreExpiryTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        lastTieringProgress, r'SnapshotTierStatus', 'lastTieringProgress');
  }

  @override
  SnapshotTierStatus rebuild(
          void Function(SnapshotTierStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SnapshotTierStatusBuilder toBuilder() =>
      new SnapshotTierStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SnapshotTierStatus &&
        snapshotId == other.snapshotId &&
        volumeId == other.volumeId &&
        status == other.status &&
        ownerId == other.ownerId &&
        tags == other.tags &&
        storageTier == other.storageTier &&
        lastTieringStartTime == other.lastTieringStartTime &&
        lastTieringProgress == other.lastTieringProgress &&
        lastTieringOperationStatus == other.lastTieringOperationStatus &&
        lastTieringOperationStatusDetail ==
            other.lastTieringOperationStatusDetail &&
        archivalCompleteTime == other.archivalCompleteTime &&
        restoreExpiryTime == other.restoreExpiryTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, volumeId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, storageTier.hashCode);
    _$hash = $jc(_$hash, lastTieringStartTime.hashCode);
    _$hash = $jc(_$hash, lastTieringProgress.hashCode);
    _$hash = $jc(_$hash, lastTieringOperationStatus.hashCode);
    _$hash = $jc(_$hash, lastTieringOperationStatusDetail.hashCode);
    _$hash = $jc(_$hash, archivalCompleteTime.hashCode);
    _$hash = $jc(_$hash, restoreExpiryTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SnapshotTierStatusBuilder
    implements Builder<SnapshotTierStatus, SnapshotTierStatusBuilder> {
  _$SnapshotTierStatus? _$v;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  String? _volumeId;
  String? get volumeId => _$this._volumeId;
  set volumeId(String? volumeId) => _$this._volumeId = volumeId;

  SnapshotState? _status;
  SnapshotState? get status => _$this._status;
  set status(SnapshotState? status) => _$this._status = status;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  StorageTier? _storageTier;
  StorageTier? get storageTier => _$this._storageTier;
  set storageTier(StorageTier? storageTier) =>
      _$this._storageTier = storageTier;

  DateTime? _lastTieringStartTime;
  DateTime? get lastTieringStartTime => _$this._lastTieringStartTime;
  set lastTieringStartTime(DateTime? lastTieringStartTime) =>
      _$this._lastTieringStartTime = lastTieringStartTime;

  int? _lastTieringProgress;
  int? get lastTieringProgress => _$this._lastTieringProgress;
  set lastTieringProgress(int? lastTieringProgress) =>
      _$this._lastTieringProgress = lastTieringProgress;

  TieringOperationStatus? _lastTieringOperationStatus;
  TieringOperationStatus? get lastTieringOperationStatus =>
      _$this._lastTieringOperationStatus;
  set lastTieringOperationStatus(
          TieringOperationStatus? lastTieringOperationStatus) =>
      _$this._lastTieringOperationStatus = lastTieringOperationStatus;

  String? _lastTieringOperationStatusDetail;
  String? get lastTieringOperationStatusDetail =>
      _$this._lastTieringOperationStatusDetail;
  set lastTieringOperationStatusDetail(
          String? lastTieringOperationStatusDetail) =>
      _$this._lastTieringOperationStatusDetail =
          lastTieringOperationStatusDetail;

  DateTime? _archivalCompleteTime;
  DateTime? get archivalCompleteTime => _$this._archivalCompleteTime;
  set archivalCompleteTime(DateTime? archivalCompleteTime) =>
      _$this._archivalCompleteTime = archivalCompleteTime;

  DateTime? _restoreExpiryTime;
  DateTime? get restoreExpiryTime => _$this._restoreExpiryTime;
  set restoreExpiryTime(DateTime? restoreExpiryTime) =>
      _$this._restoreExpiryTime = restoreExpiryTime;

  SnapshotTierStatusBuilder() {
    SnapshotTierStatus._init(this);
  }

  SnapshotTierStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _snapshotId = $v.snapshotId;
      _volumeId = $v.volumeId;
      _status = $v.status;
      _ownerId = $v.ownerId;
      _tags = $v.tags?.toBuilder();
      _storageTier = $v.storageTier;
      _lastTieringStartTime = $v.lastTieringStartTime;
      _lastTieringProgress = $v.lastTieringProgress;
      _lastTieringOperationStatus = $v.lastTieringOperationStatus;
      _lastTieringOperationStatusDetail = $v.lastTieringOperationStatusDetail;
      _archivalCompleteTime = $v.archivalCompleteTime;
      _restoreExpiryTime = $v.restoreExpiryTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SnapshotTierStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SnapshotTierStatus;
  }

  @override
  void update(void Function(SnapshotTierStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SnapshotTierStatus build() => _build();

  _$SnapshotTierStatus _build() {
    _$SnapshotTierStatus _$result;
    try {
      _$result = _$v ??
          new _$SnapshotTierStatus._(
              snapshotId: snapshotId,
              volumeId: volumeId,
              status: status,
              ownerId: ownerId,
              tags: _tags?.build(),
              storageTier: storageTier,
              lastTieringStartTime: lastTieringStartTime,
              lastTieringProgress: BuiltValueNullFieldError.checkNotNull(
                  lastTieringProgress,
                  r'SnapshotTierStatus',
                  'lastTieringProgress'),
              lastTieringOperationStatus: lastTieringOperationStatus,
              lastTieringOperationStatusDetail:
                  lastTieringOperationStatusDetail,
              archivalCompleteTime: archivalCompleteTime,
              restoreExpiryTime: restoreExpiryTime);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SnapshotTierStatus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
