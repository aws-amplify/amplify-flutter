// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replace_root_volume_task.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplaceRootVolumeTask extends ReplaceRootVolumeTask {
  @override
  final String? replaceRootVolumeTaskId;
  @override
  final String? instanceId;
  @override
  final ReplaceRootVolumeTaskState? taskState;
  @override
  final String? startTime;
  @override
  final String? completeTime;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final String? imageId;
  @override
  final String? snapshotId;
  @override
  final bool deleteReplacedRootVolume;

  factory _$ReplaceRootVolumeTask(
          [void Function(ReplaceRootVolumeTaskBuilder)? updates]) =>
      (new ReplaceRootVolumeTaskBuilder()..update(updates))._build();

  _$ReplaceRootVolumeTask._(
      {this.replaceRootVolumeTaskId,
      this.instanceId,
      this.taskState,
      this.startTime,
      this.completeTime,
      this.tags,
      this.imageId,
      this.snapshotId,
      required this.deleteReplacedRootVolume})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(deleteReplacedRootVolume,
        r'ReplaceRootVolumeTask', 'deleteReplacedRootVolume');
  }

  @override
  ReplaceRootVolumeTask rebuild(
          void Function(ReplaceRootVolumeTaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplaceRootVolumeTaskBuilder toBuilder() =>
      new ReplaceRootVolumeTaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplaceRootVolumeTask &&
        replaceRootVolumeTaskId == other.replaceRootVolumeTaskId &&
        instanceId == other.instanceId &&
        taskState == other.taskState &&
        startTime == other.startTime &&
        completeTime == other.completeTime &&
        tags == other.tags &&
        imageId == other.imageId &&
        snapshotId == other.snapshotId &&
        deleteReplacedRootVolume == other.deleteReplacedRootVolume;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, replaceRootVolumeTaskId.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, taskState.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, completeTime.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, deleteReplacedRootVolume.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplaceRootVolumeTaskBuilder
    implements Builder<ReplaceRootVolumeTask, ReplaceRootVolumeTaskBuilder> {
  _$ReplaceRootVolumeTask? _$v;

  String? _replaceRootVolumeTaskId;
  String? get replaceRootVolumeTaskId => _$this._replaceRootVolumeTaskId;
  set replaceRootVolumeTaskId(String? replaceRootVolumeTaskId) =>
      _$this._replaceRootVolumeTaskId = replaceRootVolumeTaskId;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  ReplaceRootVolumeTaskState? _taskState;
  ReplaceRootVolumeTaskState? get taskState => _$this._taskState;
  set taskState(ReplaceRootVolumeTaskState? taskState) =>
      _$this._taskState = taskState;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _completeTime;
  String? get completeTime => _$this._completeTime;
  set completeTime(String? completeTime) => _$this._completeTime = completeTime;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  bool? _deleteReplacedRootVolume;
  bool? get deleteReplacedRootVolume => _$this._deleteReplacedRootVolume;
  set deleteReplacedRootVolume(bool? deleteReplacedRootVolume) =>
      _$this._deleteReplacedRootVolume = deleteReplacedRootVolume;

  ReplaceRootVolumeTaskBuilder() {
    ReplaceRootVolumeTask._init(this);
  }

  ReplaceRootVolumeTaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _replaceRootVolumeTaskId = $v.replaceRootVolumeTaskId;
      _instanceId = $v.instanceId;
      _taskState = $v.taskState;
      _startTime = $v.startTime;
      _completeTime = $v.completeTime;
      _tags = $v.tags?.toBuilder();
      _imageId = $v.imageId;
      _snapshotId = $v.snapshotId;
      _deleteReplacedRootVolume = $v.deleteReplacedRootVolume;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplaceRootVolumeTask other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplaceRootVolumeTask;
  }

  @override
  void update(void Function(ReplaceRootVolumeTaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplaceRootVolumeTask build() => _build();

  _$ReplaceRootVolumeTask _build() {
    _$ReplaceRootVolumeTask _$result;
    try {
      _$result = _$v ??
          new _$ReplaceRootVolumeTask._(
              replaceRootVolumeTaskId: replaceRootVolumeTaskId,
              instanceId: instanceId,
              taskState: taskState,
              startTime: startTime,
              completeTime: completeTime,
              tags: _tags?.build(),
              imageId: imageId,
              snapshotId: snapshotId,
              deleteReplacedRootVolume: BuiltValueNullFieldError.checkNotNull(
                  deleteReplacedRootVolume,
                  r'ReplaceRootVolumeTask',
                  'deleteReplacedRootVolume'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReplaceRootVolumeTask', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
