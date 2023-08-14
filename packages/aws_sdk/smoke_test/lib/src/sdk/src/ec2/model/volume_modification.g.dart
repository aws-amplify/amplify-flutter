// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volume_modification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VolumeModification extends VolumeModification {
  @override
  final String? volumeId;
  @override
  final VolumeModificationState? modificationState;
  @override
  final String? statusMessage;
  @override
  final int targetSize;
  @override
  final int targetIops;
  @override
  final VolumeType? targetVolumeType;
  @override
  final int targetThroughput;
  @override
  final bool targetMultiAttachEnabled;
  @override
  final int originalSize;
  @override
  final int originalIops;
  @override
  final VolumeType? originalVolumeType;
  @override
  final int originalThroughput;
  @override
  final bool originalMultiAttachEnabled;
  @override
  final _i2.Int64 progress;
  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;

  factory _$VolumeModification(
          [void Function(VolumeModificationBuilder)? updates]) =>
      (new VolumeModificationBuilder()..update(updates))._build();

  _$VolumeModification._(
      {this.volumeId,
      this.modificationState,
      this.statusMessage,
      required this.targetSize,
      required this.targetIops,
      this.targetVolumeType,
      required this.targetThroughput,
      required this.targetMultiAttachEnabled,
      required this.originalSize,
      required this.originalIops,
      this.originalVolumeType,
      required this.originalThroughput,
      required this.originalMultiAttachEnabled,
      required this.progress,
      this.startTime,
      this.endTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        targetSize, r'VolumeModification', 'targetSize');
    BuiltValueNullFieldError.checkNotNull(
        targetIops, r'VolumeModification', 'targetIops');
    BuiltValueNullFieldError.checkNotNull(
        targetThroughput, r'VolumeModification', 'targetThroughput');
    BuiltValueNullFieldError.checkNotNull(targetMultiAttachEnabled,
        r'VolumeModification', 'targetMultiAttachEnabled');
    BuiltValueNullFieldError.checkNotNull(
        originalSize, r'VolumeModification', 'originalSize');
    BuiltValueNullFieldError.checkNotNull(
        originalIops, r'VolumeModification', 'originalIops');
    BuiltValueNullFieldError.checkNotNull(
        originalThroughput, r'VolumeModification', 'originalThroughput');
    BuiltValueNullFieldError.checkNotNull(originalMultiAttachEnabled,
        r'VolumeModification', 'originalMultiAttachEnabled');
    BuiltValueNullFieldError.checkNotNull(
        progress, r'VolumeModification', 'progress');
  }

  @override
  VolumeModification rebuild(
          void Function(VolumeModificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VolumeModificationBuilder toBuilder() =>
      new VolumeModificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VolumeModification &&
        volumeId == other.volumeId &&
        modificationState == other.modificationState &&
        statusMessage == other.statusMessage &&
        targetSize == other.targetSize &&
        targetIops == other.targetIops &&
        targetVolumeType == other.targetVolumeType &&
        targetThroughput == other.targetThroughput &&
        targetMultiAttachEnabled == other.targetMultiAttachEnabled &&
        originalSize == other.originalSize &&
        originalIops == other.originalIops &&
        originalVolumeType == other.originalVolumeType &&
        originalThroughput == other.originalThroughput &&
        originalMultiAttachEnabled == other.originalMultiAttachEnabled &&
        progress == other.progress &&
        startTime == other.startTime &&
        endTime == other.endTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, volumeId.hashCode);
    _$hash = $jc(_$hash, modificationState.hashCode);
    _$hash = $jc(_$hash, statusMessage.hashCode);
    _$hash = $jc(_$hash, targetSize.hashCode);
    _$hash = $jc(_$hash, targetIops.hashCode);
    _$hash = $jc(_$hash, targetVolumeType.hashCode);
    _$hash = $jc(_$hash, targetThroughput.hashCode);
    _$hash = $jc(_$hash, targetMultiAttachEnabled.hashCode);
    _$hash = $jc(_$hash, originalSize.hashCode);
    _$hash = $jc(_$hash, originalIops.hashCode);
    _$hash = $jc(_$hash, originalVolumeType.hashCode);
    _$hash = $jc(_$hash, originalThroughput.hashCode);
    _$hash = $jc(_$hash, originalMultiAttachEnabled.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VolumeModificationBuilder
    implements Builder<VolumeModification, VolumeModificationBuilder> {
  _$VolumeModification? _$v;

  String? _volumeId;
  String? get volumeId => _$this._volumeId;
  set volumeId(String? volumeId) => _$this._volumeId = volumeId;

  VolumeModificationState? _modificationState;
  VolumeModificationState? get modificationState => _$this._modificationState;
  set modificationState(VolumeModificationState? modificationState) =>
      _$this._modificationState = modificationState;

  String? _statusMessage;
  String? get statusMessage => _$this._statusMessage;
  set statusMessage(String? statusMessage) =>
      _$this._statusMessage = statusMessage;

  int? _targetSize;
  int? get targetSize => _$this._targetSize;
  set targetSize(int? targetSize) => _$this._targetSize = targetSize;

  int? _targetIops;
  int? get targetIops => _$this._targetIops;
  set targetIops(int? targetIops) => _$this._targetIops = targetIops;

  VolumeType? _targetVolumeType;
  VolumeType? get targetVolumeType => _$this._targetVolumeType;
  set targetVolumeType(VolumeType? targetVolumeType) =>
      _$this._targetVolumeType = targetVolumeType;

  int? _targetThroughput;
  int? get targetThroughput => _$this._targetThroughput;
  set targetThroughput(int? targetThroughput) =>
      _$this._targetThroughput = targetThroughput;

  bool? _targetMultiAttachEnabled;
  bool? get targetMultiAttachEnabled => _$this._targetMultiAttachEnabled;
  set targetMultiAttachEnabled(bool? targetMultiAttachEnabled) =>
      _$this._targetMultiAttachEnabled = targetMultiAttachEnabled;

  int? _originalSize;
  int? get originalSize => _$this._originalSize;
  set originalSize(int? originalSize) => _$this._originalSize = originalSize;

  int? _originalIops;
  int? get originalIops => _$this._originalIops;
  set originalIops(int? originalIops) => _$this._originalIops = originalIops;

  VolumeType? _originalVolumeType;
  VolumeType? get originalVolumeType => _$this._originalVolumeType;
  set originalVolumeType(VolumeType? originalVolumeType) =>
      _$this._originalVolumeType = originalVolumeType;

  int? _originalThroughput;
  int? get originalThroughput => _$this._originalThroughput;
  set originalThroughput(int? originalThroughput) =>
      _$this._originalThroughput = originalThroughput;

  bool? _originalMultiAttachEnabled;
  bool? get originalMultiAttachEnabled => _$this._originalMultiAttachEnabled;
  set originalMultiAttachEnabled(bool? originalMultiAttachEnabled) =>
      _$this._originalMultiAttachEnabled = originalMultiAttachEnabled;

  _i2.Int64? _progress;
  _i2.Int64? get progress => _$this._progress;
  set progress(_i2.Int64? progress) => _$this._progress = progress;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  VolumeModificationBuilder() {
    VolumeModification._init(this);
  }

  VolumeModificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _volumeId = $v.volumeId;
      _modificationState = $v.modificationState;
      _statusMessage = $v.statusMessage;
      _targetSize = $v.targetSize;
      _targetIops = $v.targetIops;
      _targetVolumeType = $v.targetVolumeType;
      _targetThroughput = $v.targetThroughput;
      _targetMultiAttachEnabled = $v.targetMultiAttachEnabled;
      _originalSize = $v.originalSize;
      _originalIops = $v.originalIops;
      _originalVolumeType = $v.originalVolumeType;
      _originalThroughput = $v.originalThroughput;
      _originalMultiAttachEnabled = $v.originalMultiAttachEnabled;
      _progress = $v.progress;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VolumeModification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VolumeModification;
  }

  @override
  void update(void Function(VolumeModificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VolumeModification build() => _build();

  _$VolumeModification _build() {
    final _$result = _$v ??
        new _$VolumeModification._(
            volumeId: volumeId,
            modificationState: modificationState,
            statusMessage: statusMessage,
            targetSize: BuiltValueNullFieldError.checkNotNull(
                targetSize, r'VolumeModification', 'targetSize'),
            targetIops: BuiltValueNullFieldError.checkNotNull(
                targetIops, r'VolumeModification', 'targetIops'),
            targetVolumeType: targetVolumeType,
            targetThroughput: BuiltValueNullFieldError.checkNotNull(
                targetThroughput, r'VolumeModification', 'targetThroughput'),
            targetMultiAttachEnabled: BuiltValueNullFieldError.checkNotNull(
                targetMultiAttachEnabled, r'VolumeModification', 'targetMultiAttachEnabled'),
            originalSize: BuiltValueNullFieldError.checkNotNull(
                originalSize, r'VolumeModification', 'originalSize'),
            originalIops: BuiltValueNullFieldError.checkNotNull(
                originalIops, r'VolumeModification', 'originalIops'),
            originalVolumeType: originalVolumeType,
            originalThroughput: BuiltValueNullFieldError.checkNotNull(
                originalThroughput, r'VolumeModification', 'originalThroughput'),
            originalMultiAttachEnabled: BuiltValueNullFieldError.checkNotNull(
                originalMultiAttachEnabled, r'VolumeModification', 'originalMultiAttachEnabled'),
            progress: BuiltValueNullFieldError.checkNotNull(progress, r'VolumeModification', 'progress'),
            startTime: startTime,
            endTime: endTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
