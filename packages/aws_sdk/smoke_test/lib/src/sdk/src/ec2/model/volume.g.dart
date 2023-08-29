// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volume.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Volume extends Volume {
  @override
  final _i2.BuiltList<VolumeAttachment>? attachments;
  @override
  final String? availabilityZone;
  @override
  final DateTime? createTime;
  @override
  final bool encrypted;
  @override
  final String? kmsKeyId;
  @override
  final String? outpostArn;
  @override
  final int size;
  @override
  final String? snapshotId;
  @override
  final VolumeState? state;
  @override
  final String? volumeId;
  @override
  final int iops;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final VolumeType? volumeType;
  @override
  final bool fastRestored;
  @override
  final bool multiAttachEnabled;
  @override
  final int throughput;
  @override
  final SseType? sseType;

  factory _$Volume([void Function(VolumeBuilder)? updates]) =>
      (new VolumeBuilder()..update(updates))._build();

  _$Volume._(
      {this.attachments,
      this.availabilityZone,
      this.createTime,
      required this.encrypted,
      this.kmsKeyId,
      this.outpostArn,
      required this.size,
      this.snapshotId,
      this.state,
      this.volumeId,
      required this.iops,
      this.tags,
      this.volumeType,
      required this.fastRestored,
      required this.multiAttachEnabled,
      required this.throughput,
      this.sseType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(encrypted, r'Volume', 'encrypted');
    BuiltValueNullFieldError.checkNotNull(size, r'Volume', 'size');
    BuiltValueNullFieldError.checkNotNull(iops, r'Volume', 'iops');
    BuiltValueNullFieldError.checkNotNull(
        fastRestored, r'Volume', 'fastRestored');
    BuiltValueNullFieldError.checkNotNull(
        multiAttachEnabled, r'Volume', 'multiAttachEnabled');
    BuiltValueNullFieldError.checkNotNull(throughput, r'Volume', 'throughput');
  }

  @override
  Volume rebuild(void Function(VolumeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VolumeBuilder toBuilder() => new VolumeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Volume &&
        attachments == other.attachments &&
        availabilityZone == other.availabilityZone &&
        createTime == other.createTime &&
        encrypted == other.encrypted &&
        kmsKeyId == other.kmsKeyId &&
        outpostArn == other.outpostArn &&
        size == other.size &&
        snapshotId == other.snapshotId &&
        state == other.state &&
        volumeId == other.volumeId &&
        iops == other.iops &&
        tags == other.tags &&
        volumeType == other.volumeType &&
        fastRestored == other.fastRestored &&
        multiAttachEnabled == other.multiAttachEnabled &&
        throughput == other.throughput &&
        sseType == other.sseType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attachments.hashCode);
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, createTime.hashCode);
    _$hash = $jc(_$hash, encrypted.hashCode);
    _$hash = $jc(_$hash, kmsKeyId.hashCode);
    _$hash = $jc(_$hash, outpostArn.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, volumeId.hashCode);
    _$hash = $jc(_$hash, iops.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, volumeType.hashCode);
    _$hash = $jc(_$hash, fastRestored.hashCode);
    _$hash = $jc(_$hash, multiAttachEnabled.hashCode);
    _$hash = $jc(_$hash, throughput.hashCode);
    _$hash = $jc(_$hash, sseType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VolumeBuilder implements Builder<Volume, VolumeBuilder> {
  _$Volume? _$v;

  _i2.ListBuilder<VolumeAttachment>? _attachments;
  _i2.ListBuilder<VolumeAttachment> get attachments =>
      _$this._attachments ??= new _i2.ListBuilder<VolumeAttachment>();
  set attachments(_i2.ListBuilder<VolumeAttachment>? attachments) =>
      _$this._attachments = attachments;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  DateTime? _createTime;
  DateTime? get createTime => _$this._createTime;
  set createTime(DateTime? createTime) => _$this._createTime = createTime;

  bool? _encrypted;
  bool? get encrypted => _$this._encrypted;
  set encrypted(bool? encrypted) => _$this._encrypted = encrypted;

  String? _kmsKeyId;
  String? get kmsKeyId => _$this._kmsKeyId;
  set kmsKeyId(String? kmsKeyId) => _$this._kmsKeyId = kmsKeyId;

  String? _outpostArn;
  String? get outpostArn => _$this._outpostArn;
  set outpostArn(String? outpostArn) => _$this._outpostArn = outpostArn;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  VolumeState? _state;
  VolumeState? get state => _$this._state;
  set state(VolumeState? state) => _$this._state = state;

  String? _volumeId;
  String? get volumeId => _$this._volumeId;
  set volumeId(String? volumeId) => _$this._volumeId = volumeId;

  int? _iops;
  int? get iops => _$this._iops;
  set iops(int? iops) => _$this._iops = iops;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  VolumeType? _volumeType;
  VolumeType? get volumeType => _$this._volumeType;
  set volumeType(VolumeType? volumeType) => _$this._volumeType = volumeType;

  bool? _fastRestored;
  bool? get fastRestored => _$this._fastRestored;
  set fastRestored(bool? fastRestored) => _$this._fastRestored = fastRestored;

  bool? _multiAttachEnabled;
  bool? get multiAttachEnabled => _$this._multiAttachEnabled;
  set multiAttachEnabled(bool? multiAttachEnabled) =>
      _$this._multiAttachEnabled = multiAttachEnabled;

  int? _throughput;
  int? get throughput => _$this._throughput;
  set throughput(int? throughput) => _$this._throughput = throughput;

  SseType? _sseType;
  SseType? get sseType => _$this._sseType;
  set sseType(SseType? sseType) => _$this._sseType = sseType;

  VolumeBuilder() {
    Volume._init(this);
  }

  VolumeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attachments = $v.attachments?.toBuilder();
      _availabilityZone = $v.availabilityZone;
      _createTime = $v.createTime;
      _encrypted = $v.encrypted;
      _kmsKeyId = $v.kmsKeyId;
      _outpostArn = $v.outpostArn;
      _size = $v.size;
      _snapshotId = $v.snapshotId;
      _state = $v.state;
      _volumeId = $v.volumeId;
      _iops = $v.iops;
      _tags = $v.tags?.toBuilder();
      _volumeType = $v.volumeType;
      _fastRestored = $v.fastRestored;
      _multiAttachEnabled = $v.multiAttachEnabled;
      _throughput = $v.throughput;
      _sseType = $v.sseType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Volume other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Volume;
  }

  @override
  void update(void Function(VolumeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Volume build() => _build();

  _$Volume _build() {
    _$Volume _$result;
    try {
      _$result = _$v ??
          new _$Volume._(
              attachments: _attachments?.build(),
              availabilityZone: availabilityZone,
              createTime: createTime,
              encrypted: BuiltValueNullFieldError.checkNotNull(
                  encrypted, r'Volume', 'encrypted'),
              kmsKeyId: kmsKeyId,
              outpostArn: outpostArn,
              size: BuiltValueNullFieldError.checkNotNull(
                  size, r'Volume', 'size'),
              snapshotId: snapshotId,
              state: state,
              volumeId: volumeId,
              iops: BuiltValueNullFieldError.checkNotNull(
                  iops, r'Volume', 'iops'),
              tags: _tags?.build(),
              volumeType: volumeType,
              fastRestored: BuiltValueNullFieldError.checkNotNull(
                  fastRestored, r'Volume', 'fastRestored'),
              multiAttachEnabled: BuiltValueNullFieldError.checkNotNull(
                  multiAttachEnabled, r'Volume', 'multiAttachEnabled'),
              throughput: BuiltValueNullFieldError.checkNotNull(
                  throughput, r'Volume', 'throughput'),
              sseType: sseType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attachments';
        _attachments?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Volume', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
