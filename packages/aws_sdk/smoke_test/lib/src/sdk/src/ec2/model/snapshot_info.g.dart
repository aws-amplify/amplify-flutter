// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snapshot_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SnapshotInfo extends SnapshotInfo {
  @override
  final String? description;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final bool encrypted;
  @override
  final String? volumeId;
  @override
  final SnapshotState? state;
  @override
  final int volumeSize;
  @override
  final DateTime? startTime;
  @override
  final String? progress;
  @override
  final String? ownerId;
  @override
  final String? snapshotId;
  @override
  final String? outpostArn;
  @override
  final SseType? sseType;

  factory _$SnapshotInfo([void Function(SnapshotInfoBuilder)? updates]) =>
      (new SnapshotInfoBuilder()..update(updates))._build();

  _$SnapshotInfo._(
      {this.description,
      this.tags,
      required this.encrypted,
      this.volumeId,
      this.state,
      required this.volumeSize,
      this.startTime,
      this.progress,
      this.ownerId,
      this.snapshotId,
      this.outpostArn,
      this.sseType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        encrypted, r'SnapshotInfo', 'encrypted');
    BuiltValueNullFieldError.checkNotNull(
        volumeSize, r'SnapshotInfo', 'volumeSize');
  }

  @override
  SnapshotInfo rebuild(void Function(SnapshotInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SnapshotInfoBuilder toBuilder() => new SnapshotInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SnapshotInfo &&
        description == other.description &&
        tags == other.tags &&
        encrypted == other.encrypted &&
        volumeId == other.volumeId &&
        state == other.state &&
        volumeSize == other.volumeSize &&
        startTime == other.startTime &&
        progress == other.progress &&
        ownerId == other.ownerId &&
        snapshotId == other.snapshotId &&
        outpostArn == other.outpostArn &&
        sseType == other.sseType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, encrypted.hashCode);
    _$hash = $jc(_$hash, volumeId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, volumeSize.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, outpostArn.hashCode);
    _$hash = $jc(_$hash, sseType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SnapshotInfoBuilder
    implements Builder<SnapshotInfo, SnapshotInfoBuilder> {
  _$SnapshotInfo? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  bool? _encrypted;
  bool? get encrypted => _$this._encrypted;
  set encrypted(bool? encrypted) => _$this._encrypted = encrypted;

  String? _volumeId;
  String? get volumeId => _$this._volumeId;
  set volumeId(String? volumeId) => _$this._volumeId = volumeId;

  SnapshotState? _state;
  SnapshotState? get state => _$this._state;
  set state(SnapshotState? state) => _$this._state = state;

  int? _volumeSize;
  int? get volumeSize => _$this._volumeSize;
  set volumeSize(int? volumeSize) => _$this._volumeSize = volumeSize;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  String? _progress;
  String? get progress => _$this._progress;
  set progress(String? progress) => _$this._progress = progress;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  String? _outpostArn;
  String? get outpostArn => _$this._outpostArn;
  set outpostArn(String? outpostArn) => _$this._outpostArn = outpostArn;

  SseType? _sseType;
  SseType? get sseType => _$this._sseType;
  set sseType(SseType? sseType) => _$this._sseType = sseType;

  SnapshotInfoBuilder() {
    SnapshotInfo._init(this);
  }

  SnapshotInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _tags = $v.tags?.toBuilder();
      _encrypted = $v.encrypted;
      _volumeId = $v.volumeId;
      _state = $v.state;
      _volumeSize = $v.volumeSize;
      _startTime = $v.startTime;
      _progress = $v.progress;
      _ownerId = $v.ownerId;
      _snapshotId = $v.snapshotId;
      _outpostArn = $v.outpostArn;
      _sseType = $v.sseType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SnapshotInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SnapshotInfo;
  }

  @override
  void update(void Function(SnapshotInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SnapshotInfo build() => _build();

  _$SnapshotInfo _build() {
    _$SnapshotInfo _$result;
    try {
      _$result = _$v ??
          new _$SnapshotInfo._(
              description: description,
              tags: _tags?.build(),
              encrypted: BuiltValueNullFieldError.checkNotNull(
                  encrypted, r'SnapshotInfo', 'encrypted'),
              volumeId: volumeId,
              state: state,
              volumeSize: BuiltValueNullFieldError.checkNotNull(
                  volumeSize, r'SnapshotInfo', 'volumeSize'),
              startTime: startTime,
              progress: progress,
              ownerId: ownerId,
              snapshotId: snapshotId,
              outpostArn: outpostArn,
              sseType: sseType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SnapshotInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
