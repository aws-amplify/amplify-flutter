// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snapshot.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Snapshot extends Snapshot {
  @override
  final String? dataEncryptionKeyId;
  @override
  final String? description;
  @override
  final bool encrypted;
  @override
  final String? kmsKeyId;
  @override
  final String? ownerId;
  @override
  final String? progress;
  @override
  final String? snapshotId;
  @override
  final DateTime? startTime;
  @override
  final SnapshotState? state;
  @override
  final String? stateMessage;
  @override
  final String? volumeId;
  @override
  final int volumeSize;
  @override
  final String? ownerAlias;
  @override
  final String? outpostArn;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final StorageTier? storageTier;
  @override
  final DateTime? restoreExpiryTime;
  @override
  final SseType? sseType;

  factory _$Snapshot([void Function(SnapshotBuilder)? updates]) =>
      (new SnapshotBuilder()..update(updates))._build();

  _$Snapshot._(
      {this.dataEncryptionKeyId,
      this.description,
      required this.encrypted,
      this.kmsKeyId,
      this.ownerId,
      this.progress,
      this.snapshotId,
      this.startTime,
      this.state,
      this.stateMessage,
      this.volumeId,
      required this.volumeSize,
      this.ownerAlias,
      this.outpostArn,
      this.tags,
      this.storageTier,
      this.restoreExpiryTime,
      this.sseType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(encrypted, r'Snapshot', 'encrypted');
    BuiltValueNullFieldError.checkNotNull(
        volumeSize, r'Snapshot', 'volumeSize');
  }

  @override
  Snapshot rebuild(void Function(SnapshotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SnapshotBuilder toBuilder() => new SnapshotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Snapshot &&
        dataEncryptionKeyId == other.dataEncryptionKeyId &&
        description == other.description &&
        encrypted == other.encrypted &&
        kmsKeyId == other.kmsKeyId &&
        ownerId == other.ownerId &&
        progress == other.progress &&
        snapshotId == other.snapshotId &&
        startTime == other.startTime &&
        state == other.state &&
        stateMessage == other.stateMessage &&
        volumeId == other.volumeId &&
        volumeSize == other.volumeSize &&
        ownerAlias == other.ownerAlias &&
        outpostArn == other.outpostArn &&
        tags == other.tags &&
        storageTier == other.storageTier &&
        restoreExpiryTime == other.restoreExpiryTime &&
        sseType == other.sseType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dataEncryptionKeyId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, encrypted.hashCode);
    _$hash = $jc(_$hash, kmsKeyId.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, stateMessage.hashCode);
    _$hash = $jc(_$hash, volumeId.hashCode);
    _$hash = $jc(_$hash, volumeSize.hashCode);
    _$hash = $jc(_$hash, ownerAlias.hashCode);
    _$hash = $jc(_$hash, outpostArn.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, storageTier.hashCode);
    _$hash = $jc(_$hash, restoreExpiryTime.hashCode);
    _$hash = $jc(_$hash, sseType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SnapshotBuilder implements Builder<Snapshot, SnapshotBuilder> {
  _$Snapshot? _$v;

  String? _dataEncryptionKeyId;
  String? get dataEncryptionKeyId => _$this._dataEncryptionKeyId;
  set dataEncryptionKeyId(String? dataEncryptionKeyId) =>
      _$this._dataEncryptionKeyId = dataEncryptionKeyId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _encrypted;
  bool? get encrypted => _$this._encrypted;
  set encrypted(bool? encrypted) => _$this._encrypted = encrypted;

  String? _kmsKeyId;
  String? get kmsKeyId => _$this._kmsKeyId;
  set kmsKeyId(String? kmsKeyId) => _$this._kmsKeyId = kmsKeyId;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _progress;
  String? get progress => _$this._progress;
  set progress(String? progress) => _$this._progress = progress;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  SnapshotState? _state;
  SnapshotState? get state => _$this._state;
  set state(SnapshotState? state) => _$this._state = state;

  String? _stateMessage;
  String? get stateMessage => _$this._stateMessage;
  set stateMessage(String? stateMessage) => _$this._stateMessage = stateMessage;

  String? _volumeId;
  String? get volumeId => _$this._volumeId;
  set volumeId(String? volumeId) => _$this._volumeId = volumeId;

  int? _volumeSize;
  int? get volumeSize => _$this._volumeSize;
  set volumeSize(int? volumeSize) => _$this._volumeSize = volumeSize;

  String? _ownerAlias;
  String? get ownerAlias => _$this._ownerAlias;
  set ownerAlias(String? ownerAlias) => _$this._ownerAlias = ownerAlias;

  String? _outpostArn;
  String? get outpostArn => _$this._outpostArn;
  set outpostArn(String? outpostArn) => _$this._outpostArn = outpostArn;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  StorageTier? _storageTier;
  StorageTier? get storageTier => _$this._storageTier;
  set storageTier(StorageTier? storageTier) =>
      _$this._storageTier = storageTier;

  DateTime? _restoreExpiryTime;
  DateTime? get restoreExpiryTime => _$this._restoreExpiryTime;
  set restoreExpiryTime(DateTime? restoreExpiryTime) =>
      _$this._restoreExpiryTime = restoreExpiryTime;

  SseType? _sseType;
  SseType? get sseType => _$this._sseType;
  set sseType(SseType? sseType) => _$this._sseType = sseType;

  SnapshotBuilder() {
    Snapshot._init(this);
  }

  SnapshotBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dataEncryptionKeyId = $v.dataEncryptionKeyId;
      _description = $v.description;
      _encrypted = $v.encrypted;
      _kmsKeyId = $v.kmsKeyId;
      _ownerId = $v.ownerId;
      _progress = $v.progress;
      _snapshotId = $v.snapshotId;
      _startTime = $v.startTime;
      _state = $v.state;
      _stateMessage = $v.stateMessage;
      _volumeId = $v.volumeId;
      _volumeSize = $v.volumeSize;
      _ownerAlias = $v.ownerAlias;
      _outpostArn = $v.outpostArn;
      _tags = $v.tags?.toBuilder();
      _storageTier = $v.storageTier;
      _restoreExpiryTime = $v.restoreExpiryTime;
      _sseType = $v.sseType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Snapshot other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Snapshot;
  }

  @override
  void update(void Function(SnapshotBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Snapshot build() => _build();

  _$Snapshot _build() {
    _$Snapshot _$result;
    try {
      _$result = _$v ??
          new _$Snapshot._(
              dataEncryptionKeyId: dataEncryptionKeyId,
              description: description,
              encrypted: BuiltValueNullFieldError.checkNotNull(
                  encrypted, r'Snapshot', 'encrypted'),
              kmsKeyId: kmsKeyId,
              ownerId: ownerId,
              progress: progress,
              snapshotId: snapshotId,
              startTime: startTime,
              state: state,
              stateMessage: stateMessage,
              volumeId: volumeId,
              volumeSize: BuiltValueNullFieldError.checkNotNull(
                  volumeSize, r'Snapshot', 'volumeSize'),
              ownerAlias: ownerAlias,
              outpostArn: outpostArn,
              tags: _tags?.build(),
              storageTier: storageTier,
              restoreExpiryTime: restoreExpiryTime,
              sseType: sseType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Snapshot', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
