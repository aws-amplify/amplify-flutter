// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_image_task_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StoreImageTaskResult extends StoreImageTaskResult {
  @override
  final String? amiId;
  @override
  final DateTime? taskStartTime;
  @override
  final String? bucket;
  @override
  final String? s3ObjectKey;
  @override
  final int progressPercentage;
  @override
  final String? storeTaskState;
  @override
  final String? storeTaskFailureReason;

  factory _$StoreImageTaskResult(
          [void Function(StoreImageTaskResultBuilder)? updates]) =>
      (new StoreImageTaskResultBuilder()..update(updates))._build();

  _$StoreImageTaskResult._(
      {this.amiId,
      this.taskStartTime,
      this.bucket,
      this.s3ObjectKey,
      required this.progressPercentage,
      this.storeTaskState,
      this.storeTaskFailureReason})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        progressPercentage, r'StoreImageTaskResult', 'progressPercentage');
  }

  @override
  StoreImageTaskResult rebuild(
          void Function(StoreImageTaskResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoreImageTaskResultBuilder toBuilder() =>
      new StoreImageTaskResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoreImageTaskResult &&
        amiId == other.amiId &&
        taskStartTime == other.taskStartTime &&
        bucket == other.bucket &&
        s3ObjectKey == other.s3ObjectKey &&
        progressPercentage == other.progressPercentage &&
        storeTaskState == other.storeTaskState &&
        storeTaskFailureReason == other.storeTaskFailureReason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amiId.hashCode);
    _$hash = $jc(_$hash, taskStartTime.hashCode);
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, s3ObjectKey.hashCode);
    _$hash = $jc(_$hash, progressPercentage.hashCode);
    _$hash = $jc(_$hash, storeTaskState.hashCode);
    _$hash = $jc(_$hash, storeTaskFailureReason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StoreImageTaskResultBuilder
    implements Builder<StoreImageTaskResult, StoreImageTaskResultBuilder> {
  _$StoreImageTaskResult? _$v;

  String? _amiId;
  String? get amiId => _$this._amiId;
  set amiId(String? amiId) => _$this._amiId = amiId;

  DateTime? _taskStartTime;
  DateTime? get taskStartTime => _$this._taskStartTime;
  set taskStartTime(DateTime? taskStartTime) =>
      _$this._taskStartTime = taskStartTime;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _s3ObjectKey;
  String? get s3ObjectKey => _$this._s3ObjectKey;
  set s3ObjectKey(String? s3ObjectKey) => _$this._s3ObjectKey = s3ObjectKey;

  int? _progressPercentage;
  int? get progressPercentage => _$this._progressPercentage;
  set progressPercentage(int? progressPercentage) =>
      _$this._progressPercentage = progressPercentage;

  String? _storeTaskState;
  String? get storeTaskState => _$this._storeTaskState;
  set storeTaskState(String? storeTaskState) =>
      _$this._storeTaskState = storeTaskState;

  String? _storeTaskFailureReason;
  String? get storeTaskFailureReason => _$this._storeTaskFailureReason;
  set storeTaskFailureReason(String? storeTaskFailureReason) =>
      _$this._storeTaskFailureReason = storeTaskFailureReason;

  StoreImageTaskResultBuilder() {
    StoreImageTaskResult._init(this);
  }

  StoreImageTaskResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amiId = $v.amiId;
      _taskStartTime = $v.taskStartTime;
      _bucket = $v.bucket;
      _s3ObjectKey = $v.s3ObjectKey;
      _progressPercentage = $v.progressPercentage;
      _storeTaskState = $v.storeTaskState;
      _storeTaskFailureReason = $v.storeTaskFailureReason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StoreImageTaskResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StoreImageTaskResult;
  }

  @override
  void update(void Function(StoreImageTaskResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StoreImageTaskResult build() => _build();

  _$StoreImageTaskResult _build() {
    final _$result = _$v ??
        new _$StoreImageTaskResult._(
            amiId: amiId,
            taskStartTime: taskStartTime,
            bucket: bucket,
            s3ObjectKey: s3ObjectKey,
            progressPercentage: BuiltValueNullFieldError.checkNotNull(
                progressPercentage,
                r'StoreImageTaskResult',
                'progressPercentage'),
            storeTaskState: storeTaskState,
            storeTaskFailureReason: storeTaskFailureReason);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
