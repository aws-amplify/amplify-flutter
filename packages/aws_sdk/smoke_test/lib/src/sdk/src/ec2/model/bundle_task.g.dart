// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bundle_task.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BundleTask extends BundleTask {
  @override
  final String? bundleId;
  @override
  final BundleTaskError? bundleTaskError;
  @override
  final String? instanceId;
  @override
  final String? progress;
  @override
  final DateTime? startTime;
  @override
  final BundleTaskState? state;
  @override
  final Storage? storage;
  @override
  final DateTime? updateTime;

  factory _$BundleTask([void Function(BundleTaskBuilder)? updates]) =>
      (new BundleTaskBuilder()..update(updates))._build();

  _$BundleTask._(
      {this.bundleId,
      this.bundleTaskError,
      this.instanceId,
      this.progress,
      this.startTime,
      this.state,
      this.storage,
      this.updateTime})
      : super._();

  @override
  BundleTask rebuild(void Function(BundleTaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BundleTaskBuilder toBuilder() => new BundleTaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BundleTask &&
        bundleId == other.bundleId &&
        bundleTaskError == other.bundleTaskError &&
        instanceId == other.instanceId &&
        progress == other.progress &&
        startTime == other.startTime &&
        state == other.state &&
        storage == other.storage &&
        updateTime == other.updateTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bundleId.hashCode);
    _$hash = $jc(_$hash, bundleTaskError.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, storage.hashCode);
    _$hash = $jc(_$hash, updateTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BundleTaskBuilder implements Builder<BundleTask, BundleTaskBuilder> {
  _$BundleTask? _$v;

  String? _bundleId;
  String? get bundleId => _$this._bundleId;
  set bundleId(String? bundleId) => _$this._bundleId = bundleId;

  BundleTaskErrorBuilder? _bundleTaskError;
  BundleTaskErrorBuilder get bundleTaskError =>
      _$this._bundleTaskError ??= new BundleTaskErrorBuilder();
  set bundleTaskError(BundleTaskErrorBuilder? bundleTaskError) =>
      _$this._bundleTaskError = bundleTaskError;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _progress;
  String? get progress => _$this._progress;
  set progress(String? progress) => _$this._progress = progress;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  BundleTaskState? _state;
  BundleTaskState? get state => _$this._state;
  set state(BundleTaskState? state) => _$this._state = state;

  StorageBuilder? _storage;
  StorageBuilder get storage => _$this._storage ??= new StorageBuilder();
  set storage(StorageBuilder? storage) => _$this._storage = storage;

  DateTime? _updateTime;
  DateTime? get updateTime => _$this._updateTime;
  set updateTime(DateTime? updateTime) => _$this._updateTime = updateTime;

  BundleTaskBuilder();

  BundleTaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bundleId = $v.bundleId;
      _bundleTaskError = $v.bundleTaskError?.toBuilder();
      _instanceId = $v.instanceId;
      _progress = $v.progress;
      _startTime = $v.startTime;
      _state = $v.state;
      _storage = $v.storage?.toBuilder();
      _updateTime = $v.updateTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BundleTask other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BundleTask;
  }

  @override
  void update(void Function(BundleTaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BundleTask build() => _build();

  _$BundleTask _build() {
    _$BundleTask _$result;
    try {
      _$result = _$v ??
          new _$BundleTask._(
              bundleId: bundleId,
              bundleTaskError: _bundleTaskError?.build(),
              instanceId: instanceId,
              progress: progress,
              startTime: startTime,
              state: state,
              storage: _storage?.build(),
              updateTime: updateTime);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bundleTaskError';
        _bundleTaskError?.build();

        _$failedField = 'storage';
        _storage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BundleTask', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
